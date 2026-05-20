# Agent Task Template

Use this when asking Claude Code, Codex, or another coding agent to work on {{PROJECT_NAME}}.

---

## Task

[Describe the exact task.]

## Required Reading

Read these before editing:

1. `README.md`
2. `CLAUDE.md`
3. `docs/prd.md`
4. `docs/design-brief.md`
5. `docs/working-rules.md`
6. `docs/code-quality.md`
7. `docs/frontend-safety.md`
8. `docs/completion-integrity.md`
9. `docs/performance-async.md`
10. `docs/circular-dependency.md`
11. Relevant files in `src/content`

## Scope

Do:

- [specific change]
- [specific change]
- [specific change]

Do not:

{{BANNED_FEATURES}}

## Quality Bar

- Content must come from local content files.
- Mobile layout must remain readable.
- Core content must remain easy to find and read.
- Visual tone must match `docs/design-brief.md`.
- External providers are not source of truth.
- Keep code small and easy to refactor.
- Use modular components.
- Use constants and design tokens.
- Avoid hardcoded values and magic numbers.
- Do not use `any`.
- Avoid props drilling without adding premature global state.
- Keep Server/Client boundaries small.
- Check iOS Safari/mobile safety.
- Avoid client-side async work for local content.
- Do not introduce circular imports or recursive reference loops.
- Run lint and build before commit/push.

## Validation

Run if available:

```bash
npm run lint
npm run build
```

If a command cannot be run, report why.

## Report Back

Summarize changed files, what was implemented, what was intentionally not implemented, removed legacy/dead code, validation result, async/performance impact if any, circular dependency/render loop risk if any, and remaining risks.
