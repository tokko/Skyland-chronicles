# Scene Review Report — book-<N> / chapter-<MM> / scene-<PP>

Format the scene reviewer (Opus) returns to the orchestrator. One report per draft.

## Verdict

`clean` | `minor` | `significant` | `broken`

## Summary

One paragraph. What the draft does well, what it gets wrong, what the verdict reflects.

## Beat audit

| Beat ID         | Required? | Landed?      | Evidence (quote / line)         |
| --------------- | --------- | ------------ | ------------------------------- |
| <HARD-BEAT-ID>  | hard      | yes/no/partial |                                |

## Continuity audit

Walk every character present, every location, every magic use, every faction reference. Flag any contradiction with the codex.

- Character <slug>: <ok / issue>
- Location <slug>: <ok / issue>
- Magic <slug>: <ok / issue>
- Faction <slug>: <ok / issue>
- Timeline: <ok / issue>

## Resolution audit

- Must-resolve items present? <yes/no, with evidence>
- Must-NOT-resolve items leaked? <yes/no, with evidence>

## Voice audit

- Narrative voice matches `voice-profile.md`? <ok / issues>
- Dialog distinctiveness per character? <ok / issues>
- Polish-target violations (repetition / staccato / minutiae): <list with line refs>
- AI-isms detected: <list with line refs, citing entries in ai-isms.md>

## Routing payload

### If `minor`
Inline edits to apply, as a unified diff or before/after pairs.

### If `significant`
Revise-brief for the next Sonnet pass:
- **Keep**: what works and must stay
- **Fix**: what's wrong and how to recast it
- **Forbid**: traps to avoid in the revision

### If `broken`
Rewrite brief: what went so wrong that we restart. New emphases, new framing, what to drop entirely.

## Codex update suggestions

Lines the orchestrator should add to character histories, location state logs, timeline, etc., based on what the scene establishes.
