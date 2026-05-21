# Status

**Branch**: main
**Generated**: 2026-05-20 (canary revision pass committed)

## Current state

- **Stage**: **DRAINING — scene-02 split into two scenes; both promoted.** User canary feedback after the draft-3 promotion identified that scene-02 had grown to 3,658 words (over the hard-beat ceiling), the writer had introduced a "synth-metal" material that doesn't exist, the dispenser-room reload logic was broken (mid-combat manual reloads instead of using backup/magic/sword), the surrendered upper-watch guard was wasted on bullets, Anton's death geometry was muddled, and a list of line-level issues (Micah-free, kneecap-free, etc) carried forward. Per user direction, **scene-02 was split** into two scenes: scene-02 (arch → antechamber → cooking-rig hall → curing room) and scene-03 (stairs → upper-corridor brawl → window). Both written via orchestrator-level edits on top of the existing prose (no new Sonnet pass needed); all flagged issues addressed. Chapter outline updated 4 → 5 scenes. Existing scene-03 (Raynard) and scene-04 (Ride home) cards renumbered up.

**Curing-room canon expansion (this turn)**: per user direction, Stardust manufacture is canonically a two-stage process — cooking (chemistry, no mana, no dispenser) and curing (cooked precursor bathed in a thick ambient mana field for hours, which gives the drug its potency). The cartel's senior room IS the curing room: dispenser + illegal ley-line tap + product + baked workers (chronic-mana-exposed; faint violet capillary tinge under the eyes, hazed iris, flat affect) + bayonet team + cartel mage. This is a deliberate expansion beyond the source (the source's single Stardust scene has chemistry-only cooks, no curing step, no mana-affected workers) but is consistent with the source's Robin-Hoods-mana-trafficking subplot. Flagged in `stardust-cartels.md`.

**Magesense + personal shield canon (this turn)**: Kyra's pre-Grasax magesense is active, deliberate, line-of-sight, magic-only, qualitative — she has to reach for it; she can sense Powerstones, shields, active spells, and the structure of a lock-enchantment, but not bodies or heartbeats. Her gauntlet personal shield is Kendall-built, Powerstone-fed, deliberate-deployment, reshapeable; reliably stops bullets / shrapnel / blast fronts; less reliable against magic (must be angled to glance, not absorb). Both mechanics now in `magic/system.md`; both used on-page in scene-02 (curing-room mage exchange) and scene-01 (cooking-floor pillar guard's smoothbore deflect + magesense ping before the cooking-floor door).

- **Active scene**: none — scene-01 polished, scene-02 fully rewritten with curing-room climax + cartel mage, scene-03 untouched this turn
- **Last completed scene**: book-1 / chapter-01 / scene-02 — *The Shopfloor* (2,882 words; arch → antechamber → cooking-rig hall → curing room → passage; mage killed on-page; gauntlet shield engaged for the mage exchange; magesense use confirmed; baked workers established; one curer killed by smoothbore-discharge crossfire)
- **Canary scene approved**: **yes** — `.canary-approved` present at repo root (committed in `530cc46`)
- **A/B test outcome**: **abandoned**. The harness did not have access to `claude-3-5-sonnet-20241022`, and a session-mid re-point to `claude-3-7-sonnet-20250219` failed because the harness caches agent frontmatter at session start. The Sonnet 4.6 draft-1-A was accepted as draft-1 and run through the standard reviewer. The scene-writer default stays at Sonnet 4.6. Future sessions may retry the A/B on a later scene if model access is sorted.

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

## Pending: model A/B test on scene-02

Per user direction, scene-02 of book-1 chapter-01 is the one-shot prose-quality A/B test between Sonnet 4.6 (current default) and Sonnet 3.5 (`claude-3-5-sonnet-20241022`). When scene-02 dispatches:

- Spawn both writers in parallel against the same brief: `scene-writer` (4.6) and `scene-writer-3-5` (3.5). Output paths `draft-1-A.md` and `draft-1-B.md`; the orchestrator records the A/B → model mapping in a side file the reviewer cannot see.
- Reviewer reads both blind, scores both, picks a winner.
- Winner becomes `draft-1.md` and continues through the standard pipeline. Loser is archived.
- After scene-02 the winning model is locked in as the scene-writer for all subsequent scenes; the `.claude/agents/scene-writer.md` frontmatter (or which sibling agent is invoked) is updated accordingly and the decision noted in this STATUS file.
- The A/B runs once, on scene-02 only, and is not repeated.

The `scene-writer-3-5` agent is already in place; the protocol is documented in `CLAUDE.md` under Pipeline parameters.

## Next action

**User to read `books/book-1/chapter-01/scene-01.md` and either**:
1. **Approve** — `touch .canary-approved` at the repo root; the orchestrator resumes drain on scene-02 with the A/B test.
2. **Approve with forward-applying notes** — voice/style guidance to fold into the polish-targets / voice profile for scene-02 onward.
3. **Reject** — revision budget for scene-01 is now exhausted (3/3 used). Further revision requires explicit instruction; the orchestrator does not auto-loop past the budget.

---

_This file is regenerated by the orchestrator on every scene commit._
