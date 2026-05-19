---
description: Run /next-scene in a loop until kanban/pending is empty, a scene exhausts its revision budget, or an unresolved continuity question requires user input. Honours canary, chapter polish, and book-end audit.
---

Drain the kanban. Loop the per-scene pipeline. Honour these stop conditions:

## Loop

1. Run the full per-scene pipeline (see `/next-scene`).
2. If `kanban/pending/` is empty, stop and report "queue drained" with the final STATUS.md.
3. If the scene that just ran was the canary (no `.canary-approved` at repo start), stop after committing and surface to the user. Do not loop.
4. If a scene exhausts the revision budget of 3, stop and surface the failing scene's drafts + review reports + your diagnosis. Do not loop.
5. If a continuity question arises mid-pipeline that the codex cannot answer, stop and ask the user with the question framed concretely. Do not invent.

## Chapter and book boundaries

When the scene just committed is the last scene of its chapter:

1. Read the chapter card (`books/book-N/chapter-MM/CHAPTER.md`).
2. Spawn the **chapter-polisher** subagent: `Agent(model: "opus", subagent_type: "chapter-polisher", prompt: <chapter prose + card + ai-isms + voice profile>)`.
3. Apply the polisher's edits. Commit via git-haiku with `book-N ch-MM: chapter polish`.

When the chapter just polished is the last chapter of a book:

1. Run `/codex-audit` for that book.
2. If the audit reports issues, stop and surface them. Do not start the next book.
3. If the audit passes, commit `book-N: book-level audit pass` via git-haiku and continue.

## Parallel mode

If the current chapter card's front-matter has `parallel: true`, the orchestrator MAY draft non-overlapping scenes in parallel:

- A pair of scenes is "non-overlapping" if they share no on-page character, no on-page location at the same in-world time, and neither establishes state that the other depends on.
- Spawn parallel scene-writer subagents (one per scene). Reviews and commits remain sequential per scene to preserve the codex update mandate.
- If a parallel draft requires codex state that the other parallel scene establishes, abort the parallel pair and fall back to sequential.

Default: parallel mode OFF unless the chapter card explicitly opts in.

## Reporting

Between scenes: brief one-line update (scene committed, beats landed, kanban counts).

When you stop: a clear status block — why you stopped, what's next, and (if applicable) the question or surface for user input.
