# Website Implementation Handoff

This specification applies to the current production source for `playa-ai.org`. The website source available during the repository rebrand did not match the deployed site's current routes, so no production deployment was attempted from stale code.

## Global identity

Use this attribution wherever the program and Framework relationship appears:

> On Our Own Terms is a Mystic Arts Foundation program delivered through Playa AI. The Playa AI Living Trust Framework is one of its openly licensed community resources.

Use this clarification prominently on the Framework page:

> “Living Trust” is the name of an evolving community-governance framework. It is not an estate-planning trust, fiduciary arrangement, certification or separate legal entity.

Do not describe Playa AI as merely fiscally sponsored when describing this program if Mystic Arts Foundation's documented relationship is that On Our Own Terms is an internal program delivered through Playa AI. Preserve historically accurate statements in dated records and confirm the organization-level wording with MAF before deployment.

## `/living-trust-framework`

Create a real, indexable route rather than serving the homepage through a single-page-app fallback.

- **Title:** The Playa AI Living Trust Framework | Playa AI
- **Meta description:** Open community AI stewardship framework helping artists, builders and cultural organizations decide how AI enters their creative and cultural spaces.
- **Canonical URL:** `https://playa-ai.org/living-trust-framework`
- **Open Graph/Twitter title:** The Playa AI Living Trust Framework
- **Open Graph/Twitter description:** A Community AI Stewardship Toolkit for Artists, Builders and Cultural Organizations.
- **Structured navigation:** Home → Work → Living Trust Framework

Recommended page order:

1. Full name, subtitle and positioning sentence
2. Non-legal-trust clarification
3. Why community authority over cultural AI matters
4. Six stewardship domains
5. Data Stewardship Profile, EELP and implementation resources as distinct layers
6. Current working-draft and public-consultation status
7. Calls to read on GitHub, contribute and join community co-design
8. Attribution and independent-of-Burning-Man disclaimer

## Historical route

Return an HTTP `301` or `308` from the former toolkit route to `/living-trust-framework`. The destination should include a brief historical-name note explaining that v0.1 remains preserved under its original privacy-framework name. Do not make the old route the canonical URL.

## `/on-our-own-terms`

Create a real program page with:

- **Title:** On Our Own Terms | Playa AI
- **Meta description:** A Mystic Arts Foundation program helping artists and cultural communities shape how AI enters creative and cultural spaces.
- **Canonical URL:** `https://playa-ai.org/on-our-own-terms`
- Program challenge and community-agency thesis
- Workshops, artist-led experiments, community dialogues, the Framework and openly licensed resources shown as distinct outputs
- Intended outcomes and public-reuse model
- Clear applicant/publisher/program/initiative hierarchy

## Existing pages

- Update homepage and work-index cards to the full Framework name and subtitle.
- Describe EELP as the Framework's field implementation protocol for AI-mediated events, installations, workshops and participatory experiences.
- Keep the independent-of-Burning-Man disclaimer.
- Do not claim community validation, certification, conformance or exclusive trademark rights.

## Acceptance checks

1. Each new route returns page-specific HTML metadata without depending on client-side execution.
2. Canonical, Open Graph and Twitter URLs point to the new routes.
3. The historical route redirects permanently and does not appear in the sitemap.
4. The new routes appear in `sitemap.xml` and structured navigation.
5. Social-preview images use the full name and remain readable at common share-card sizes.
6. Search all public source for historical product names, the old repository slug, `Living Trust Agreement`, `Playa AI Foundation` and inaccurate sponsorship wording.
7. Test the redirect, response codes, metadata, mobile layout, accessibility and external GitHub links in production.
