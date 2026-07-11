# {{PROJECT_NAME}} Completion Integrity Rules

These rules prevent fake completion, unfinished scaffolds, legacy clutter, and hidden technical debt.

## No Fake Completion

Do not leave work in a state that merely looks complete.

Banned completion shortcuts:

- dummy data
- fake content
- TODO
- FIXME
- temporary implementation
- implement later
- placeholder copy
- placeholder cards
- fallback UI used to hide missing data
- silent empty catches
- mock-only logic in production paths
- fake links
- dead buttons
- nonfunctional controls
- unfinished routes
- unused scaffolding
- reporting done from lint/build output alone, without opening the running app

If final content is not available, build a real empty state or omit the section.

## Banned Terms in Production Code

Do not commit these terms in production code, content, or visible copy unless they are inside this rules document or a test explicitly checking for them:

```txt
TODO
FIXME
TEMP
TEMPORARY
DUMMY
MOCK
PLACEHOLDER
TBD
WIP
LATER
IMPLEMENT LATER
COMING SOON
FALLBACK
HACK
```

Exceptions require explicit explanation in the report back.

## No Dummy Data

Do not invent fake entries, fake dates, fake credits, fake media, fake links, or fake analytics.

## No Dead Buttons or Fake Links

Every interactive control must do something real.

Do not add `href="#"`, empty `onClick`, `javascript:void(0)`, fake social URLs, console-only buttons, or hidden unfinished modals.

## No Silent Fallbacks

Do not hide broken required data with vague fallbacks. If data is required, fail loudly during development. If data is optional, render nothing or a real empty state.

## Modern Pattern Only

Use one modern pattern consistently. When replacing a pattern, introduce the modern pattern, move all current usage to it, delete legacy helpers/components/styles/routes, remove dead imports, remove compatibility shims, run lint/build, and report removed legacy files or paths.

## No Legacy Compatibility by Default

This is a new project. Do not add legacy route aliases, duplicate component APIs, deprecated props, compatibility wrappers, migration code, or backwards-compatible data readers unless explicitly requested.

## Dead Code Deletion Routine

Every task must include a dead-code check.

## Completion Report Requirements

Every agent completion report must include changed files, what was completed, what was intentionally omitted, removed legacy/dead code, validation commands run, validation results, how the change was verified in the running app, and remaining risks.
