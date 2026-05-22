# Novel-Rewrite Bootstrap

A reusable workflow and codex skeleton for restructuring an existing manuscript (or series of manuscripts) into a polished, multi-book series with the help of Claude Code subagents.

Extracted from the Skyland Chronicles rewrite project. Drop these files into a new repository and you have the scaffolding to begin a novel-rewrite of your own.

## What you get

- **`CLAUDE.md.template`** — the operations manual. Copy to `CLAUDE.md` at the project root and fill in the project-specific placeholders (source files, target book count, narrator names, voice anchors).
- **`.claude/agents/`** — the five subagent definitions (scene-writer, scene-writer-3-5 for A/B, scene-reviewer, chapter-polisher, git-haiku).
- **`.claude/commands/`** — four slash commands (`/next-scene`, `/drain-queue`, `/status`, `/codex-audit`).
- **`codex/templates/`** — entity templates (character, location, faction, magic, event, scene-brief, scene-card, chapter-card, character-history, character-voice, review-report).
- **`codex/style/ai-isms.md`** — the universal AI-isms blacklist (cited by reviewers as `ai-isms §<section>.<item>`). Mostly reusable as-is; add your own discoveries as you find them.
- **`codex/beats/README.md`** — format spec for hard / soft beats.
- **`codex/voice/voice-profile.md.template`** — empty voice-profile skeleton. One per POV narrator.
- **`codex/voice/polish-targets.md.template`** — empty polish-targets skeleton. Lists the source author's bad habits to suppress in the rewrite.
- **`scripts/regen-status.sh`** — status-line regenerator. Runs after every codex update.
- **`scripts/init-project.sh`** — bootstrap script. Run once to copy this scaffold to a fresh repo root and prepare directories for source manuscripts and prose output.

## What you bring

- **Source manuscripts** in `source/`. Plain text or markdown. The bootstrap workflow expects manuscripts that will be re-cast in a polished voice; if you are writing original prose from scratch, the workflow still works but the codex-elicitation step is heavier.
- **Worldbuilding knowledge** in your head, which the workflow exists to extract into the codex one revision at a time. The first chapter is the most expensive; subsequent chapters benefit from a stable codex.

## How to use

### Step 1 — instantiate

```sh
# Clone this repository (or download the bootstrap/ subfolder)
git clone <repo> my-novel-rewrite
cd my-novel-rewrite

# Run the init script from inside the bootstrap subfolder
bash bootstrap/scripts/init-project.sh
```

The init script copies the scaffold to the repo root, creates empty `source/`, `books/`, and `kanban/{pending,in-progress,review,done}/` directories, and renames `*.template` files into their working counterparts. After init, you can delete the `bootstrap/` subfolder if you like — its contents are now at the repo root.

### Step 2 — load the source

Drop your source manuscript(s) into `source/`. One file per source book or chapter. The orchestrator will treat these as read-only canonical inputs.

### Step 3 — fill in `CLAUDE.md`

Open `CLAUDE.md` (copied from `CLAUDE.md.template`) and replace the bracketed placeholders:

- `[SERIES_TITLE]` — the working title for the multi-book target series.
- `[SOURCE_DESCRIPTION]` — number of source books, word count, narrators.
- `[TARGET_BOOKS]` — how many books in the target series (3, 5, 10, etc.).
- `[NARRATORS]` — POV characters and their voice files.
- `[ARC_STRUCTURE]` — how the source maps to the target series.

### Step 4 — build the codex

Spend the first sessions extracting your worldbuilding into the codex. The orchestrator and the subagents read from the codex, not from your head. Anything not in the codex will be filled in by generic-fantasy defaults that you will then have to revise out.

Priorities:

1. `codex/voice/voice-profile.md` — extract per-narrator voice from the source. Use the template structure: arc-level register, narrative distance, sentence rhythm, cadence, lexicon, punctuation habits, recurring imagery, voice anchors (specific passages), voice anti-anchors (specific bad passages to fix).
2. `codex/voice/polish-targets.md` — list the source author's bad habits the rewrite must suppress.
3. `codex/INDEX.md` — start the entity index. Characters, locations, factions, magic, major events.
4. Per-entity files under `codex/characters/`, `codex/locations/`, etc. Use the templates.
5. `codex/beats/hard.md` — the spine of the series. Beats that must land on-page.
6. `codex/beats/soft.md` — default scaffold. Replaceable.
7. `codex/style/rules.md` — project-specific style rules beyond the AI-isms blacklist (e.g., material-absence rules for SFF settings, lexicon constraints).

### Step 5 — seed the kanban

Create scene cards in `kanban/pending/` using the `codex/templates/scene-card.md` template. The orchestrator drains these one at a time.

### Step 6 — drain

Use `/next-scene` for a single scene pass, or `/drain-queue` to run until the queue empties or the budget is hit. The pipeline:

1. Move card to `kanban/in-progress/`.
2. Orchestrator writes a scene brief.
3. Scene writer (Sonnet) drafts from the brief.
4. Scene reviewer (Opus) verdicts: clean / minor / significant / broken.
5. Loop on significant/broken (up to 3 Sonnet passes).
6. Codex update.
7. Git operator commits.

### Step 7 — polish and audit

Once every scene in a chapter is accepted, the chapter polisher (Opus) sweeps for aesthetic concerns. At end-of-book, `/codex-audit` checks continuity.

## Customisation notes

- The agent definitions reference Sonnet 4.6 and Opus 4.7 by default. Adjust to your available model tiers in the agent frontmatter and in `CLAUDE.md`.
- The git-haiku agent assumes Haiku 4.5 for the cheapest git operations. If you don't have Haiku, point it at Sonnet.
- The `/codex-audit` command is a stub by default. Expand it to match your continuity-checking needs.
- The bootstrap is opinionated about the per-scene pipeline (brief → draft → review → update → commit). If you want a different workflow, edit the slash commands and the agent definitions.

## License

Released as-is for use in your own novel-rewrite projects. The Skyland Chronicles content (codex, prose, source manuscripts) is not included.

## Provenance

Extracted from the Skyland Chronicles rewrite at <https://github.com/tokko/skyland-chronicles>. The original project rewrites a complete fantasy trilogy (~472k words) into a polished 10-book series.
