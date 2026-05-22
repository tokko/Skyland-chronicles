# Scene Brief — book-<N> / chapter-<MM> / scene-<PP>

This is the full instruction packet handed to the Sonnet scene writer. Assembled by the orchestrator from the scene card + codex slices + rolling 2k tail. The writer returns scene prose only — no headers, no meta commentary, no "Scene X:" labels.

---

## 1. Identity

- Book / Chapter / Scene:
- Working title:
- POV character:
- Setting (location, time of day, in-world date):
- Target length:
- Mood / tone:

## 2. Scene goal

- **External** (what visibly happens):
- **Internal** (what shifts in the POV character):

## 3. Resolution rules

- **Must resolve in this scene:**
- **Must NOT resolve (carry forward):**

These are non-negotiable. Lingering threads are intentional.

## 4. Beats to land

### Hard beats (must be on-page, logically motivated)
- <HARD-BEAT-ID>: <description>

### Soft beats (advance or land as fits the pacing)
- <SOFT-BEAT-ID>: <description>

## 5. Characters in scene

For each character present:

### <Name> (<slug>)
- **Current state** (from codex): location, last action, knowledge, injuries, possessions.
- **Goal entering**: what they want when they walk in.
- **Goal exiting**: what they want when they walk out (the delta is the scene).
- **Knows**: relevant facts they hold.
- **Doesn't know**: relevant facts they don't (and must not infer).
- **Voice**: pointer to `codex/characters/<slug>/voice.md` and any per-scene deviation.

## 6. Codex slice

Excerpts pasted verbatim from relevant codex files so the writer doesn't have to chase links:

- **Location** (current state): <pasted snippet from location file>
- **Factions in play**: <pasted snippet>
- **Magic in play** (with cost): <pasted snippet>
- **Recent events the scene reacts to**: <pasted snippet>

## 7. Continuity constraints

- **Cannot contradict**: <list of facts>
- **Must reference**: <list of items>
- **Forbidden mentions** (spoilers / not-yet-revealed): <list>

## 8. Voice

Read these before writing:

- `codex/voice/voice-profile.md` — the narrative voice to inhabit
- `codex/voice/polish-targets.md` — bad habits to suppress
- `codex/style/ai-isms.md` — blacklist; do not produce any of these patterns
- `codex/style/rules.md` — general style rules

Each character speaks in their own voice (see section 5). Reader should be able to identify the speaker from a single line of dialog without a tag.

## 9. Previous 2k words (rolling tail)

The last ~2,000 words of accepted prose preceding this scene. Match its momentum and pick up cleanly.

```
<pasted>
```

## 10. Output spec

Return ONLY the scene prose. No headings. No labels. No commentary. No author notes. No quotation marks around the whole thing. Plain Markdown paragraphs. Dialog in standard double quotes. Em dashes are allowed but not as a default pivot — earn them.

End the scene at the point set by the resolution rules. Do not continue past. Do not summarize. Do not foreshadow more than the scene card calls for.
