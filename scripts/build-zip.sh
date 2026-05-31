#!/usr/bin/env bash
# Build a reproducible seedance-prompts-skill.zip from the skill source.
# Reproducible = fixed timestamps + sorted entries, so the archive only
# changes when the skill *content* changes (clean diffs, no CI noise).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SKILL_DIR="skills/seedance-prompts-skill"
OUT="$ROOT/seedance-prompts-skill.zip"
FIXED_TS="202001010000.00"   # constant mtime for every entry

cd "$ROOT"

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

cp -R "$SKILL_DIR" "$TMP/seedance-prompts-skill"
find "$TMP" -name '.DS_Store' -delete
find "$TMP" -exec touch -t "$FIXED_TS" {} +

rm -f "$OUT"
# Sorted file list piped to zip -@ for a deterministic archive.
( cd "$TMP" && find seedance-prompts-skill -type f | LC_ALL=C sort | zip -qX "$OUT" -@ )

echo "Built $OUT"
unzip -l "$OUT"
