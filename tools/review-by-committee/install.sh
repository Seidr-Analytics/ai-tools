#!/usr/bin/env bash
# Copy this skill into Cursor personal skills (available in any project).
set -euo pipefail
src="$(cd "$(dirname "$0")" && pwd)"
dest="${HOME}/.cursor/skills/review-by-committee"
mkdir -p "${HOME}/.cursor/skills"
rm -rf "$dest"
cp -R "$src" "$dest"
echo "Installed to $dest"
echo "Open your target repo in Cursor and ask for a committee review."
