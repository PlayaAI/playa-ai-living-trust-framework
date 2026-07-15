# Playa AI Data Dignity Standard

**Version:** 0.2.0-dev

**Status:** Working draft; not approved for conformance claims

**Normative catalog:** [controls.yml](controls.yml)

## 1. Purpose

This standard translates the project's charter into requirements that can be assigned, implemented, evidenced, tested, and improved. It is designed for organizations that process personal or relational data in digital products, particularly when AI systems are involved.

It is jurisdiction-neutral by design. It does not replace a legal analysis, required privacy notice, data-protection impact assessment, AI impact assessment, security program, or contract.

## 2. Normative language

The terms **MUST**, **MUST NOT**, **SHOULD**, **SHOULD NOT**, and **MAY** indicate requirement strength for an adopter of this standard. They do not state that the same action is legally required everywhere.

- **MUST / MUST NOT:** required when the control is applicable
- **SHOULD / SHOULD NOT:** expected unless an exception is documented and approved
- **MAY:** permitted or optional

## 3. Scope and applicability

An assessment must define:

- The legal entity, product, service, system, and environments included
- The people, communities, data categories, jurisdictions, and lifecycle stages included
- AI models, providers, datasets, integrations, and decision processes included
- The assessment date, standard version, assessor, evidence window, and exclusions

A control is applicable when its `applies_when` condition in the catalog is true. An adopter MUST NOT omit a control merely because implementation is difficult. Non-applicability and exceptions require written reasons and approval by the accountable owner.

## 4. Evidence states

Each applicable control receives one evidence state:

| State | Meaning |
|---|---|
| Not evaluated | No assessment completed |
| Documented | Policy or design exists, but operation is not demonstrated |
| Implemented | Current operational evidence supports the requirement |
| Verified | A reviewer independent of the control owner tested evidence and recorded results |
| Exception | A time-bound, approved deviation and remediation plan exists |

Self-assessment is not independent assurance. Until the project publishes conformance and assessor requirements, no evidence state authorizes a claim of “Playa AI certified,” “approved,” or equivalent endorsement.

## 5. Baseline controls

The machine-readable catalog is authoritative for control metadata. The table below provides the human-readable requirement set.

### Governance and evidence

| ID | Requirement | Minimum evidence |
|---|---|---|
| `GOV-01` | The adopter MUST identify an accountable owner for privacy and AI data governance with authority to stop or remediate nonconforming processing. | Role assignment, escalation path, decision record |
| `GOV-02` | Material new or changed processing MUST receive a documented privacy and human-impact assessment before deployment. | Completed assessment, approvals, mitigations |
| `EVD-01` | The adopter MUST retain current evidence sufficient to test each applicable control and MUST record material failures and remediation. | Evidence register, test results, exception log |

### Inventory, purpose, and minimization

| ID | Requirement | Minimum evidence |
|---|---|---|
| `INV-01` | The adopter MUST maintain a current inventory of personal and relational data flows, including sources, purposes, recipients, systems, locations, retention, and AI uses. | Data-flow map, processing inventory, owner attestations |
| `PUR-01` | Each processing purpose MUST have a documented legal and organizational justification. Material incompatible reuse MUST undergo new review, notice, and choice where required. | Purpose register, legal-basis analysis, change record |
| `MIN-01` | Collection, derivation, access, disclosure, and retention MUST be limited to what is necessary and proportionate for documented purposes. | Field-level justification, access review, minimization test |

### Transparency, consent, and rights

| ID | Requirement | Minimum evidence |
|---|---|---|
| `TRN-01` | People MUST receive accurate, accessible, layered information about material data practices before or when the relevant processing occurs. | Published notice, interface captures, accuracy review |
| `CON-01` | Where consent is used, it MUST be specific, informed, affirmative, recorded, and as easy to withdraw as to give. Refusal MUST NOT be penalized unless the processing is genuinely necessary for the requested service. | Consent records, interface tests, withdrawal test |
| `RGT-01` | The adopter MUST operate authenticated request workflows for rights that apply in the relevant jurisdiction and MUST explain denials, limits, and appeal options. | Procedure, request log, identity safeguards, response tests |

### Sharing, security, retention, and deletion

| ID | Requirement | Minimum evidence |
|---|---|---|
| `SHR-01` | Disclosures and processor access MUST be purpose-limited, contractually controlled, inventoried, and periodically reviewed. | Recipient register, contracts, diligence, access review |
| `SEC-01` | The adopter MUST maintain risk-proportionate administrative, technical, and physical safeguards across the data lifecycle. | Threat model, control tests, access logs, remediation |
| `INC-01` | The adopter MUST maintain and test a process for identifying, containing, investigating, documenting, and notifying material privacy or security incidents. | Response plan, exercise record, incident register |
| `RET-01` | Each data category MUST have an approved retention rule tied to purpose and legal requirements. Expiration MUST trigger deletion, irreversible de-identification, or a documented exception. | Retention schedule, automated job evidence, exception log |
| `DEL-01` | Deletion claims MUST distinguish active systems, replicas, backups, legal holds, logs, derived data, third-party copies, and de-identified data. Completion and limitations MUST be communicated accurately. | Deletion map, execution logs, backup procedure, user response |

### AI systems

| ID | Requirement | Minimum evidence |
|---|---|---|
| `AI-01` | The adopter MUST inventory AI models and systems, their providers, purposes, data inputs, outputs, retention, decision role, and affected people. | AI system register, architecture and data-flow records |
| `AI-02` | Personal or relational data used for training, fine-tuning, evaluation, retrieval, or feedback MUST have documented provenance, authorization, restrictions, and downstream handling. | Dataset card, provenance record, permission and contract review |
| `AI-03` | The adopter MUST NOT infer or act on highly sensitive traits without a documented necessity, lawful basis, impact assessment, and safeguards proportionate to potential harm. | Feature review, assessment, tests, approval or prohibition |
| `AI-04` | AI systems capable of materially affecting people MUST be evaluated for foreseeable privacy harms, meaningful human oversight, contestability, monitoring, and suspension. | Evaluation report, review workflow, monitoring and stop criteria |
| `AI-05` | Notices and deletion responses MUST accurately explain model-provider retention, training choices, memorization risks, output limitations, and whether removal from trained parameters is technically supported. | Provider terms, configuration evidence, tested response language |

### Communities and vulnerable contexts

| ID | Requirement | Minimum evidence |
|---|---|---|
| `REL-01` | Processing of data that materially represents multiple people or a community MUST assess competing rights, collective harms, cultural expectations, and an appropriate participation or redress mechanism. | Relational-data assessment, consultation record, safeguards |
| `CHD-01` | Products likely to be accessed by children MUST determine applicable age and authorization rules and apply child-centered defaults, minimization, safety, and understandable notices. | Audience assessment, age design, child-rights impact review |
| `VUL-01` | Processing involving heightened vulnerability or impaired freedom of choice MUST apply enhanced necessity, consent, accessibility, safety, and human-review safeguards. | Context assessment, interface tests, escalation and review records |

## 6. Exceptions

An exception MUST include:

- Affected control, system, people, data, and jurisdictions
- Reason the requirement cannot currently be met
- Privacy, security, equity, and legal risks
- Compensating controls
- Accountable approver
- Start, review, and expiry dates
- Remediation owner and milestones
- Required internal and external communication

Open-ended exceptions do not satisfy this standard.

## 7. Public claims

An adopter discussing this draft SHOULD state:

- The exact version or commit used
- Assessment scope and evidence state
- Applicable controls and exceptions
- Whether the assessment was internal or independent
- Date of assessment and next review

An adopter MUST NOT imply project endorsement, legal compliance, independent verification, or certification beyond what has actually occurred.

## 8. Planned development

Before a stable release, the project must add:

- A validated control schema and automated consistency tests
- Reviewable mappings to selected established frameworks
- Sector and jurisdiction overlays
- Worked evidence examples and implementation tests
- Formal conformance and independent assurance rules
- Pilot findings and affected-community review

Public review should challenge whether each control is necessary, testable, affordable, resistant to gaming, and protective of people with the least power.
