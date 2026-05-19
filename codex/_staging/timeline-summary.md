# Timeline Extraction Summary

## Counts (all three source books)

| Source | On-page events | Pre-story / backstory | Total |
| --- | --- | --- | --- |
| Book 1 (Kyra POV, 51 chapters) | 13 new + 8 demoted-from-pre-story | 0 | 13 new event files |
| Book 2 (Marissa POV, 28 chapters) | 21 | (handled in original extraction) | unchanged |
| Book 3 (Marissa+Barengar POV, 19 chapters) | 5 new | 0 | 5 new event files |
| **Pre-story (no on-page scene)** | n/a | 3 (down from 12) | 3 retained |
| **Grand total** | 39 on-page events | 3 pre-story | 42 event files |

## What changed from the original (book-2-only) extraction

The original extraction treated 12 events as pre-story because book 2 referenced them only in flashback/dialogue. Books 1 and 3 demote most of them to on-page:

| Original slug | New status | On-page where |
| --- | --- | --- |
| `the-apocalypse` | Still pre-story (enriched) | (deep backstory; details in book 3 ch 3, ch 13) |
| `founding-of-the-skylands` | Still pre-story | (never narrated on-page) |
| `kyra-trains-under-micah` | Still pre-story | (briefly mentioned in book 1 ch 2) |
| `kyra-first-expedition-elweyr` | **DEMOTED to on-page** | Book 1 ch 9-11 → `first-expedition-launches`, `kyra-meets-anjali` |
| `kyra-anjali-partnership` | **DEMOTED to on-page** | Book 1 ch 11-29 → `kyra-meets-anjali`, `kyra-archon-tattoos-and-adoption` |
| `duel-with-grasax` | **DEMOTED to on-page** | Book 1 ch 22-23 → `dun-traelak-shield-tower-destroyed` |
| `battle-of-dun-traelak` | **DEMOTED + RE-SCOPED** | Book 1 ch 45-48 → `siege-of-dun-traelak-and-fists-of-heaven` |
| `utopeia-fall` | **DEMOTED + SPLIT** | Book 1 ch 49-51 → `assault-on-utopeia-colony` + `kyra-destroys-skylands` |
| `anjali-memory-core-delivered` | **DEMOTED + CORRECTED** | Book 1 epilogue (memory core is Kyra's, not Anjali's) |
| `marissa-raised-dun-traelak` | **DEMOTED (partial)** | Book 1 epilogue + inferred between-books → `marissa-childhood-with-kendall` |
| `marissa-bizhjerai-rune-tattooed` | Still backstory | (childhood adoption ritual, between books) |
| `kendall-expedition-great-geyser` | Still ongoing-at-Book-2-Ch-1 | (referenced in book 2 ch 1) |

## New event slugs added

### Book 1 (13 new event files)

1. `dragonkin-invasion-skylands` (ch 4-5)
2. `greg-killed-marissa-adopted` (ch 4-8, 41)
3. `first-expedition-launches` (ch 7-9)
4. `kyra-meets-anjali` (ch 9-13)
5. `outcast-raid-bizhjerai-camp` (ch 15-16)
6. `clan-alliance-and-march-to-dun-traelak` (ch 17-19)
7. `dun-traelak-shield-tower-destroyed` (ch 20-23) — supersedes `duel-with-grasax`
8. `kyra-archon-tattoos-and-adoption` (ch 25-29)
9. `malkareth-hatched` (ch 30-34)
10. `skylander-colony-arrives` (ch 36-41)
11. `skylander-clan-war-summer-raids` (ch 42-44)
12. `siege-of-dun-traelak-and-fists-of-heaven` (ch 45-48) — supersedes `battle-of-dun-traelak`
13. `assault-on-utopeia-colony` (ch 49-50) — supersedes part of `utopeia-fall`
14. `kyra-becomes-liche` (ch 50-51)
15. `kyra-destroys-skylands` (ch 51) — supersedes part of `utopeia-fall`
16. `marissa-childhood-with-kendall` (ch 51, book 1 epilogue, and inferred-between)

(Note: 16 listed, but `marissa-childhood-with-kendall` also covers the original `marissa-raised-dun-traelak`. Net new event-file additions: 16.)

### Book 3 (5 new event files)

1. `marissa-founds-college-of-mages` (book 3 ch 1, 3, 5)
2. `savages-as-precursors-revealed` (book 3 ch 1-2) — lands the book 2 ch 28 foreshadowing
3. `marissa-builds-epitome` (book 3 ch 3, 5-7, 13)
4. `zandor-returns-as-demagogue` (book 3 ch 8-9) — Zandor reveal
5. `marissa-killed-by-barengar` (book 3 ch 18-19) — series end

## Resolution of the 5 ambiguities flagged in the original extraction

| # | Original ambiguity | Status | Resolution |
| --- | --- | --- | --- |
| 1 | Anjali's death location (Utopeia vs Dun Traelak) | **RESOLVED** | Book 1 ch 50: stray-bullet death at the breach of the Utopeia COLONY (mainland), not Dun Traelak. She had earlier survived a gut wound from Grasax's staff at Dun Traelak. See `assault-on-utopeia-colony.md`. |
| 2 | Marissa's age at Utopeia | **RESOLVED** | ~11 at Dragonkin invasion (book 1 ch 4); ~12 at marketplace reunion (book 1 ch 41); ~13 when Anjali dies (book 1 ch 50). By book 2 ch 1 she is ~22-23. |
| 3 | Micah "burned" at Utopeia vs alive | **RESOLVED** | Book 1 ch 50: probably burned during Kyra's rampage at the Utopeia colony but survived and evacuated to the floating Skylands; was among the ~10,000 survivors when the Skylands themselves fell (book 1 ch 51). Marissa's "she burned Micah" memory collapses both events. |
| 4 | Varl's death location | **REFINED** | Book 3 ch 9 reveals Varl was alive after book 2. He trained Zandor as the Demagogue. The Mage Marissa killed at the shield tower in book 2 ch 25 was NOT Varl. Varl survived the Groundlands cataclysm off-page. STILL AMBIGUOUS: when and how he escaped from the Prowler / Groundlands. |
| 5 | Marissa's birth mother vs Anjali | **RESOLVED** | Marissa's biological father is Greg (mercenary, dies in book 1 ch 4 dragon attack); her biological mother is an unnamed Skylander woman who died in the Undercity years before book 1 ch 1 (per book 1 ch 4 "his wife died years ago"); Anjali is her adoptive mother by marriage to Kyra. The Elweyr-forest birth-mother story in book 2 is Marissa's misunderstanding — her birth mother died in the Undercity, not the Elweyr forest. |

## New ambiguities introduced

| # | Ambiguity | Notes |
| --- | --- | --- |
| 6 | Mathias Varl's escape from Groundlands | Book 3 ch 9 confirms he survived book 2's destruction of the Groundlands but does NOT narrate how. Open. |
| 7 | Epitome's ethical trajectory | Book 3 ch 19 epilogue leaves Epitome alone in orbit, intending both world rule and an artificial afterlife. Whether she is benevolent or the next iteration of the trilogy's cycle (each generation more powerful, less human) is by-design unresolved. |
| 8 | Mathias Varl's fate in book 3 | Not narrated on-page in book 3 ch 19. Probably still alive. |
| 9 | The "evil monolith" of book 2 ch 1 mother-shade reference | The Anjali-shade in book 2 ch 1 mentions a "evil monolith" that Kyra "flew away on my dragon brother to slay." Book 1 ch 51 shows Kyra and Malkareth drained the Great Geyser; there was no monolith involved. The book 2 mother-shade language is most likely Marissa's child-memory of Kyra's death conflated with Epitome (the future event Marissa would much later cause). This is an unreliable-narrator artefact that resolves on close reading but flags an inconsistency between the source books. |

## Notes on scope

- All 51 chapters of book 1 read; full chapter map built.
- All 19 chapters of book 3 read (including epilogue).
- Book 2 events unchanged from the previous extraction.
- No events invented; every entry traces to specific source text.
- Absolute in-world dates are not given anywhere in any of the three books; all dates are relative anchors.
- The cross-book relationships between named entities (especially the multi-parent family of Marissa and the multi-name same-character problem with Anjali / "Red" / "the Red Terror" / "mom") have been clarified in the event-file notes for the entity sibling agent's benefit.
