# Codex Format Spec

The codex is the source of continuity truth for the rewrite. Every subagent reads from it; no scene is committed until the codex reflects the scene's outcome.

## Top-level layout

```
codex/
  INDEX.md                  # Entity catalogue with status (auto-included every turn)
  README.md                 # This file
  characters/<slug>/
    identity.md             # Static identity: who they are, physical, voice, goals, relationships
    voice.md                # Idiolect, register, tics, syntax under stress (one per speaking character)
    history.md              # State-log: per-scene tick-forward (location, knowledge, injuries, possessions)
  locations/<slug>.md       # Location identity + state-log
  factions/<slug>.md        # Faction identity + status + member roster
  magic/
    system.md               # Universal magic-system rules
    <element>.md            # Per-mechanic / per-school files
  timeline/
    master.md               # Chronological event line
    events/<slug>.md        # Per-event files
  beats/
    hard.md                 # Spine; auto-included every turn
    soft.md                 # Default scaffold
    book-N.md               # Per-book beat plan
  voice/
    voice-profile.md        # Per-narrator voice extract (auto-included)
    polish-targets.md       # Author bad habits to suppress (auto-included)
  style/
    ai-isms.md              # AI-isms blacklist (auto-included)
    rules.md                # Project-specific style rules
  templates/                # Templates for new entity files and scene briefs/cards
```

## Per-entity file structure

### Characters

A character gets a directory `codex/characters/<slug>/` with three files:

- `identity.md` — static. Who they are at series-zero. Physical, voice, goals, relationships. Updated only when a permanent identity change happens (e.g. an undeath transformation, a name change).
- `voice.md` — idiolect. Required for any character with named dialogue. Documents register, tics, vocabulary range, syntax under stress, what they avoid saying. Reviewers enforce per-line distinguishability from this file.
- `history.md` — dynamic. State-log table with one row per scene the character appears in. Columns: scene reference, location at scene end, status (alive/wounded/etc.), what they now know, what they last said / who they last spoke to, summary, items acquired/lost.

### Locations, factions, magic, events

Single files. Identity section at the top, state-log table at the bottom (rows per scene where state changed).

### Templates

Copy from `codex/templates/` when adding a new entity. Templates document the expected sections.

## The state-log discipline

Every scene commit must tick forward every entity that appeared. The state-log table at the bottom of each entity file is the primary anti-cascade defense. If a character's state-log shows them in Location A at the end of scene-N, the next scene that uses them must either start them in Location A or explain on-page how they got somewhere else.

## INDEX.md

`INDEX.md` is the entity catalogue with status. Add a one-line entry when an entity is first introduced (or when its codex file is first created). Update the status whenever the entity's life-state changes. The orchestrator and the auto-included context use INDEX.md to decide whether an entity is relevant without opening every codex file.

## Format conventions

- Filenames: lowercase-hyphenated. Match the slug.
- Cross-references in prose: use the slug. Example: `[location] dun-traelak`.
- State-log rows: keep tight. One row per scene. Long-form notes go in the entity's identity section or in scene briefs.
- Templates: copy the template, fill in the placeholders, commit the new file with the same commit that introduces the entity in prose.

## Auto-included files

The following files are loaded into every orchestrator turn via `CLAUDE.md`'s import directives:

- `codex/INDEX.md`
- `codex/style/ai-isms.md`
- `codex/voice/voice-profile.md`
- `codex/voice/polish-targets.md`
- `codex/beats/hard.md`

These must stay readable at session-load. Avoid bloating any of them past what fits in a single working-context view.

## Codex updates as part of scene commit

Per `CLAUDE.md` per-scene pipeline step 5, every scene commit includes:

- The character history.md row for every on-page character.
- The location state-log row for every on-page location.
- The faction status update if any faction acted.
- The timeline master.md tick if the scene marks a beat.
- The INDEX.md update if a new entity appeared or an entity's status changed.

Commits without codex updates are blocked by the orchestrator. The git operator agent will refuse to commit if the diff doesn't include codex changes alongside the prose file.
