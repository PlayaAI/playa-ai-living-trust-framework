# Playa AI Privacy Toolkit

**An open governance standard for giving people and communities meaningful control over how their data is collected, used, shared, retained, and used by AI.**

> [!IMPORTANT]
> This repository is an early public-review project. It is not legal advice, a certification program, or a drop-in privacy notice. Organizations must adapt any template to their actual practices, technology, and applicable law.

## Why this exists

Most privacy policies describe what an organization may do. The Playa AI Privacy Toolkit is designed to help organizations make narrower, testable commitments—and give people usable controls rather than ceremonial consent.

The project combines:

- A human-readable charter for data dignity and collective agency
- An auditable standard with stable control identifiers
- Machine-readable controls for engineering and assurance workflows
- Adaptable privacy and AI notice templates
- Open governance for public review and revision

The long-term aim is public-interest infrastructure: a framework that lawyers can scrutinize, engineers can implement, communities can govern, and organizations can be held accountable against.

## Project status

| Artifact | Status | Purpose |
|---|---|---|
| [Charter](CHARTER.md) | Draft | Values and non-negotiable commitments |
| [Standard](standard/standard.md) | v0.2 working draft | Normative, auditable requirements |
| [Control catalog](standard/controls.yml) | v0.2 working draft | Machine-readable control definitions |
| [Privacy notice template](templates/privacy-notice.md) | Alpha | Adaptable disclosure structure |
| [AI addendum](templates/ai-addendum.md) | Alpha | AI-specific disclosures and choices |
| [Original synthesis](research/synthesis-public-draft.md) | Preserved public draft | Research provenance; not a deployable policy |

No organization is currently certified or endorsed. Conformance criteria and independent assurance have not yet been established.

## Design commitments

1. **Control, not ownership theater.** Give people enforceable choices without relying on legally uncertain claims that all personal data is property.
2. **Truth over aspiration.** Published commitments must match deployed systems and verified operations.
3. **Minimum necessary data.** Collection and retention require documented purposes, limits, and owners.
4. **AI use is a distinct decision.** Service delivery does not silently authorize model training, profiling, or unrelated inference.
5. **Relational data needs relational governance.** One person's choice cannot erase the legitimate interests and rights of everyone represented in shared data.
6. **Deletion must be engineered.** Systems document active-store deletion, backup handling, derived-data treatment, and technical limitations.
7. **Community voice is infrastructure.** Material changes receive notice, public reasoning, and a meaningful review path.

## Start here

For organizations evaluating adoption:

1. Read the [disclaimer](DISCLAIMER.md) and [charter](CHARTER.md).
2. Inventory real data flows before drafting promises.
3. Review the [standard](standard/standard.md) and record evidence for each applicable control.
4. Adapt the templates; remove every statement your systems cannot prove.
5. Obtain jurisdiction-specific privacy and product counsel.
6. Publish your deviations, implementation status, and review date.

For contributors, read [CONTRIBUTING.md](CONTRIBUTING.md) and the [governance process](GOVERNANCE.md). Proposed normative changes should identify affected controls, evidence, implementation costs, and foreseeable harms.

## What this project is not

- A substitute for a privacy notice required by applicable law
- A representation that any organization has implemented these controls
- A legal trust, fiduciary arrangement, regulator, or standards-accreditation body
- Affiliated with or endorsed by Burning Man Project or any similarly named organization
- Permission to use third-party names, principles, marks, or copyrighted material

See [TRADEMARKS.md](TRADEMARKS.md) for naming and attribution boundaries.

## Governance and roadmap

The project currently uses an interim maintainer model while it develops a representative council and public RFC process. See [GOVERNANCE.md](GOVERNANCE.md) and [ROADMAP.md](ROADMAP.md).

The next major milestone is a legally reviewed v0.2 public consultation draft with jurisdiction-neutral controls, transparent mappings to established privacy and AI risk frameworks, and three pilot implementations.

The [reference register](REFERENCES.md) tracks primary legal, regulatory, standards, and governance sources used during development. A reference is not a claim of endorsement or conformance.

## Licensing

Different artifact types need different reuse rules. Documentation retains the original public draft's share-alike commitment; implementation assets are licensed for broad technical adoption; trademarks and third-party material are excluded. See [LICENSE.md](LICENSE.md).

## Security and responsible disclosure

Do not report security vulnerabilities or expose personal data in a public issue. Follow [SECURITY.md](SECURITY.md).

## Citation

Citation metadata is available in [CITATION.cff](CITATION.cff). Until a numbered release is issued, cite the repository URL and the exact commit reviewed.

---

**Public review status:** v0.2 working draft

**Maintainer:** PlayaAI

**Repository:** https://github.com/PlayaAI/playa-ai-privacy-toolkit
