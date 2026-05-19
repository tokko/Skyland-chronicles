---
description: Print the current state of the rewrite — stage, active scene, kanban counts, beats burndown, recent commits, and the recommended next action.
---

1. Run `scripts/regen-status.sh` to refresh `STATUS.md`.
2. Read `STATUS.md` and print it verbatim.
3. Add a one-paragraph "Next action" recommendation based on the state:
   - If pending is non-zero and canary is approved → suggest `/drain-queue`.
   - If pending is non-zero and canary is NOT approved → suggest `/next-scene` (for the canary).
   - If pending is zero and chapters are unpolished → suggest spawning the chapter-polisher.
   - If a book is complete → suggest `/codex-audit`.
   - If pre-ingest → suggest awaiting the manuscript drop.

Do not spawn any subagents. Do not write to anything other than STATUS.md (via the script).
