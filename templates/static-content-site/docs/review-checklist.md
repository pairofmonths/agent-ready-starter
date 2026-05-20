# {{PROJECT_NAME}} Review Checklist

Use this after an agent or design tool produces work.

## Product Scope

- [ ] No banned feature added
- [ ] No unrelated route added
- [ ] No complex backend logic added
- [ ] Scope matches the task

## Content

- [ ] Structured content lives in local content files
- [ ] Content edits do not require changing layout components
- [ ] External providers are not source of truth
- [ ] Credits/metadata are local and typed

## Design

- [ ] Looks aligned with the design brief
- [ ] Does not look like a generic SaaS landing page
- [ ] Does not look like a dashboard unless requested
- [ ] Does not look like a lore wiki unless requested
- [ ] Uses restrained layout
- [ ] Uses enough negative space
- [ ] Keeps primary content readable

## Mobile

- [ ] Home reads well on phone
- [ ] Detail pages read well on phone
- [ ] Navigation is simple
- [ ] No desktop-only layout dependency
- [ ] Touch targets are usable

## Code

- [ ] Components are modular and readable
- [ ] Page components mostly compose sections
- [ ] Repeated values are constants or tokens
- [ ] No magic numbers in layout, motion, timing, z-index, or dimensions
- [ ] No scattered hardcoded hex colors
- [ ] No unnecessary dependencies
- [ ] No premature global state
- [ ] Data lives in `src/content`

## TypeScript / React / Next.js Safety

- [ ] No `any`
- [ ] Unknown values are narrowed with guards
- [ ] Content data uses explicit types or `satisfies`
- [ ] No avoidable props drilling through unrelated components
- [ ] No global state added for static content
- [ ] Server Components are default where possible
- [ ] Client Components are small and justified
- [ ] Browser APIs are guarded and client-only

## Completion Integrity

- [ ] No TODO
- [ ] No FIXME
- [ ] No temporary code
- [ ] No dummy data
- [ ] No fake content
- [ ] No fake links
- [ ] No dead buttons
- [ ] No commented-out code
- [ ] No silent fallbacks hiding required data
- [ ] No legacy path preserved by default
- [ ] Dead imports/files/components removed

## Performance and Async

- [ ] No client-side fetching for local content
- [ ] No unnecessary API routes
- [ ] No async waterfalls
- [ ] Server/static rendering used where possible
- [ ] Client Components remain small
- [ ] Browser event listeners are guarded and cleaned up
- [ ] Images/embeds are stable and lazy where appropriate

## Circular Dependency and Render Loop Safety

- [ ] Content files do not mutually import each other
- [ ] Related content uses IDs/slugs
- [ ] Content joins happen in helper modules
- [ ] No component import cycles
- [ ] Type-only imports use `import type`
- [ ] No recursive renderer for flat data
- [ ] No props copied into state without reason
- [ ] No effect-driven derived state loop

## Validation

- [ ] `npm run lint` result known
- [ ] `npm run build` result known
- [ ] Commit/push is blocked if lint/build fails
