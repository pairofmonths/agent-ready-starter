# {{PROJECT_NAME}} Content Model

## Goal

Keep content local, editable, typed, and separate from page components.

The first version should use static TypeScript and Markdown files instead of a database or CMS.

## Suggested Structure

```txt
src/
  content/
    project.ts
    entries.ts
    media.ts
    credits.ts
    notes/
```

Adjust this structure to the project domain.

## Content Principles

- Keep content files flat.
- Reference related content by ID or slug.
- Join related content in helper modules.
- Do not make content files import each other.
- Do not scatter content inside page components.
- Use `as const` and `satisfies` where appropriate.
- Use explicit domain types.

## Example Domain Types

```ts
export type ContentEntry = {
  id: string;
  slug: string;
  title: string;
  summary?: string;
  relatedMediaIds?: readonly string[];
  externalLinks?: {
    label: string;
    href: string;
  }[];
};
```

## Example Content

```ts
import type { ContentEntry } from "@/types/content";

export const entries = [
  {
    id: "primary-entry",
    slug: "primary-entry",
    title: "{{PRIMARY_ENTITY}}",
    summary: "{{PRIMARY_ENTITY}} summary.",
  },
] as const satisfies readonly ContentEntry[];
```

## Reader Helpers

Join related content in helpers under `src/lib/content`. Do not join data inside content files.

## External Embeds

{{EXTERNAL_EMBEDS}}

External providers are not source of truth for local structured content.
