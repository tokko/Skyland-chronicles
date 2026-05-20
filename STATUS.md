# Status

**Branch**: main
**Generated**: 2026-05-20 (canary revision pass committed)

## Current state

- **Stage**: **CANARY PAUSE — REVISION + BRUTAL-JADED POLISH APPLIED.** Scene 01 has been rewritten on user canary feedback (commit `f823b6f`) and then surgically polished by the orchestrator to nudge the pre-Anjali Kyra voice harder per user arc-level guidance (this commit). The arc-level voice rule is now codified in `voice-profile.md §Kyra` and `kyra-zorantis/voice.md`. The orchestrator remains paused awaiting user sample-read. Drain resumes only when `.canary-approved` exists at the repo root.
- **Active scene**: none (canary committed; revision cycle closed)
- **Last completed scene**: book-1 / chapter-01 / scene-01 — *The Breach* (2,034 words after polish; 3 of 3 Sonnet revision budget used; orchestrator-level polish applied on top per user voice note)
- **Canary scene approved**: **no** — awaiting user signoff

## Revision history

| Pass | Verdict | Notes |
| ---- | ------- | ----- |
| draft-1 | `significant` | Continuity invention (Micah named as cartel ledger-keeper); voice drift toward spectral-Kyra; opening hook missed; em-dash overuse |
| draft-2 | `minor` | Two inline edits applied during promotion; voice work landed but Anton's graft and the cooking-women plot beat were both absent — surfaced for user sample-read |
| user canary feedback | — | Six canon clarifications (Anton's artificial muscle graft + active blood rage; cooking women near-naked & beaten if they pause; women heard the breach; glow-globes vs Powerstones; crystal-only ammunition with ambient-mana casing regeneration). Codex updated in commit `2bd69a6`. Card returned to in-progress for draft-3. |
| draft-3 | `clean` | All six canon corrections landed; all 11 Keep items preserved; voice steady; Kyra's jaded non-intervention is the moral spine; closing under the arch with Anton's graft-shoulder caught in glow-globe light behind |

## Canary read-out for the user

- **Prose**: `books/book-1/chapter-01/scene-01.md` (2,063 words)
- **Original brief**: `books/book-1/chapter-01/scene-01.brief.md`
- **Drafts archive**: `books/book-1/chapter-01/scene-01.drafts/` (draft-1 + review-1, draft-2 + review-2, draft-3 + review-3)

## Series shape

10 books in 3 arcs (3 + 4 + 3).

- Arc I — Kyra (source-book-1): Book 1 *Stardust*, Book 2, Book 3
- Arc II — Marissa (source-book-2): Book 4, Book 5, Book 6 *The Sacrifice*, Book 7 *Genocide*
- Arc III — Marissa + Barengar (source-book-3): Book 8 *The Apprentice*, Book 9 *The Demagogue*, Book 10 *Epitome*

## Kanban

| Pending | In-progress | Review | Done |
| ------- | ----------- | ------ | ---- |
| 3 | 0 | 0 | 1 |

- **Done**: book-1-ch-01-scene-01 (canary, this commit cycle)
- **Pending**: book-1-ch-01-scene-{02, 03, 04}

## Beats

| Tier | Landed | Total |
| ---- | ------ | ----- |
| Hard | 0 | 76 |
| Soft | 0 | 22 |

Scene-01 advances H-kyra-merc-life (now with the moral-jadedness layer on-page) and the ambient layer of H-the-magic-shortages. Neither beat lands yet; H-kyra-merc-life lands at end-of-scene-03 (Raynard / Ford payment); H-the-magic-shortages lands across ch.1–3.

## Codex changes this cycle

- **Commit `2bd69a6`** (canon clarifications from user feedback):
  - `anton/identity.md` — artificial muscle graft as specific mechanism; failure modes (burnout / cardiac); bloodlust as known side-effect
  - `materialised-magic.md` — new "Skylander firearms" section: crystal shot only, mechanical firing, casing regeneration from ambient mana first / Powerstone second
  - `skylands-undercity.md` — glow globes vs Powerstones distinction
  - `stardust-cartels.md` — forced retention, near-naked labour policy, beatings for pausing
- **This commit** (state-log updates after draft-3):
  - `kyra-zorantis/history.md` scene-01 row revised — Kyra's deliberate non-intervention now recorded
  - `anton/history.md` scene-01 row revised — Anton in active graft-flood, killed corridor + kneecapped guards + unknown number of cooking-floor women
  - `skylands-undercity.md` state-log row revised — cooking-floor women casualties acknowledged
  - `stardust-cartels.md` state-log row revised — labour pool body count noted

## Recent commits

```
(pending: book-1 ch-01 scene-01: the breach (canary revision -- draft-3, clean))
2bd69a6 codex: clarify Anton's graft, Skylander firearms, glow-globes, cartel labour policy
c455f71 book-1 ch-01 scene-01: the breach (canary)
d944ed1 kanban: book-1-ch-01-scene-01 -> in-progress
e11f426 kanban: seed scene cards for book 1 chapter 1 (canary)
c6e89ee books/book-1: chapter outline (11 chapters)
```

## Next action

**User to read `books/book-1/chapter-01/scene-01.md` and either**:
1. **Approve** — `touch .canary-approved` at the repo root; the orchestrator resumes drain on scene-02.
2. **Approve with forward-applying notes** — voice/style guidance to fold into the polish-targets / voice profile for scene-02 onward.
3. **Reject** — revision budget for scene-01 is now exhausted (3/3 used). Further revision requires explicit instruction; the orchestrator does not auto-loop past the budget.

---

_This file is regenerated by the orchestrator on every scene commit._
