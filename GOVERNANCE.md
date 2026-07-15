# Governance

## Current status

The project is in an interim formation stage. The GitHub account `@PlayaAI` is the current maintainer and release steward. A representative Privacy Council has not yet been constituted, and the project will not imply otherwise.

This document governs repository decisions until a ratified multi-stakeholder governance charter replaces it.

## Objectives

Governance should make the project:

- Independent enough to challenge adopters and funders
- Representative of people affected by data and AI systems
- Technically and legally credible
- Transparent about decisions, evidence, funding, and conflicts
- Resistant to capture by any company, founder, profession, or jurisdiction

## Roles

### Maintainer

The maintainer triages contributions, enforces repository policies, manages releases, and documents decisions. Maintainer status is not a claim of legal, technical, or community authority beyond this repository.

### Contributors

Contributors propose, review, test, translate, research, or implement project artifacts. Contributions do not automatically confer decision rights or endorsement.

### Reviewers

Reviewers are contributors invited to assess defined subject areas. Reviews should identify expertise and material conflicts. Legal review must name the jurisdictions and assumptions covered.

### Future council

Before a stable `1.0` release, the project intends to constitute a council with meaningful participation from:

- People and communities affected by data-intensive systems
- Privacy and consumer-protection practitioners
- Security and AI engineers
- Civil-society and human-rights experts
- Adopters and independent assurance professionals

Council membership, selection, terms, removal, compensation, voting, quorum, recusals, and funding safeguards will be proposed through a public RFC. No single employer or funder should hold a voting majority.

## Decision process

### 1. Proposal

Changes begin as an issue or draft pull request that defines the problem, affected people, evidence, alternatives, implementation impact, and unresolved questions.

### 2. Classification

- **Editorial:** wording or formatting without changing meaning
- **Operational:** templates, evidence guidance, schemas, or implementation material
- **Normative:** requirements, control scope, conformance, governance, or licensing
- **Urgent:** correction of a material security, legal, or safety defect

### 3. Review

Normative changes receive at least 30 calendar days of public review unless an urgent risk requires a temporary correction. Operational changes normally receive 14 days. Editorial changes may be merged after ordinary review.

An urgent change must document the risk, why normal review was unsafe, and when ordinary review will resume.

### 4. Decision

During interim governance, the maintainer decides whether to merge after addressing material objections. The pull request must record the rationale, significant dissent, conflicts, and follow-up work.

Once a council is established, normative decisions will require its published approval process.

### 5. Release

Normative releases include a changelog, migration notes, stable control identifiers, review record, and effective date. Requirements are not silently strengthened within a patch release.

## Control stability

Control IDs are never reassigned to different requirements. Retired controls remain in version history with replacement references. Machine-readable files and prose must change together.

## Conflicts of interest

Decision-makers and named reviewers disclose financial, employment, client, litigation, advocacy, and close personal interests that a reasonable participant would consider relevant. Disclosure does not always require recusal; the decision record should explain the treatment.

## Funding and independence

Material grants, sponsorships, donated services, and organizational support should be publicly disclosed. Funding must not purchase control over findings, control language, certification outcomes, or criticism.

## Appeals and complaints

A participant may request reconsideration by identifying a procedural failure, material missing evidence, undisclosed conflict, or disproportionate impact. Repeating disagreement without new grounds does not require reopening a decision.

Sensitive conduct and security reports follow [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) and [SECURITY.md](SECURITY.md), not public governance issues.
