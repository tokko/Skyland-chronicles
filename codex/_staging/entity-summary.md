# Entity Extraction Summary

Produced after full read of `source/manuscript.md` (28 chapters, ~132k words, first-person POV).

---

## Counts

| Category | Count | Notes |
| --- | --- | --- |
| Characters (full codex: identity + voice + history) | 5 | marissa-zorantis, kyra-zorantis, kendall, zandor, valia |
| Characters (identity + history only; voice not individually rendered on-page) | 7 | alissa, micah, wylah, felaan, mathias-varl, aurean, raistlin |
| Characters (identity stub only; minimal on-page presence) | 1 | lukas |
| Locations | 7 | the-groundlands, the-valley, dun-traelak, utopeia, the-skylands, savage-cave-system, ley-line-crossing-high |
| Factions | 4 | skylanders, bizhjerai-clans, savages, fists-of-heaven |
| Magic elements | 10 | magic-system (overview), blood-magic, angel-armour, liche-enchantment, materialised-magic, bizhjerai-rune, meta-magic, soulfire, artificial-ley-lines, skymmer |
| Timeline events (by background agent) | 34 | see codex/timeline/master.md and codex/timeline/events/ |

---

## Protagonist slug

`marissa-zorantis`

Aliases in use across the manuscript:
- **Mary Laier** — Groundlands alias (chapters 1–25, to the end of the infiltration)
- **Siever / Mary the Siever** — informal Skylander label for her mage skill
- **The Last Skylander** — self-applied in epilogue (chapter 28)

---

## Characters not in the codex (intentionally excluded)

The following appear in the manuscript but are not given individual codex files because they have no independent story function beyond serving as props or momentary obstacles:

| Name / description | Reason for exclusion |
| --- | --- |
| Gereon (yellow-haired; killed chapter 1) | Single-scene target; no arc |
| Arthur Swanson (lumber foreman) | Background function; no individual scenes |
| Ms Vorka (housing coordinator) | Background function |
| Archibald (lead architect; 50-year career) | Background function; no independent scenes |
| The spy with rose hair and blue eyes (killed at wall, chapter 24) | Single-scene; unnamed; no arc |
| The sentry with grey-teal hair (killed at eastern cliff, chapter 24) | Single-scene; unnamed; no arc |
| Varl's Mage (killed at shield tower, chapter 25) | Unnamed; single-scene obstacle |
| Marie's husband (ground commander, chapter 27) | Named by relationship only; no independent scenes |
| Ioana (Raistlin's captain; expected but not seen on-page) | Referenced only; never appears |
| The cerulean-haired mage at bombardment shield (chapter 19) | Background |
| The unnamed old woman with azure hair (feeds soup, chapter 2) | Single-beat background |

---

## Continuity ambiguities requiring author input

These were identified during extraction and are also flagged in `codex/timeline/master.md`.

1. **Anjali's death location**: Chapter 27 text says "breach at Utopeia" but plot logic requires this to be the breach at Dun Traelak (Bizhjerai city, under Skylander siege). Likely drafting error. If Anjali died at Utopeia (the Skylander city), Kyra would have been attacking her own partner's last location, which contradicts the motivation logic. **Probable correction needed: "Dun Traelak" not "Utopeia".**

2. **Marissa's age at Utopeia**: Different passages imply she was ~6–14 years old when Utopeia fell (~10 years before chapter 1). Her age at chapter 1 is therefore unclear: estimates range from 19 to 27. Character writing should pick one age and be consistent.

3. **Micah "burned" at Utopeia**: Marissa recalls that Kyra burned Micah during the Utopeia assault, yet Micah appears physically healthy with only a burn scar on his jaw/neck in the present. Whether "burned" means personally (partial survival of fire) or refers to his forces/faction is ambiguous.

4. **Varl's death location**: In chapter 25, Marissa kills a Mage at the shield tower. In chapter 26, she tells Kendall Varl "might be on the Prowler." These are inconsistent unless the chapter-25 Mage was not Varl. Left as ambiguous in the codex.

5. **"Mom" vs. Anjali vs. Marissa's birth mother**: The manuscript implies a three-parent structure — a biological father (Skylander; killed), a biological mother ("mom"; Kyra's partner; described as "the Red Terror's partner"; died at Utopeia), and Anjali (a Bizhjerai woman who is also associated with the birth). The relationship between "mom" and "Anjali" and the Elweyr expedition where Marissa's birth mother died is never fully clarified. **These may be the same person or distinct people** — the manuscript uses the terms interchangeably in some passages and as distinct people in others. This is the highest-priority continuity question for the author.

6. **The "Marie" in chapter 27** (Aurean's reference to a past death): Aurean thinks about "Marie" who was wounded at Utopeia's breach and killed by a stray shot. "Marie" is also used as a name for one of the Bizhjerai figures associated with the fleet/command. Whether "Marie" here is: (a) Marissa's birth mother, (b) a separate named character, or (c) a variant of "Marissa" is unclear. Flags as a potential inconsistency.

---

## Magic elements not given individual files

The following magic concepts are present in the manuscript but are adequately covered within the system.md overview or the relevant character/faction file, and do not need dedicated files at this stage:

- **Telekinesis** (covered in angel-armour.md and system.md; a standard Construction Mage tool)
- **Shield spells** (covered in system.md; too generic for a dedicated file)
- **Light spells** (utility; not mechanically distinctive enough)
- **Explosive power cores** (a weaponised application of storage crystals; covered in system.md notes and Marissa's history)
- **Manufactorium spells** (automated production loops; covered in materialised-magic.md)
- **Spell-bugs / Sieve Swarm** (referenced in backstory as communication/delivery mechanism; not shown active in manuscript; too peripheral for a dedicated file without more source material)
- **Arclite** (referenced but not defined in manuscript; insufficient information for a file)
- **Magic fetters** (referenced in imprisonment context; not mechanically detailed)

---

## Voice profile status

Full voice profile for Marissa Zorantis: see `codex/characters/marissa-zorantis/voice.md`.
Background-agent voice extraction summary with broader manuscript analysis: see `codex/_staging/voice-and-beats-summary.md`.
The `codex/voice/voice-profile.md` file remains a placeholder — it should be populated by the orchestrator using the voice extraction in `voice-and-beats-summary.md` before any scene is written.

---

## Beats status

42 beats extracted; proposed 22 hard / 20 soft; awaiting user approval before per-book lists are finalised.
See `codex/_staging/extracted-beats.md` and `codex/_staging/voice-and-beats-summary.md` for the tiering proposal and open classification questions requiring author input.
