# {{PROJECT_NAME}} Frontend Safety Rules

These rules prevent common React, Next.js, TypeScript, and mobile browser failures.

## TypeScript Rules

Use strict TypeScript.

Do not use `any`.

Use explicit domain types, `unknown` with type guards, discriminated unions, generics with constraints, `satisfies`, and `as const`.

Use `as const` and `satisfies` for content files.

Keep shared content/domain types in `src/types`.

## Runtime Validation and Guards

Use guards for URL parsing, external embed helpers, optional media fields, frontmatter if added later, and environment variables if added later.

Do not assume browser APIs exist without checking.

## Props Drilling Prevention

Avoid long chains of props through unrelated components.

Preferred pattern: page gets data from `src/content`, page passes data to section components, sections pass only what children need, UI primitives stay generic.

Do not solve props drilling with global state by default.

## State Rules

Use as little client state as possible. If a value can be derived, derive it.

## Server and Client Component Rules

Default to Server Components. Use Client Components only for interactivity, browser APIs, hooks, or event handlers.

Do not put `"use client"` at the top of large page files unless necessary.

Do not access `window`, `document`, `localStorage`, `matchMedia`, or `visualViewport` during server render.

## Memoization Rules

Use memoization only when it solves a real problem. First make components small. Then memoize only actual hot paths.

## iOS Safari and Mobile Browser Rules

iOS Safari is a first-class target.

Avoid relying on `100vh`, hover-only interactions, autoplay assumptions, layout shifts caused by iframes, and unguarded `visualViewport` access.

Prefer `svh/dvh` with fallback, safe-area padding, touch-friendly controls, stable embed wrappers, and visible focus states.

## Browser API Safety

All browser-specific code must be isolated.

Use guards:

```ts
if (typeof window === "undefined") return;
```

## Secrets and Environment Safety

Never commit `.env`, `.env.local`, or any file containing real credentials. Confirm `.gitignore` covers `.env*` before the first commit.

Never place secrets in client-reachable code. In Next.js, anything prefixed `NEXT_PUBLIC_` ships to the browser; a secret there is public. Server-only secrets belong in server-only code paths.

If a key is ever committed or exposed, rotate it. Deleting the commit does not un-leak it.

## Commit and Push Verification

Lint and build passing is not proof the page works. Before commit, start the dev server, open every changed route, click the interactive elements you touched, and check a mobile viewport.

Before every commit or push, run:

```bash
npm run lint
npm run build
```

If available, also run `npm run typecheck` and `npm run format:check`.
