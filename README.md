# Skyland Chronicles

Trilogy rewrite of the source manuscript, scene-by-scene against a beat-driven plan, with a living codex and a kanban-style workflow.

- **Operations manual**: [`CLAUDE.md`](CLAUDE.md) — read this and the auto-included context every turn.
- **Codex (story bible)**: [`codex/INDEX.md`](codex/INDEX.md) — every entity tracked.
- **Beats**: [`codex/beats/hard.md`](codex/beats/hard.md), [`codex/beats/soft.md`](codex/beats/soft.md).
- **Kanban**: [`kanban/`](kanban/) — scene cards move pending → in-progress → review → done.
- **Status**: [`STATUS.md`](STATUS.md) — regenerated on every scene commit.
- **Wiki** (rendered): https://tokko.github.io/skyland-chronicles (built by `.github/workflows/docs.yml`).

## How the pipeline works

1. Orchestrator (Opus 4.7) reads the next scene card.
2. Assembles a brief from codex slices + rolling 2k word tail.
3. Spawns scene writer (Sonnet 4.6).
4. Spawns scene reviewer (Opus 4.7) — verdict ∈ {clean, minor, significant, broken}.
5. Loops the writer if needed (revise or rewrite).
6. Updates the codex (character state, location state, timeline).
7. Spawns git operator (Haiku 4.5) to commit.
8. Repeat. When a chapter is complete, spawn chapter polisher for a sweep.

## Slash commands

Defined in `.claude/commands/`:

- `/next-scene` — run the per-scene pipeline once.
- `/drain-queue` — run /next-scene until pending is empty or a scene blocks.
- `/status` — print the current state.
- `/codex-audit` — chapter-boundary consistency check.

## Branch

All work lives on `main`. Don't push elsewhere without explicit approval.
