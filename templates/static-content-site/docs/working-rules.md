# {{PROJECT_NAME}} Working Rules

These rules keep the project small, polished, and maintainable.

## Core Rule

Keep the first version minimal and high-quality.

When unsure, choose less feature, clearer content, smaller code, better typography, and easier refactor path.

Do not expand scope without explicit approval.

## Boy Scout Rule

Leave touched code cleaner than you found it.

Remove unused imports/variables, keep components readable, reduce duplication when simple, avoid abstractions before repetition exists, and run lint/build before calling work done when possible.

Do not perform large unrelated refactors during a small task.

## No Feature Creep

Do not add banned features unless explicitly requested.

{{BANNED_FEATURES}}

If a future feature seems useful, write it as a note or issue candidate. Do not implement it silently.

## Content Source of Truth

All structured content should live in local content files.

External providers are display/playback/reference providers only.

## Component Boundaries

Suggested structure:

```txt
src/
  app/
  components/
    layout/
    sections/
    ui/
  content/
  lib/
  styles/
  constants/
  types/
```

## Styling Rules

Use design tokens and Tailwind variables where possible. Avoid random hex values, repeated arbitrary spacing, repeated animation timings, and magic numbers.

## Design Boundary

The site should feel {{DESIGN_DIRECTION}}.

Avoid:

{{DESIGN_ANTI_GOALS}}

## Mobile First

Mobile users are primary. Do not sacrifice core content readability for visual effect.

## Agent Workflow

Before changing code, read `README.md`, `CLAUDE.md`, `docs/prd.md`, `docs/design-brief.md`, and all safety/rules docs. Identify exact task scope. Do not implement adjacent ideas.

Before finishing, check that no banned feature was added, content still comes from local files, mobile layout is acceptable, visual tone matches the brief, lint/build status is known, and changed files are summarized.

## Definition of Done

A task is done only when requested scope is complete, code remains small and readable, no banned feature was added, content source of truth is preserved, mobile layout is acceptable, build/lint status is known, and changed files are summarized.
