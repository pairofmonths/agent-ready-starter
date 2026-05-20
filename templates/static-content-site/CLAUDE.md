# {{PROJECT_NAME}} — Agent Instructions

This repository is for {{PROJECT_DESCRIPTION}}.

Read these files before implementation work:

1. `README.md`
2. `docs/prd.md`
3. `docs/design-brief.md`
4. `docs/content-model.md`
5. `docs/working-rules.md`
6. `docs/code-quality.md`
7. `docs/frontend-safety.md`
8. `docs/completion-integrity.md`
9. `docs/performance-async.md`
10. `docs/circular-dependency.md`

## Product Boundary

Build {{PROJECT_TYPE}}.

Do not add:

{{BANNED_FEATURES}}

The first version should be small, polished, fast, and easy to refactor.

## Site Identity

{{PROJECT_NAME}} should feel like {{DESIGN_DIRECTION}}.

The project is not a SaaS dashboard, community platform, CMS, admin product, lore wiki, or generic template site unless explicitly stated.

## Working Style

Follow all docs under `docs/`.

Key rules:

- Keep scope small.
- Do not add adjacent features silently.
- Keep content in local content files.
- Keep external embeds as playback/display providers only.
- Keep readable content readable.
- Keep motion restrained.
- Keep mobile layouts clean.
- Leave touched code cleaner than you found it.
- Use modularization, constants, design tokens, and no magic numbers.
- Avoid props drilling without adding premature global state.
- Use strict TypeScript; do not use `any`.
- Keep Server/Client Component boundaries small and explicit.
- Treat iOS Safari as a first-class target.
- Run lint and build before commit/push.
- Do not leave TODO/FIXME/temp/dummy work.
- Do not add fake links, dead buttons, or dummy data.
- Use modern patterns consistently; delete legacy/dead code instead of preserving compatibility by default.
- Avoid unnecessary client-side async work, fetch waterfalls, and heavy embeds above the fold.
- Prevent circular imports, recursive reference loops, and effect-driven render loops.

## Implementation Expectations

Use:

{{RECOMMENDED_STACK}}

Content must be rendered from local data files, not hardcoded separately into each page.

## Design Guardrails

The site should feel {{DESIGN_DIRECTION}}.

Avoid:

{{DESIGN_ANTI_GOALS}}

## External Embeds

{{EXTERNAL_EMBEDS}}

External providers must not become the source of truth for local metadata, copy, credits, or structured content.
