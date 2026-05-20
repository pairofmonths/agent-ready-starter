# {{PROJECT_NAME}} Circular Dependency and Recursion Rules

These rules prevent recursive reference loops, circular imports, circular content graphs, and render loops.

## Core Principle

Dependencies should move in one direction.

Preferred direction:

```txt
app routes
  -> page sections
    -> ui components
      -> constants / lib helpers

app routes
  -> content readers
    -> content data
      -> domain types
```

Avoid reverse imports.

## Content Graph Rules

Content files should reference by stable IDs or slugs, not by importing each other into nested objects.

## Use Reader Helpers for Joining Data

Join related content in helper modules, not inside content files.

Recommended:

```txt
src/lib/content/
  getEntry.ts
  getEntries.ts
  getMediaForEntry.ts
```

## No Component Import Cycles

Do not create cycles like `Section -> Row -> Section` or `PageShell -> Header -> PageShell`.

If two components need shared behavior, extract it into a smaller UI primitive, helper, type, or constants file.

## Barrel Export Caution

Barrel exports can hide cycles. Keep barrels layer-local.

Do not import from a barrel inside a file that the barrel itself exports.

## Type Import Rules

Use `import type` for types.

## Route and Navigation Rules

Route constants should not import pages, components, or content modules that import route constants back.

## React Render Loop Rules

Avoid render loops caused by state updates from derived values. If state can be derived, derive it.

Do not copy props into state unless there is a clear interactive reason.

## Effect Dependency Rules

Effects should not create loops. Do not use effects for values that can be calculated during render.

## Recursive Rendering Rules

Do not implement recursive rendering unless the content is truly hierarchical.

## Optional Circular Check

For later architecture checks:

```bash
npx madge src --extensions ts,tsx --circular
```

Do not add Madge as a dependency in v1 unless explicitly requested.
