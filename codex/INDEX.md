# Codex Index

The live catalogue of every entity tracked by the codex. Read this file every turn — it tells the orchestrator and subagents what exists, what state it is in, and where to look up details.

This file is updated at the same time as any scene commit that adds or alters an entity.

## How to read

Each entry: `[type] slug — short tag — status — file path`.

- **type**: character | location | faction | magic | event | artifact
- **slug**: lowercase-hyphenated identifier used in cross-references
- **short tag**: one-line description so the orchestrator can decide whether the entity is relevant without opening the file
- **status**: alive/dead, intact/destroyed, active/dormant, known/hidden, etc.
- **file path**: where the full entry lives

## Last updated

- Last scene committed: _(none yet — manuscript not ingested)_
- Last codex sweep: _(initial scaffold)_

---

## Characters

_(populated after manuscript ingest)_

## Locations

_(populated after manuscript ingest)_

## Factions

_(populated after manuscript ingest)_

## Magic system

_(populated after manuscript ingest — see `codex/magic/system.md` once present)_

## Major events

_(populated after manuscript ingest — see `codex/timeline/master.md` once present)_

## Artifacts and motifs

_(populated as needed)_

---

## Books and chapters (kanban summary)

| Book | Chapter | Scenes pending | Scenes in-progress | Scenes done |
| ---- | ------- | -------------- | ------------------ | ----------- |
| _(populated after trilogy split is approved)_ |

## Open continuity questions

_(any unresolved ambiguity from the source manuscript that needs author input)_
