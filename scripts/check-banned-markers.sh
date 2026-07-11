#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-src}"

if [ ! -e "$TARGET" ]; then
  echo "Target does not exist: $TARGET"
  exit 0
fi

EXCLUDES=(
  --exclude-dir=node_modules
  --exclude-dir=.next
  --exclude-dir=.git
  --exclude-dir=dist
  --exclude-dir=build
  --exclude-dir=coverage
  --exclude='*.test.*'
  --exclude='*.spec.*'
)

# Classic markers: any case, word-bounded.
LOOSE='\b(todo|fixme|tbd|wip|hack)\b'

# Ambiguous words: uppercase only, so prose like "fallback behavior" passes.
STRICT='\b(TEMP|TEMPORARY|DUMMY|MOCK|PLACEHOLDER|FALLBACK)\b|IMPLEMENT LATER|COMING SOON'

found=0

loose_hits=$(grep -RInEi "${EXCLUDES[@]}" "$LOOSE" "$TARGET" | grep -v 'marker-ok' || true)
strict_hits=$(grep -RInE "${EXCLUDES[@]}" "$STRICT" "$TARGET" | grep -v 'marker-ok' || true)

if [ -n "$loose_hits" ]; then printf '%s\n' "$loose_hits"; found=1; fi
if [ -n "$strict_hits" ]; then printf '%s\n' "$strict_hits"; found=1; fi

if [ "$found" -eq 1 ]; then
  echo ""
  echo "Banned fake-completion markers found in $TARGET."
  echo "A line may opt out with a 'marker-ok' comment and a reason."
  exit 1
fi

echo "No banned fake-completion markers found in $TARGET."
