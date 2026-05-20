# {{PROJECT_NAME}} Code Quality Rules

These rules prevent spaghetti code, muddy structure, hardcoded styling, and unnecessary technical debt.

## Clean Codebase Principle

The codebase should remain boring in structure and refined in output.

Prefer small files, clear names, local content data, reusable sections, design tokens, predictable folders, minimal dependencies, and simple rendering paths.

Avoid one giant page component, repeated hardcoded layout values, scattered hex colors, scattered animation timings, component-specific magic numbers, premature architecture, hidden data inside UI components, and clever abstractions with no immediate need.

## Modularization Rules

Routes compose sections. Sections compose UI primitives. Content stays in `src/content`.

## Single Source of Truth

Do not duplicate the same value across files. If a value is used more than once, it should usually become a content field, constant, token, helper, or reusable component prop.

## No Magic Numbers

Avoid unexplained numbers in layout, animation, z-index, timing, dimensions, and thresholds. If a value matters to the design system, name it.

## Design Token Rules

Use named tokens for recurring design decisions.

Recommended files:

```txt
src/constants/
  design.ts
  motion.ts
  layout.ts
  routes.ts
  metadata.ts
```

## Tailwind Token Policy

Prefer Tailwind theme tokens over arbitrary values. Do not scatter arbitrary values such as `px-[73px]`, `text-[#F3F0EA]`, or `duration-[670ms]`.

## Component Size Rules

Under 150 lines is preferred. Over 250 lines should be reviewed. Page components should mostly compose sections.

## Props and Data Rules

Components should receive typed props. Avoid `any`, huge untyped objects, and hardcoded project data inside generic components.

## Content Editing Safety

A content edit should not require touching layout components.

## Dependency Rules

Do not add dependencies casually. Ask before adding component libraries, CMS clients, animation libraries, state management, icon packs, audio packages, analytics, or data-fetching libraries.

## Refactor Triggers

Refactor when a value is duplicated, a page becomes hard to scan, content is hardcoded in layout, a visual pattern repeats, routes/slugs duplicate, magic numbers appear, or mobile fixes scatter.

Follow `docs/frontend-safety.md`, `docs/completion-integrity.md`, and `docs/circular-dependency.md`.
