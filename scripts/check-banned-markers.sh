#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-src}"

if [ ! -e "$TARGET" ]; then
  echo "Target does not exist: $TARGET"
  exit 0
fi

PATTERN="TODO|FIXME|TEMP|TEMPORARY|DUMMY|MOCK|PLACEHOLDER|TBD|WIP|IMPLEMENT LATER|COMING SOON|FALLBACK|HACK"

if grep -RInE "$PATTERN" "$TARGET"; then
  echo ""
  echo "Banned fake-completion markers found in $TARGET."
  exit 1
fi

echo "No banned fake-completion markers found in $TARGET."
