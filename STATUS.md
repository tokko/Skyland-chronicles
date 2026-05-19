# Status

**Branch**: main
**Generated**: 2026-05-19 (10-book restructure applied)

## Current state

- **Stage**: Per-book outlines complete for the 10-book series. Awaiting chapter outlines for Book 1.
- **Active scene**: none
- **Last completed scene**: none
- **Canary scene approved**: no (first scene committed will be surfaced for sample-read)

## Series shape

10 books in 3 arcs (3 + 4 + 3). Arc II grew from 3 to 4 books this turn to accommodate the climactic density of source-book-2 ch.21–28.

- Arc I — Kyra (source-book-1): Book 1 *Stardust*, Book 2, Book 3
- Arc II — Marissa (source-book-2): Book 4, Book 5, Book 6 *The Sacrifice*, Book 7 *Genocide*
- Arc III — Marissa + Barengar (source-book-3): Book 8 *The Apprentice*, Book 9 *The Demagogue*, Book 10 *Epitome*

## Recent decisions (user-locked, 2026-05-19)

1. **9-book → 10-book restructure**: Old Book 6 (16 beats, source-book-2 ch.21–28) was too dense. Split into new Book 6 *The Sacrifice* (source ch.21–24, 6 hard beats) and new Book 7 *Genocide* (source ch.25–28, 10 hard beats). Arc II is now 4 books. Old Books 7/8/9 renumbered to 8/9/10.
2. **H-mother-shade-farewell mechanic locked**: Kyra deliberately sacrifices herself into the Epitome's substrate as a moral vote — not as a passive backup. Her installed bias steers Epitome's first major orbital decision toward the Bizhjerai. The lever is also why Marissa refuses to shut Epitome down (her mother is now inside by her own choice), which earns Barengar's killing-stroke.
3. **Raynard execution closes Book 1**: source-book-1 ch.17 is the structural break for Book 1. Added as soft beat `S-raynard-executed`.
4. **Working title *The Apprentice* attaches to new Book 8** (the old Book 7 after renumber).

## Kanban

| Pending | In-progress | Review | Done |
| ------- | ----------- | ------ | ---- |
| 0 | 0 | 0 | 0 |

## Beats

| Tier | Landed | Total |
| ---- | ------ | ----- |
| Hard | 0 | 76 |
| Soft | 0 | 22 |

## Beat distribution per book (hard beats)

| Book | Hard beats | Arc | Notes |
| ---- | ---------- | --- | ----- |
| 1 | 7 | I (Kyra) | canary book |
| 2 | 3 | I (Kyra) | |
| 3 | 7 | I (Kyra) | the Fall of the Skylands |
| 4 | 9 | II (Marissa) | infiltration arc opens |
| 5 | 11 | II (Marissa) | the box, the recogniser, the threesome |
| 6 | 6 | II (Marissa) | *The Sacrifice* — savage trap, Valia falls, plan rigs |
| 7 | 10 | II (Marissa) | *Genocide* — plan executes, sweep, Dun Traelak epilogue |
| 8 | 10 | III (Marissa + Barengar) | *The Apprentice* — 25-year leap, Collegium, Oath |
| 9 | 4 | III (Marissa + Barengar) | *The Demagogue* — Zandor reveal, Kendall dies, Jani |
| 10 | 9 | III (Marissa + Barengar + Epitome) | *Epitome* — terminal book |

Sum: 76. Matches `codex/beats/hard.md`.

## Recent commits

```
c6e89ee codex/books: scaffold per-book outlines for the 9-book series
2c71982 codex: cleanup sweep — corrections, INDEX merge, beats populated
d9a50ee codex: extend entities to full three-book corpus
d3adcf9 codex: extend voice profiles and beats to full three-book corpus
2ee0bae codex: extend timeline + events to full three-book corpus
f9a7f73 source: ingest full three-book trilogy (~472k words)
8b40c62 codex: extract timeline and major events from manuscript
2833dec Add files via upload
```

## Next action

Scaffold chapter outlines for Book 1 (*Stardust*). `codex/beats/book-1.md` has 7 hard beats + 3 soft beats across source-book-1 ch.1–17. Chapter outline produces book-level scene cards in `books/book-1/chapter-MM/CHAPTER.md` and seeds `kanban/pending/`. Book 1 is the canary book; the first scene committed will pause the queue for user sample-read.

---

_This file is regenerated when the orchestrator updates the codex. It is the resume-protocol entry point alongside CLAUDE.md and the auto-included context._
