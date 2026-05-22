#!/usr/bin/env bash
# Bootstrap a new novel-rewrite project from this scaffold.
#
# Usage (from the repo root, after cloning the bootstrap subfolder):
#   bash bootstrap/scripts/init-project.sh
#
# What it does:
#   1. Copies the scaffold (.claude/, codex/, scripts/) to the repo root.
#   2. Renames the *.template files to their working counterparts.
#   3. Creates empty source/, books/, and kanban/ subdirectories.
#   4. Optionally removes the bootstrap/ subfolder once copied.
#
# Re-runnable: if you re-run, the script will not overwrite existing files
# at the repo root unless --force is passed.

set -euo pipefail

FORCE=0
REMOVE_BOOTSTRAP=0
for arg in "$@"; do
  case "$arg" in
    --force)             FORCE=1 ;;
    --remove-bootstrap)  REMOVE_BOOTSTRAP=1 ;;
    --help|-h)
      sed -n '2,17p' "$0"
      exit 0
      ;;
    *)
      echo "Unknown arg: $arg" >&2
      exit 2
      ;;
  esac
done

# Locate ourselves (the script lives in bootstrap/scripts/)
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BOOTSTRAP_ROOT="$( cd "$SCRIPT_DIR/.." && pwd )"
REPO_ROOT="$( cd "$BOOTSTRAP_ROOT/.." && pwd )"

echo "Bootstrap root: $BOOTSTRAP_ROOT"
echo "Repo root:      $REPO_ROOT"
echo

copy_tree() {
  # copy_tree <src> <dst>
  local src="$1" dst="$2"
  if [[ -e "$dst" && $FORCE -eq 0 ]]; then
    echo "  skip (exists): $dst"
    return
  fi
  mkdir -p "$( dirname "$dst" )"
  cp -r "$src" "$dst"
  echo "  copied: $src -> $dst"
}

echo "Copying scaffold to repo root..."
copy_tree "$BOOTSTRAP_ROOT/.claude"  "$REPO_ROOT/.claude"
copy_tree "$BOOTSTRAP_ROOT/codex"    "$REPO_ROOT/codex"
copy_tree "$BOOTSTRAP_ROOT/scripts"  "$REPO_ROOT/scripts"

echo
echo "Renaming *.template files at repo root..."
shopt -s globstar nullglob
for tmpl in "$REPO_ROOT"/**/*.template; do
  target="${tmpl%.template}"
  if [[ -e "$target" && $FORCE -eq 0 ]]; then
    echo "  skip (exists): $target"
    continue
  fi
  mv "$tmpl" "$target"
  echo "  renamed: $tmpl -> $target"
done
shopt -u globstar nullglob

# Also copy the operations-manual template to repo-root CLAUDE.md
if [[ -e "$REPO_ROOT/CLAUDE.md" && $FORCE -eq 0 ]]; then
  echo "  skip (exists): $REPO_ROOT/CLAUDE.md"
else
  cp "$BOOTSTRAP_ROOT/CLAUDE.md.template" "$REPO_ROOT/CLAUDE.md"
  echo "  copied: CLAUDE.md.template -> $REPO_ROOT/CLAUDE.md"
fi

echo
echo "Creating empty source/, books/, kanban/ directories..."
mkdir -p \
  "$REPO_ROOT/source" \
  "$REPO_ROOT/books" \
  "$REPO_ROOT/kanban/pending" \
  "$REPO_ROOT/kanban/in-progress" \
  "$REPO_ROOT/kanban/review" \
  "$REPO_ROOT/kanban/done"
touch \
  "$REPO_ROOT/source/.gitkeep" \
  "$REPO_ROOT/books/.gitkeep" \
  "$REPO_ROOT/kanban/pending/.gitkeep" \
  "$REPO_ROOT/kanban/in-progress/.gitkeep" \
  "$REPO_ROOT/kanban/review/.gitkeep" \
  "$REPO_ROOT/kanban/done/.gitkeep"
echo "  done."

if [[ $REMOVE_BOOTSTRAP -eq 1 ]]; then
  echo
  echo "Removing bootstrap/ subfolder..."
  rm -rf "$BOOTSTRAP_ROOT"
  echo "  done."
fi

echo
echo "Bootstrap complete."
echo
echo "Next steps:"
echo "  1. Edit $REPO_ROOT/CLAUDE.md and fill in the bracketed placeholders."
echo "  2. Drop your source manuscript(s) into $REPO_ROOT/source/."
echo "  3. Start the codex-build session — extract voice, hard beats, entity files."
echo "  4. Seed kanban/pending/ with scene cards from codex/templates/scene-card.md."
echo "  5. Run /next-scene to draft the first scene."
