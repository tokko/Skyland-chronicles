# Kanban

Scene cards move through four directories in order:

```
pending/  →  in-progress/  →  review/  →  done/
```

A card is a single Markdown file matching `codex/templates/scene-card.md`. Filename format: `book-<N>_ch-<MM>_scene-<PP>.md`.

## Lifecycle

1. **Pending** — card exists with the scene brief outline, awaiting a slot.
2. **In-progress** — orchestrator has assembled the full brief and spawned the scene writer.
3. **Review** — scene writer returned a draft; reviewer is auditing or has audited and routing is in flight.
4. **Done** — scene was accepted (verdict clean or minor), codex updated, committed.

Moves happen by `git mv` (handled by the git-haiku agent). The card's front-matter `status` field is kept consistent with which directory it sits in.

## Why directories instead of a single status field

- Trivial to list outstanding work: `ls kanban/pending/`.
- Git history shows the kanban transitions per commit.
- Reviewers and writers can see the full backlog without parsing front-matter.
