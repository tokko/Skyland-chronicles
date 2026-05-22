---
description: Run the per-scene pipeline once. Pulls the top card from kanban/pending, drafts via Sonnet, reviews via Opus, applies the verdict, updates the codex, regenerates STATUS.md, and commits via Haiku.
---

You are the orchestrator running one cycle of the per-scene pipeline. Follow `CLAUDE.md` exactly. Do not improvise around the pipeline; if the codex cannot answer a continuity question, stop and surface it.

## Steps

1. Read `STATUS.md`, `codex/INDEX.md`, `codex/beats/hard.md`, `codex/beats/soft.md`, `codex/voice/voice-profile.md`, `codex/voice/polish-targets.md`, `codex/style/ai-isms.md`, `codex/style/rules.md`.

2. List `kanban/pending/`. If empty, report "queue drained" and stop.

3. Take the alphabetically first card (lexicographic sort by filename `book-N_ch-MM_scene-PP.md`). Spawn the **git-haiku** agent to `git mv` the card to `kanban/in-progress/` and commit `kanban: <card> → in-progress`.

4. Read the card. Open every codex file it references in front-matter or body: characters present (identity, voice, history), location current state, factions in play, magic in play, prior events. Collect the rolling 2k word tail by reading the last 1–2 accepted scene files in the same book (in chapter order).

5. Assemble the full scene brief using `codex/templates/scene-brief.md` as the shape. Paste codex slices verbatim into the brief — do not summarize them. Save the brief to `books/book-N/chapter-MM/scene-PP.brief.md`.

6. Spawn the **scene-writer** subagent: `Agent(model: "sonnet", subagent_type: "scene-writer", prompt: <full brief>)`. Wait for the draft.

7. Save the draft to `books/book-N/chapter-MM/scene-PP.drafts/draft-1.md`.

8. Spawn the **scene-reviewer** subagent: `Agent(model: "opus", subagent_type: "scene-reviewer", prompt: <draft + brief + relevant codex slice>)`. Wait for the review report. Save it to `books/book-N/chapter-MM/scene-PP.drafts/review-1.md`.

9. Apply the verdict:
   - **`clean`** — copy the draft to `books/book-N/chapter-MM/scene-PP.md`.
   - **`minor`** — apply the reviewer's inline edits, save the result as `scene-PP.md`, keep the diff under `scene-PP.drafts/`.
   - **`significant`** — spawn a fresh scene-writer with the reviewer's revise-brief (Keep / Fix / Forbid). Save as `draft-N.md`. Re-review. **Loop counts against the revision budget of 3.**
   - **`broken`** — spawn a fresh scene-writer with the reviewer's rewrite brief. Save as `draft-N.md`. Re-review. **Loop counts against the revision budget of 3.**

10. If the revision budget (3 total Sonnet passes including the first) is exhausted and the verdict is still `significant` or `broken`: stop, save all drafts and review reports, and surface to the user with: the latest draft, the reviewer's final verdict, and your assessment of why it isn't converging. Do not commit the scene file.

11. Once accepted: update the codex.
    - For every character present: append a row to their `codex/characters/<slug>/history.md` state log (location at scene end, knowledge gained/lost, injuries, possessions, relationships changed).
    - For every location entered: append a row to the location's state-history section.
    - For every magic use: append a row to the magic file's in-text references table with cost paid.
    - For every faction action: update faction's state history.
    - For every event introduced or referenced: update `codex/timeline/master.md`.
    - For every new entity: create the file from the relevant template and add the row to `codex/INDEX.md`.
    - For every hard or soft beat landed in this scene: update its status in `codex/beats/hard.md` or `soft.md` to `landed (scene: book-N/ch-MM/scene-PP)`.
    - Update the card's front-matter `status: done`.

12. Run `scripts/regen-status.sh` to update `STATUS.md`.

13. Spawn the **git-haiku** agent to: `git mv` the card from `kanban/in-progress/` to `kanban/done/`, stage `scene-PP.md`, `scene-PP.brief.md`, `scene-PP.drafts/`, every codex file touched, `STATUS.md`, and commit with: `book-N ch-MM scene-PP: <one-line summary>`. Then push.

14. **Canary check.** If `.canary-approved` does NOT exist at the repo root, this was the first ever scene. Surface the scene's prose to the user with a sample-read request. Do NOT start the next scene. When the user approves, the orchestrator (or the user) creates `.canary-approved` (empty marker file) and the queue can resume.

15. Report a concise summary: scene committed, beats landed, codex updates made, commit hash, next pending card.

## Hard rules

- Never accept a draft on the first pass without a reviewer pass.
- Never commit without the codex update step.
- Never invent entities not in the codex or pre-approved expansion list.
- Never exceed the revision budget of 3 without surfacing to the user.
- Never run `git` directly; always go through the git-haiku agent.
