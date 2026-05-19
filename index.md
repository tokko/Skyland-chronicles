# Skyland Chronicles — Wiki

A living codex and rewrite log for the Skyland Chronicles trilogy. This site is generated from the repository on every push to `main`.

## Where to start

- **[Status](STATUS.md)** — what's in flight right now, kanban counts, beats burndown.
- **[Codex Index](codex/INDEX.md)** — every character, location, faction, magic element, and event tracked by the story bible.
- **[Hard beats](codex/beats/hard.md)** — the trilogy's spine.
- **[Voice profile](codex/voice/voice-profile.md)** — the narrative voice the rewrite inhabits.
- **[AI-isms blacklist](codex/style/ai-isms.md)** — patterns the rewrite forbids.

## Reading the books

The accepted prose is under [`books/`](books/), one folder per book and chapter. Each accepted scene lives at `books/book-N/chapter-MM/scene-PP.md`.

## How to read the codex

Every entity is a Markdown file with YAML front-matter for machine-readable metadata and a body of structured sections for the human read. The [codex format spec](codex/README.md) documents conventions.

## Pipeline

See the [operations manual](CLAUDE.md) for the full per-scene and per-chapter pipeline.
