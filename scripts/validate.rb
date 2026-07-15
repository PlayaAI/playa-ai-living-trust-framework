# frozen_string_literal: true

# SPDX-License-Identifier: Apache-2.0

require "pathname"
require "yaml"

ROOT = Pathname.new(__dir__).parent

def fail_validation(message)
  warn "validation error: #{message}"
  exit 1
end

required_files = %w[
  README.md
  CHARTER.md
  DISCLAIMER.md
  GOVERNANCE.md
  LICENSE.md
  SECURITY.md
  standard/standard.md
  standard/controls.yml
]

required_files.each do |relative_path|
  fail_validation("missing #{relative_path}") unless ROOT.join(relative_path).file?
end

catalog = YAML.safe_load(ROOT.join("standard/controls.yml").read)
controls = catalog.fetch("controls")
ids = controls.map { |control| control.fetch("id") }

fail_validation("control IDs are not unique") unless ids.uniq == ids

ids.each do |id|
  fail_validation("invalid control ID #{id}") unless id.match?(/\A[A-Z]{2,4}-\d{2}\z/)
end

controls.each do |control|
  %w[id family title applies_when requirement evidence].each do |field|
    fail_validation("#{control.fetch('id', 'unknown')} is missing #{field}") unless control.key?(field)
  end
  fail_validation("#{control['id']} has no evidence types") if control.fetch("evidence").empty?
end

standard = ROOT.join("standard/standard.md").read
missing_ids = ids.reject { |id| standard.include?("`#{id}`") }
fail_validation("controls missing from standard.md: #{missing_ids.join(', ')}") unless missing_ids.empty?

citation = YAML.safe_load(ROOT.join("CITATION.cff").read)
fail_validation("CITATION.cff must use CFF 1.2.0") unless citation["cff-version"] == "1.2.0"

broken_links = []
ROOT.glob("**/*.md").each do |markdown_file|
  markdown_file.read.scan(/\[[^\]]+\]\(([^)]+)\)/).flatten.each do |target|
    next if target.start_with?("http://", "https://", "mailto:", "#")

    relative_target = target.split("#", 2).first
    next if relative_target.empty?

    resolved = markdown_file.dirname.join(relative_target).cleanpath
    broken_links << "#{markdown_file.relative_path_from(ROOT)} -> #{target}" unless resolved.exist?
  end
end

fail_validation("broken local links:\n  #{broken_links.join("\n  ")}") unless broken_links.empty?

puts "Validated #{ids.length} unique controls, required project files, citation metadata, and local Markdown links."
