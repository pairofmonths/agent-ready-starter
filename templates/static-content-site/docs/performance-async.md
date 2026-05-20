# {{PROJECT_NAME}} Performance and Async Rules

These rules prevent unnecessary waterfalls, blocking work, over-fetching, and client-side async clutter.

## Core Principle

Prefer simple static rendering.

## Avoid Client-Side Fetching for Local Content

Local site content should be imported or loaded on the server.

Do not fetch local structured content from Client Components.

Do not create API routes for local static content.

## Avoid Async Waterfalls

Do not load independent data one step at a time. When work is truly async, use `Promise.all` for independent work.

For v1, most content should be sync imports anyway.

## Keep Async Boundaries Server-Side

Async data preparation should happen in Server Components, route-level helpers, build-time/static helpers, or metadata helpers.

Avoid async client components.

## No Suspense Theater

Do not add Suspense boundaries just to look modern. Do not use loading skeletons for static content that should already be available.

## Main Thread Safety

Avoid large synchronous parsing in Client Components, expensive processing on every render, heavy animation calculations, repeated parsing in the browser, and scroll/resize listeners without throttling.

## Event Listener Rules

Browser listeners must be guarded, cleaned up, and minimal.

High-frequency events should be avoided or throttled/debounced.

## Image and Embed Loading

Use lazy loading, stable aspect-ratio wrappers, optimized image paths, compact embeds, and no autoplay.

## Animation Performance

Framer Motion should stay light. Prefer opacity, transform, CSS transitions, small reveal effects, and reduced-motion support.

## Validation

Before commit or push:

```bash
npm run lint
npm run build
```
