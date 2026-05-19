---
description: Audit the codex for internal consistency at a chapter or book boundary. Pass/fail report only — does not auto-fix. Used at book-end before progressing.
---

Spawn an audit subagent: `Agent(model: "opus", subagent_type: "general-purpose", prompt: <below>)`.

## What the audit checks

For the chapter or book identified in the user's invocation (default: the most recently completed book):

1. **Codex coverage.** Every character who appears in any scene of the audited range has a row in their `history.md` state log for that scene. Same for every location entered. Same for magic uses. Same for faction actions.
2. **INDEX coverage.** Every file under `codex/characters/`, `codex/locations/`, `codex/factions/`, `codex/magic/`, `codex/timeline/events/` is listed in `codex/INDEX.md`. Every INDEX row resolves to an existing file.
3. **Beat landing.** Every hard beat assigned to the audited range is marked `landed (scene: ...)` with a real scene reference. No hard beat for the range is still `pending`. Soft beats may be `pending` or `dropped`; the audit notes the count but does not fail on soft.
4. **Timeline consistency.** Events in `codex/timeline/master.md` are in chronological order. No event A occurs before an event B that establishes a precondition for A.
5. **Knowledge consistency.** Walk every character's knowledge column in history.md. No row claims a character "knows X" before the row where they first learned X. No row claims they "don't know X" after a row where they were shown it.
6. **Location consistency.** A character's location at scene N's end must match their location at scene N+1's start unless an intervening row explains the move.
7. **Forbidden mentions.** No scene references a fact whose source entity has it listed under "Forbidden mentions" with an "until scene M" gate, where M is later than the referencing scene.
8. **Voice continuity.** Sample 5 random dialog lines per major character across the audited range. Each line should be identifiable as that character without the tag. Flag any line that fails this test.

## Output

A pass/fail report. On fail, list every issue with:
- File path
- Scene reference
- The specific contradiction
- The fix the orchestrator should apply (never auto-fix in the audit)

Save the report to `audits/book-N-audit-<timestamp>.md` and surface its summary to the user. The orchestrator does not proceed past a failed audit without explicit user direction.
