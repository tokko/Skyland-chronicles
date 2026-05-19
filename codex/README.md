# Codex Format Specification

Every codex entity is one Markdown file (or one folder for entities with history, namely characters) with a YAML front-matter block and a body of structured sections. The front-matter is the machine-readable summary; the body is the human-readable detail.

## File and folder layout

```
codex/
  INDEX.md                         # aggregated entity listing, auto-included
  characters/
    <slug>/
      identity.md                  # who they are, physical, role, arc
      voice.md                     # idiolect, register, tics
      history.md                   # state-over-time log, ticked per scene
  locations/<slug>.md              # one file per location, with history table inside
  factions/<slug>.md
  magic/
    system.md                      # rules of magic
    <element>.md                   # individual spells, costs, items, lineages
  timeline/
    master.md                      # chronological event index
    events/<slug>.md               # one file per major event
  beats/
    hard.md, soft.md
    book-1.md, book-2.md, book-3.md
  voice/
    voice-profile.md
    polish-targets.md
  style/
    ai-isms.md
    rules.md
  templates/                       # the format specs themselves
```

## Slugs

- lowercase, hyphenated, ASCII only
- derived from the entity's most common form of address
- once assigned, never renamed (use `aliases` in front-matter to absorb new names)

## YAML front-matter

Every entity file begins with a front-matter block. Required keys vary by type; see templates. Common conventions:

- `id` — slug, must match filename
- `name` — display name
- `aliases` — list of other names the entity is known by (search hits land here)
- `type` — character | location | faction | magic | event | artifact
- `status` — current status (alive, destroyed, active, ...)
- `first_appearance` — `book-N/chapter-MM/scene-PP` once accepted
- `last_updated_scene` — same format; ticked forward on each scene that touches the entity

## Body sections

Use the templates under `codex/templates/`. Section headings are stable so reviewers and writers can grep predictable anchors:

- Characters: `## Identity`, `## Physical`, `## Voice`, `## Goals`, `## Arc`, `## Relationships`, `## Knowledge state`, `## Location history`, `## Notes`
- Locations: `## Description`, `## Geography`, `## Inhabitants`, `## State history`, `## Notes`
- Factions: `## Identity`, `## Goals`, `## Members`, `## Resources`, `## State history`, `## Notes`
- Magic elements: `## Rules`, `## Cost`, `## Limits`, `## Practitioners`, `## Notes`
- Events: `## Summary`, `## Participants`, `## Consequences`, `## In-text references`, `## Notes`

## State-over-time tracking

Characters and locations carry an explicit log of how they change across the story. Use a table where each row is a scene-anchored snapshot:

```
| Scene                     | Location / state    | Knowledge / change                    |
| ------------------------- | ------------------- | ------------------------------------- |
| book-1/ch-01/scene-01     | Aerie of First Wind | Believes mother died in the fall      |
| book-1/ch-02/scene-03     | Lower Spans         | Learns mother lived; identity unknown |
```

The orchestrator is responsible for adding a row on every scene that touches the entity. Reviewers verify the row is present before issuing `clean` or `minor`.

## INDEX.md responsibilities

The index never holds prose — only cross-references. When a new entity is created, its row is added there in the same commit that creates the file. When an entity's status changes (death, destruction, exposure of an alias, ...), the index row is updated.

## Cross-references

Within codex bodies, link to other entities by relative Markdown links:

```
... last seen with [Veyra Ostfall](../characters/veyra-ostfall/identity.md).
```

This lets reviewers chase a reference without losing context.
