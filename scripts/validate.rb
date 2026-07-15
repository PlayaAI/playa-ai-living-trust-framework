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
  FRAMEWORK.md
  PROGRAM.md
  CHARTER.md
  BRAND_REVIEW.md
  DISCLAIMER.md
  GOVERNANCE.md
  LICENSE.md
  SECURITY.md
  co-design/AGENDA.md
  protocols/eelp.md
  resources/README.md
  website/IMPLEMENTATION.md
  standard/standard.md
  standard/controls.yml
]

required_files.each do |relative_path|
  fail_validation("missing #{relative_path}") unless ROOT.join(relative_path).file?
end

catalog = YAML.safe_load(ROOT.join("standard/controls.yml").read)
framework = catalog.fetch("framework")
profile = catalog.fetch("profile")
controls = catalog.fetch("controls")
ids = controls.map { |control| control.fetch("id") }

expected_framework = {
  "name" => "The Playa AI Living Trust Framework",
  "subtitle" => "A Community AI Stewardship Toolkit for Artists, Builders and Cultural Organizations",
  "publisher" => "Mystic Arts Foundation",
  "initiative" => "Playa AI",
  "program" => "On Our Own Terms",
  "canonical_repository" => "https://github.com/PlayaAI/playa-ai-living-trust-framework",
  "conformance_claims_allowed" => false
}

expected_framework.each do |field, value|
  fail_validation("unexpected framework #{field}") unless framework[field] == value
end

fail_validation("unexpected profile ID") unless profile["id"] == "data-stewardship"
fail_validation("unexpected profile name") unless profile["name"] == "Data Stewardship Profile"

expected_control_ids = %w[
  GOV-01 GOV-02 EVD-01 INV-01 PUR-01 MIN-01 TRN-01 CON-01 RGT-01
  SHR-01 SEC-01 INC-01 RET-01 DEL-01 AI-01 AI-02 AI-03 AI-04 AI-05
  REL-01 CHD-01 VUL-01
]

fail_validation("control IDs are not unique") unless ids.uniq == ids
fail_validation("the 22 v0.2 control IDs changed") unless ids == expected_control_ids

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
fail_validation("unexpected citation title") unless citation["title"] == "The Playa AI Living Trust Framework"

canonical_files = %w[
  README.md CHARTER.md FRAMEWORK.md PROGRAM.md CITATION.cff LICENSE.md SECURITY.md
  standard/standard.md standard/controls.yml protocols/eelp.md resources/README.md
]

forbidden_terms = [
  "Playa AI Privacy Toolkit",
  "Playa AI Data Dignity Standard",
  "playa-ai-privacy-toolkit",
  "Living Trust Agreement",
  "Playa AI Foundation",
  "fiscally sponsored"
]

canonical_files.each do |relative_path|
  content = ROOT.join(relative_path).read
  forbidden_terms.each do |term|
    fail_validation("#{relative_path} contains historical term: #{term}") if content.downcase.include?(term.downcase)
  end
end

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

puts "Validated Framework metadata, the unchanged #{ids.length}-control Data Stewardship Profile, required project files, citation metadata, canonical naming, and local Markdown links."
