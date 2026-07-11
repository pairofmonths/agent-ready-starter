# Repo Bootstrap Checklist

## 1. Copy template

Copy `templates/static-content-site` into the new project repository.

## 2. Replace variables

Replace template variables:

```txt
{{PROJECT_NAME}}
{{PROJECT_TYPE}}
{{PROJECT_DESCRIPTION}}
{{PRIMARY_ENTITY}}
{{SECONDARY_ENTITY}}
{{CONTENT_SOURCE}}
{{INITIAL_ROUTES}}
{{OPTIONAL_ROUTES}}
{{BANNED_FEATURES}}
{{DESIGN_DIRECTION}}
{{DESIGN_ANTI_GOALS}}
{{EXTERNAL_EMBEDS}}
{{RECOMMENDED_STACK}}
{{VALIDATION_COMMANDS}}
{{REQUIRED_FEATURES}}
{{FUTURE_ENHANCEMENTS}}
{{CORE_MOOD}}
{{VISUAL_DO}}
{{HOME_SECTIONS}}
{{MOBILE_ORDER}}
{{TYPOGRAPHY_DIRECTION}}
{{COPY_TONE}}
{{COLOR_BACKGROUND}} {{COLOR_SURFACE}} {{COLOR_TEXT}}
{{COLOR_MUTED}} {{COLOR_LINE}} {{COLOR_ACCENT}}
```

## 3. Commit docs first

```bash
git add README.md AGENTS.md CLAUDE.md docs
git commit -m "docs: define project direction"
```

## 4. Create app

For a Next.js static content site:

```bash
npx create-next-app@latest . --ts --tailwind --eslint --app --src-dir
```

If the repository is not empty, create the app in a temporary folder and copy generated files carefully.

## 5. Check agent permissions and secrets

The template ships `.claude/settings.json` pre-approving safe validation commands
(lint, build, typecheck) so beginners are not prompted for every check. Adjust it
to your commands; keep the allowlist narrow.

Confirm `.gitignore` covers `.env*` before adding any keys. Never commit real
credentials; anything prefixed `NEXT_PUBLIC_` ships to the browser.

## 6. Create content files

Create:

```txt
src/content/
src/types/
src/constants/
src/lib/content/
```

## 7. First build request

Give the coding agent `docs/implementation-prompt.md`.

## 8. Review

Use `docs/review-checklist.md`. Open the result in the dev server yourself,
including a mobile viewport. Do not accept "lint and build passed" as proof.

## 9. Before commit or push

Always run:

```bash
npm run lint
npm run build
```

If available, also run:

```bash
npm run typecheck
npm run format:check
```

## 10. Completion integrity check

Search production source for banned fake-completion markers:

```bash
bash scripts/check-banned-markers.sh src
```

Rules documents may contain banned words by design. Production source should not.

## 11. Optional circular dependency check

For later architecture checks:

```bash
npx madge src --extensions ts,tsx --circular
```

Do not add this as a dependency in v1 unless explicitly requested.
