# agent-ready-starter

Reusable starter docs for agent-ready projects: PRD, working rules, code quality, frontend safety, completion integrity, async/performance, and circular dependency guardrails.

This repository is a documentation starter kit for projects that will be built or maintained with coding agents such as Claude Code, Codex, Cursor, or Gemini CLI.

It is not a framework. It is not a runtime package. It is a project-starting guardrail kit.

## Why

AI agents are useful, but they tend to fail in familiar ways:

- expanding scope without being asked
- leaving TODO/FIXME/dummy work behind
- hardcoding values instead of using tokens
- adding auth/database/admin features too early
- using `any`
- creating props drilling or premature global state
- causing iOS Safari/mobile layout issues
- adding unnecessary client-side async work
- leaving legacy/dead code around
- creating circular imports or render loops
- reporting "done" from lint/build output without ever opening the app
- inventing package names that do not exist on the registry
- committing `.env` files or exposing keys in client code

This starter gives a new repo a clear operating contract before agents start editing code.

## Included Template

```txt
templates/
  static-content-site/
```

Use this for small public-facing content sites such as:

- portfolio and editorial sites
- personal or project archive sites
- documentation-like public surfaces
- static product landing pages with rich content

## Template Contents

```txt
AGENTS.md
CLAUDE.md
.claude/settings.json
docs/
  prd.md
  design-brief.md
  content-model.md
  working-rules.md
  code-quality.md
  frontend-safety.md
  completion-integrity.md
  performance-async.md
  circular-dependency.md
  implementation-prompt.md
  agent-task-template.md
  review-checklist.md
  repo-bootstrap-checklist.md
```

## Agent Entry Files

`AGENTS.md` is the canonical agent instruction file; most coding agents read it by convention. `CLAUDE.md` is a thin pointer kept for tools that look for that name first. When rules change, edit `AGENTS.md` only.

`.claude/settings.json` pre-approves safe validation commands (lint, build, typecheck) so a beginner is not prompted on every routine check. Keep the allowlist narrow; approving broad shell access defeats the point.

## How to Use

1. Copy `templates/static-content-site` into a new project repo.
2. Replace template variables such as `{{PROJECT_NAME}}` (full list in `docs/repo-bootstrap-checklist.md`).
3. Fill in the PRD and design brief.
4. Commit docs before asking an agent to implement.
5. Give the agent `docs/implementation-prompt.md`.
6. Review output with `docs/review-checklist.md`, in the running app, not just in the diff.

## Template Variables

Common variables:

```txt
{{PROJECT_NAME}}
{{PROJECT_TYPE}}
{{PROJECT_DESCRIPTION}}
{{PRIMARY_ENTITY}}
{{SECONDARY_ENTITY}}
{{CONTENT_SOURCE}}
{{INITIAL_ROUTES}}
{{BANNED_FEATURES}}
{{DESIGN_DIRECTION}}
{{EXTERNAL_EMBEDS}}
{{VALIDATION_COMMANDS}}
```

The full list lives in `docs/repo-bootstrap-checklist.md`.

## Scripts

```txt
scripts/check-banned-markers.sh
```

A lightweight check for fake-completion markers in production source. Classic markers (todo, fixme, tbd, wip, hack) are caught in any case; ambiguous words (TEMP, DUMMY, MOCK, PLACEHOLDER, FALLBACK) only in uppercase so normal prose does not trip it. Build output and test files are skipped, and a line can opt out with a `marker-ok` comment plus a reason.

## Philosophy

Start small. Stay explicit. Make agent behavior auditable.

A good starter does not make a project complex. It prevents small projects from becoming messy before they have earned complexity.

Last reviewed: 2026-07.
