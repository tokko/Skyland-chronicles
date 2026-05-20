#!/usr/bin/env bash
# Stage repo content into _build/ and run mkdocs build.
#
# Newer mkdocs versions refuse `docs_dir: .` (config-file's own parent) and
# refuse `site_dir` inside `docs_dir`. So we copy the publishable content
# into a child directory and build from there.
#
# Inputs:  the repo root.
# Outputs: _build/ (staged docs tree, gitignored) and site/ (built wiki).

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
BUILD="$ROOT/_build"
SITE="$ROOT/site"

cd "$ROOT"

rm -rf "$BUILD" "$SITE"
mkdir -p "$BUILD"

# Top-level pages.
cp index.md STATUS.md CLAUDE.md "$BUILD/"

# Codex (the full story bible).
cp -R codex "$BUILD/"

# Kanban (state of the rewrite — useful as a public progress board).
cp -R kanban "$BUILD/"

# Books — stage chapter outlines and accepted scene prose only.
# Drafts, reviews, and briefs are working artifacts; they don't belong in
# the public wiki.
mkdir -p "$BUILD/books"
shopt -s nullglob
for book_dir in books/book-*; do
    [ -d "$book_dir" ] || continue
    book_name="$(basename "$book_dir")"
    target_book="$BUILD/books/$book_name"
    mkdir -p "$target_book"
    [ -f "$book_dir/BOOK.md" ] && cp "$book_dir/BOOK.md" "$target_book/"

    for chapter_dir in "$book_dir"/chapter-*; do
        [ -d "$chapter_dir" ] || continue
        chapter_name="$(basename "$chapter_dir")"
        target_chapter="$target_book/$chapter_name"
        mkdir -p "$target_chapter"
        [ -f "$chapter_dir/CHAPTER.md" ] && cp "$chapter_dir/CHAPTER.md" "$target_chapter/"
        for scene_file in "$chapter_dir"/scene-[0-9][0-9].md; do
            [ -f "$scene_file" ] && cp "$scene_file" "$target_chapter/"
        done
    done
done
shopt -u nullglob

mkdocs build
