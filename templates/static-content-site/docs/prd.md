# {{PROJECT_NAME}} PRD

## 1. Product Overview

{{PROJECT_NAME}} is {{PROJECT_DESCRIPTION}}.

The first version is a static, content-first site. It should give visitors a clean path to understand the project, discover {{PRIMARY_ENTITY}}, access {{SECONDARY_ENTITY}}, and navigate the core content.

This is not a community platform, admin product, SaaS dashboard, or CMS unless explicitly requested later.

## 2. Primary Goals

- Present {{PROJECT_NAME}} with a credible public surface.
- Introduce {{PRIMARY_ENTITY}} clearly.
- Provide a structured content entry for {{SECONDARY_ENTITY}}.
- Let visitors access the most important content quickly.
- Keep external embeds optional and non-authoritative.
- Keep the site minimal, fast, polished, and easy to maintain.
- Build a structure that can later support more content without major refactoring.

## 3. Non-Goals

The first version must not include:

{{BANNED_FEATURES}}

These features should not be scaffolded unless explicitly requested later.

## 4. Target Users

Define primary visitor, returning visitor, and external reviewer.

## 5. Site Principles

- Content-first.
- Minimal but premium.
- Real public surface.
- Expandable but not overbuilt.
- No platform dependency.

## 6. Information Architecture

Initial routes:

{{INITIAL_ROUTES}}

Optional later routes:

{{OPTIONAL_ROUTES}}

## 7. Page Requirements

For every initial route, define purpose, required sections, content source, interaction requirements, mobile requirements, and what to avoid.

## 8. Content Model

Use local static content files.

Suggested structure:

```txt
src/
  content/
    project.ts
    entries.ts
    media.ts
    credits.ts
    notes/
```

## 9. External Embed Policy

{{EXTERNAL_EMBEDS}}

External providers are display/playback/reference providers only. They are not the source of truth for local structured content.

## 10. Technical Requirements

Recommended stack:

{{RECOMMENDED_STACK}}

Do not add:

{{BANNED_FEATURES}}

## 11. Design Direction

Overall mood:

{{DESIGN_DIRECTION}}

Avoid:

{{DESIGN_ANTI_GOALS}}

## 12. Circular Dependency Safety

- keep content files flat
- use IDs/slugs for content references
- join related content in helper modules
- no mutual imports between content files
- no recursive rendering for flat data
- no effect-driven render loops

## 13. Performance and Async

- prefer static/server content rendering
- no client-side fetching for local content
- no async waterfalls
- no unnecessary loading states for static content
- keep embeds stable and compact

## 14. Acceptance Criteria

The first implementation is acceptable if all initial pages exist, navigation works, content comes from local files, no banned features are present, mobile is readable, motion is restrained, lint/build status is known, and the site can deploy to the intended host.

## 15. Future Enhancements

{{FUTURE_ENHANCEMENTS}}

These should not be included in the first version unless explicitly requested.
