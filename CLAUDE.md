# Skyland Chronicles — Rewrite Operations Manual

This repository restructures and polishes three source manuscripts — a complete trilogy by the same author, totalling ~472k words — into a planned multi-book series. The target book count is determined by natural arc breakpoints during planning, not fixed to three. Every agent — orchestrator, writer, reviewer, polisher, git operator — follows the protocol below. Read this file and the auto-included context (listed at the bottom) at the start of every turn.

## Source corpus

Three source novels under `source/`, in narrative order:

- **`source/book-1-the-skyland-chronicles.md`** — *The Skyland Chronicles*. 205k words, 53 chapters. First-person POV: **Kyra Zorantis** (Marissa's adoptive mother). Origin story — Stardust raid, Utopeia's rise and fall, the Battle of Dun Traelak, Kyra's death-to-liche transition, the dragon-borne memory-gem delivered to young Marissa, Marissa's revenge oath.
- **`source/book-2-the-last-skylander.md`** — *The Skyland Chronicles: The Last Skylander*. 132k words, 28 chapters. First-person POV: **Marissa Zorantis** (alias Mary Laier). The infiltration arc — Gereon ball, Groundlands embedded, ley-line opened, savages encountered, Valia falls, the genocide, departure south.
- **`source/book-3-epitome.md`** — *Epitome*. 134k words, 20 chapters. Alternating POVs: **Marissa Zorantis** and **Barengar** (new POV). Picks up half a year after the destruction of the Groundlands; the closing frame is a unified AI/spirit narrator ("I am the Epitome of Morality"). Resolves the savages-as-engineered-precursors thread.

The `.mobi` originals also live in `source/` as immutable canonical inputs. Source files are read-only.

## Mission

Take the three source manuscripts, build a complete story bible (codex) spanning all three, break the continuity into a multi-book target series with the user's approval, then rewrite scene-by-scene against a beat-driven plan. Preserve the source author's voice across all three narrators (Kyra, Marissa, Barengar — each with their own voice file under `codex/voice/`). Suppress repetition, staccato cadence, fixation on action and worldbuilding minutiae, and the common AI-isms catalogued in `codex/style/ai-isms.md`. Each character must be distinguishable from a single line of dialog.

## Roles and Models

| Role              | Model                       | Spawn pattern                                          | Purpose                                                                  |
| ----------------- | --------------------------- | ------------------------------------------------------ | ------------------------------------------------------------------------ |
| Orchestrator      | Opus 4.7 (1M context)       | This top-level agent.                                  | Plans, briefs, routes, decides verdicts, updates codex, runs the queue.  |
| Scene writer     | Sonnet 4.6                  | `Agent(model: "sonnet", ...)`                          | Drafts and revises one scene from a brief.                               |
| Scene reviewer   | Opus 4.7                    | `Agent(model: "opus", ...)`                            | Per-scene continuity and beat gate. Returns verdict + revise-brief.      |
| Chapter polisher | Opus 4.7                    | `Agent(model: "opus", ...)`                            | End-of-chapter aesthetic sweep. Runs once all scenes in a chapter pass.  |
| Git operator     | Haiku 4.5                   | `Agent(model: "haiku", subagent_type: "general-purpose", ...)` | All git operations. Never run `git` from the orchestrator's Bash. |

Subagent definitions live in `.claude/agents/`. They document expected inputs, outputs, and prompt scaffolds. When the Agent tool is called, the `model` parameter overrides any frontmatter; always pass it explicitly.

## Per-scene pipeline

For each scene card in `kanban/pending/`:

1. **Move card** to `kanban/in-progress/` via git operator.
2. **Brief**: orchestrator fills `codex/templates/scene-brief.md` with:
   - Codex slice: characters present (current state from history.md), location current state, factions involved, magic in play, prior events the scene reacts to.
   - Previous 2k words of accepted prose from the rolling tail.
   - Scene goal (external + internal), characters and their individual goals entering and exiting, what MUST be resolved, what must NOT be resolved.
   - Hard and soft beats this scene is responsible for.
   - Voice pointer (`codex/voice/voice-profile.md`), polish targets (`codex/voice/polish-targets.md`), AI-ism blacklist (`codex/style/ai-isms.md`), per-character voice files for any speakers.
3. **Draft**: spawn scene writer (Sonnet) with the brief. Output: scene prose only.
4. **Review**: spawn scene reviewer (Opus) with the draft + brief + relevant codex slice. Verdict ∈ {`clean`, `minor`, `significant`, `broken`}, plus either a diff (for `minor`) or a revise-brief (for `significant`/`broken`).
   - `clean` — accept as-is.
   - `minor` — reviewer's inline edits applied; accept.
   - `significant` — spawn fresh scene writer (Sonnet) with the revise-brief (keep / fix / forbid lists). Loop back to step 4.
   - `broken` — spawn fresh scene writer (Sonnet) for full rewrite from a stricter brief. Loop back to step 4.
5. **Codex update**: orchestrator updates character history (location, knowledge, injuries, possessions, relationships), affected location files, faction state, `codex/timeline/master.md`, and `codex/INDEX.md` if new entities appeared. This step is mandatory and is the primary anti-cascade defense.
6. **Commit**: spawn git operator (Haiku) to stage the scene file, brief, codex updates, and kanban card move (`in-progress` → `done`). Commit message format: `book-N ch-MM scene-PP: <one-line summary>`.

## Per-chapter polish

When every scene in a chapter has been accepted:

1. Spawn chapter polisher (Opus) with the full chapter prose and the chapter card.
2. Polisher sweeps non-cascading concerns: AI-isms, rhythm, micro-prose, dialog distinctiveness, transitions between scenes, opening hook, closing hand-off.
3. Polished chapter is committed by the git operator as `book-N ch-MM: chapter polish`.

## Book-end audit

When the last chapter of a book has been polished, run `/codex-audit` for that book before starting the next one. The audit verifies:

- Every character / location / magic use / faction action that appeared has a codex history row.
- `codex/INDEX.md` is complete and consistent with the files under `codex/`.
- Every hard beat assigned to the book is `landed` with a real scene reference.
- The timeline has no contradictions; character knowledge tracks are monotonic; locations are consistent across scene boundaries.
- Forbidden mentions have not leaked early.
- Major characters' voices remain distinct from a line of dialog across the book.

A failing audit blocks progress until the issues are resolved (orchestrator escalates to user).

## Pipeline parameters

- **Revision budget per scene: 3.** Counting the first draft, a scene may go through at most 3 Sonnet passes. If the 3rd review still returns `significant` or `broken`, the orchestrator stops, saves all drafts and review reports, and surfaces the failing scene to the user with a diagnosis. No further auto-loops on that scene.
- **Canary scene.** The first ever scene committed on this branch is the canary. After the codex update and the git-haiku commit, the orchestrator pauses the queue and surfaces the prose to the user for a sample-read. The drain resumes only after the user signs off — signalled by the presence of `.canary-approved` at the repo root.
- **Parallel scene drafting.** Off by default. A chapter card may set `parallel: true` in its front-matter; when true, non-overlapping scenes in that chapter (no shared on-page character / location / time / state dependency) may be drafted by parallel Sonnet spawns. Review and commit remain sequential.

## Resume protocol

Sessions are ephemeral. Any future session must be able to pick up cleanly. To achieve this:

- `STATUS.md` at the repo root is regenerated by `scripts/regen-status.sh` as part of every codex-update step. It contains: branch, active scene, last completed scene, canary status, kanban counts, beats burndown, recent commits.
- A fresh session reads `CLAUDE.md` (this file, auto-loaded), the auto-included context below, and `STATUS.md` — and from those three it knows exactly what to do next.
- The git log is the authoritative record of progress; STATUS.md is a convenience view.

## Beat discipline

- **Hard beats** are in `codex/beats/hard.md`. They are the spine. Every hard beat must be reached, on-page, in logical and naturally-motivated fashion. A hard beat may arrive earlier or later than originally outlined; it may not be skipped, off-screened, or summarized.
- **Soft beats** are in `codex/beats/soft.md`. They are the default scaffold. The orchestrator may drop, replace, reorder, or invent soft beats when it serves pacing.
- Each scene card declares which beats it advances and which it lands. A hard beat is "landed" only when the reviewer marks it landed and the codex is updated.
- A hard beat may not be downgraded to soft. Soft beats may be promoted to hard with the user's explicit approval.

## Codex update mandate

The codex is the source of continuity truth. No scene is committed until:

- Every character who appeared has their `history.md` ticked forward: location at scene end, what they now know, what changed in them, any injuries / acquisitions / losses, who they last spoke to.
- Every location that appeared reflects the state change wrought in the scene.
- Faction status, magic costs / consequences, and timeline are updated.
- `codex/INDEX.md` lists any new entities and reflects status changes.

If a continuity question arises mid-scene that the codex cannot answer, the scene is paused and the orchestrator resolves it (escalate to the user if it implies a beat-level decision) before the writer continues.

## Voice rules

The narrative voice is extracted from the source manuscript and codified in `codex/voice/voice-profile.md` (rhythm, sentence-length distribution, signature constructions, lexicon, punctuation habits, narrative distance, recurring imagery). Writers use that voice but suppress the bad habits listed in `codex/voice/polish-targets.md`:

- Repetition (word, phrase, sentence-shape).
- Staccato cadence — strings of short clipped sentences without variation.
- Fixation on the minutiae of action ("he lifted his left hand, then his right, then placed both on the table") and worldbuilding ("the kettle was copper, with a brass handle and three rivets").

Each speaking character has `codex/characters/<slug>/voice.md` documenting idiolect, register, tics, what they avoid saying, syntax under stress. Dialog must distinguish speakers from a single line.

## AI-ism prohibition

`codex/style/ai-isms.md` is the live blacklist. Scene writers receive it in their brief. Reviewers enforce it. When tempted toward an elevated abstraction, prefer the concrete and surprising instead.

## Rewrite scope

**Expand and polish, preserve the source voice.** Hard beats and major character arcs stay. Soft beats may shift. New scenes may be inserted to fix pacing. Source prose is reference material, not output: every scene is re-cast in the polished voice rather than copy-pasted.

## Layout

```
source/                            # Three source manuscripts + .mobi originals (input only — never edited)
  book-1-the-skyland-chronicles.md
  book-2-the-last-skylander.md
  book-3-epitome.md
codex/                             # Story bible
  INDEX.md                         # Entity + status index (auto-included)
  README.md                        # Format spec for codex files
  characters/<slug>/identity.md, voice.md, history.md
  locations/<slug>.md
  factions/<slug>.md
  magic/system.md, <element>.md
  timeline/master.md, events/<slug>.md
  beats/hard.md, soft.md, book-N.md
  voice/voice-profile.md, polish-targets.md
  style/ai-isms.md, rules.md
  templates/                       # character.md, location.md, scene-brief.md, scene-card.md, ...
books/
  book-N/BOOK.md
  book-N/chapter-MM/CHAPTER.md
  book-N/chapter-MM/scene-PP.md           # accepted prose
  book-N/chapter-MM/scene-PP.brief.md     # brief that produced it
  book-N/chapter-MM/scene-PP.drafts/      # archived drafts + reviewer notes
kanban/
  pending/                         # scene cards waiting
  in-progress/                     # active
  review/                          # awaiting reviewer verdict
  done/                            # accepted and committed
.claude/agents/                    # subagent definitions
.claude/commands/                  # slash commands (/next-scene, /drain-queue, /status, /codex-audit)
scripts/                           # regen-status.sh and other tooling
mkdocs.yml + .github/workflows/    # wiki built and deployed to GitHub Pages
STATUS.md                          # live snapshot, regenerated per scene commit
```

## Slash commands

- `/next-scene` — one pass of the per-scene pipeline. Honours canary, revision budget, codex update.
- `/drain-queue` — loop `/next-scene` until queue empty, revision budget hit, or user input required. Triggers per-chapter polish and per-book audit at boundaries.
- `/status` — refreshes STATUS.md and prints it with a next-action recommendation.
- `/codex-audit` — chapter or book-end audit. Pass/fail; never auto-fixes.

## Auto-included context

The following files are loaded every turn:

@codex/INDEX.md
@codex/style/ai-isms.md
@codex/voice/voice-profile.md
@codex/voice/polish-targets.md
@codex/beats/hard.md

## Guardrails

- **Never** run `git` from the orchestrator's Bash. Always spawn the git operator (Haiku).
- **Never** accept a scene on the first pass without going through the reviewer.
- **Never** commit a scene without the corresponding codex update.
- **Never** invent characters, locations, or factions not in the source manuscript or pre-approved expansion plan. New entities require an INDEX.md entry first.
- **Never** collapse a hard beat into a soft one, skip it, or off-screen it.
- **Never** narrate the model identifier (e.g. `claude-opus-4-7[1m]`) into committed files, commit messages, or PR text.
- **Never** push to a branch other than `main` without explicit user approval.
- **Never** start the queue drain before the canary scene has been approved (presence of `.canary-approved`).
- **Never** loop more than 3 Sonnet passes on a single scene; surface to user instead.
- **Never** start a new book before the previous book's `/codex-audit` has passed.
- **Always** read the auto-included context above before composing a brief or making a routing decision.
- **Always** run `scripts/regen-status.sh` as part of the codex-update step before each scene commit.
