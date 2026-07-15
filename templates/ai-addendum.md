<!-- SPDX-License-Identifier: CC0-1.0 -->

# AI Data-Use Addendum Template

**Framework resource:** Data Stewardship Profile implementation template

> [!WARNING]
> Complete one record for each materially distinct AI use. This alpha template does not establish compliance or replace an impact assessment, provider review, product disclosure, or legal advice.

## System identity

- Organization and product: [NAME]
- AI feature: [NAME]
- Internal owner: [ROLE]
- Model/system provider and version: [PROVIDER/MODEL/VERSION]
- Deployment model: [HOSTED API/SELF-HOSTED/ON-DEVICE/OTHER]
- Release and last review date: [DATES]

## Purpose and role

- Intended purpose: [PURPOSE]
- People who use it: [USERS]
- People represented or materially affected: [AFFECTED PEOPLE/COMMUNITIES]
- Decision role: [ASSISTIVE/RECOMMENDATION/AUTOMATED/NO DECISION]
- Consequences of an error or misuse: [CONSEQUENCES]
- Non-AI alternative: [AVAILABLE/NOT AVAILABLE AND WHY]

## Data lifecycle

| Stage | Data categories and source | Provider access | Retention | Purpose | Authorization |
|---|---|---|---|---|---|
| Input/prompt | [DATA] | [YES/NO] | [PERIOD] | [PURPOSE] | [BASIS/PERMISSION] |
| Retrieval/context | [DATA] | [YES/NO] | [PERIOD] | [PURPOSE] | [BASIS/PERMISSION] |
| Output | [DATA] | [YES/NO] | [PERIOD] | [PURPOSE] | [BASIS/PERMISSION] |
| Logs/telemetry | [DATA] | [YES/NO] | [PERIOD] | [PURPOSE] | [BASIS/PERMISSION] |
| Feedback/evaluation | [DATA] | [YES/NO] | [PERIOD] | [PURPOSE] | [BASIS/PERMISSION] |
| Training/fine-tuning | [DATA] | [YES/NO] | [PERIOD] | [PURPOSE] | [BASIS/PERMISSION] |

Document cross-border flows, subprocessors, human provider review, abuse monitoring, and whether provider settings override default training or retention behavior.

## Training and provenance

- Is user or relational data used for training or fine-tuning? [YES/NO/CONDITIONAL]
- Is use opt-in, opt-out, necessary, or prohibited? [DETAILS]
- Dataset sources, permissions, restrictions, and version: [DATASET CARD/LINK]
- Sensitive, copyrighted, confidential, community, or children's data controls: [CONTROLS]
- Can future training use be stopped? [MECHANISM]
- Can influence on an existing model be removed or reduced? [TESTED CAPABILITY AND LIMITATIONS]

Do not equate deletion of source records with removal from trained parameters unless the latter has been demonstrated.

## Evaluation and safeguards

| Risk | Affected people | Test and result | Safeguard | Residual risk | Owner |
|---|---|---|---|---|---|
| Memorization or data leakage | [PEOPLE] | [TEST] | [CONTROL] | [RISK] | [OWNER] |
| Sensitive inference | [PEOPLE] | [TEST] | [CONTROL] | [RISK] | [OWNER] |
| Re-identification | [PEOPLE] | [TEST] | [CONTROL] | [RISK] | [OWNER] |
| Inaccuracy or fabrication | [PEOPLE] | [TEST] | [CONTROL] | [RISK] | [OWNER] |
| Disparate or collective harm | [PEOPLE] | [TEST] | [CONTROL] | [RISK] | [OWNER] |
| Manipulation or over-reliance | [PEOPLE] | [TEST] | [CONTROL] | [RISK] | [OWNER] |

## Human oversight and contestability

- What does the reviewer see and what authority do they have? [DETAILS]
- How are automation bias and rubber-stamping tested? [TEST]
- How can a person contest, correct, or appeal an outcome? [PROCESS]
- What triggers escalation, rollback, or suspension? [CRITERIA]
- How are complaints and incidents monitored? [PROCESS]

## User-facing disclosure

Provide the exact language shown to people, including:

- That AI is being used and for what purpose
- Important data flows and provider involvement
- Training and retention choices
- Material limitations and consequences
- Available controls, human review, and complaint routes

[DISCLOSURE TEXT OR LINK]

## Approval and continuing review

- Privacy review: [REVIEWER/DATE/SCOPE]
- Security review: [REVIEWER/DATE/SCOPE]
- Legal review: [REVIEWER/DATE/JURISDICTIONS]
- Affected-community review: [PARTICIPANTS/DATE/COMPENSATION]
- Product approval: [OWNER/DATE]
- Monitoring metrics and thresholds: [METRICS]
- Next review and model-change triggers: [DATE/TRIGGERS]
- Open exceptions and remediation: [LINKS]
