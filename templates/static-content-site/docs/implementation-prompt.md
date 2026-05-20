# Implementation Prompt

Use this prompt for Claude Code, Codex, or another coding agent after the repository is ready.

---

Build the first production-ready version of {{PROJECT_NAME}}.

Read and follow:

- `README.md`
- `CLAUDE.md`
- `docs/prd.md`
- `docs/design-brief.md`
- `docs/content-model.md`
- `docs/working-rules.md`
- `docs/code-quality.md`
- `docs/frontend-safety.md`
- `docs/completion-integrity.md`
- `docs/performance-async.md`
- `docs/circular-dependency.md`

## Goal

Create {{PROJECT_DESCRIPTION}}.

The site must feel {{DESIGN_DIRECTION}}.

## Stack

Use:

{{RECOMMENDED_STACK}}

Do not add:

{{BANNED_FEATURES}}

## Required Routes

Create:

{{INITIAL_ROUTES}}

## Required Features

{{REQUIRED_FEATURES}}

## Content

Render content from local files under `src/content`. Do not hardcode structured content only inside page components. Do not create API routes for local static content.

## Design

Visual tone:

{{VISUAL_DO}}

Avoid:

{{DESIGN_ANTI_GOALS}}

## Code Quality

- Keep page components small.
- Use modular components.
- Render data from `src/content`.
- Use constants/tokens for repeated values.
- Avoid hardcoded hex colors and arbitrary spacing values.
- Avoid magic numbers.
- Do not use `any`.
- Avoid props drilling through unrelated components.
- Keep Server/Client boundaries small.
- Avoid circular imports.
- Do not leave TODO/FIXME/temp/dummy work.
- Do not leave fake links, dead buttons, or silent fallbacks.

## Validation

Before reporting done, run:

```bash
npm run lint
npm run build
```

If available, also run `npm run typecheck` and `npm run format:check`.

Report validation results and remaining risks.
