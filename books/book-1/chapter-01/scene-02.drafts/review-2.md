# Review — book-1 / chapter-01 / scene-02 (draft-2 / Sonnet 4.6, revision pass 2 of 3)

## Verdict
**minor**

## One-line summary
All seven structural fixes land cleanly, voice holds in pre-Anjali register throughout, and the scene reaches 3,241 words with strong rhythm — but the em-dash count is 11 against a cap of 2 (the same failure mode as draft-1), there is one mangled closing line ("grandmother was time"), and two §3.1 thesis-tendency lines need tightening. All fixable inline.

## A. The seven required fixes — assessment

1. **Shield as on-page obstacle with cost: PASS.** Lines 1–11. Visible shimmer, audible hum, magesense-dense; shield-breaker described as a built device, discharge on-page, projector cracks with specific sound, device permanently spent. "Kendall had told me the device was good for one use; he meant exactly that."
2. **Multi-room trek: PASS.** Five distinct spaces with their own rhythm units. Magic + gunplay + sword work alternate. Brutal, fast, visceral.
3. **Armour saves at least three times: PASS — four landed.** Gorget at line 15; corset at line 117; pre-event assessment at line 111; plus the under-bench miss as borderline. Clinical, no "luck", sets her apart cleanly.
4. **Dispenser-room direct-cast: PASS.** Lines 47–61. Tap registered, ambient bleed felt, professional brief noticing of the unusual; held spell from cover; breaks deadlock by knocking dispenser casing into the Guard-plate man.
5. **Anton's death: PASS, exact spec.** Lines 87–101. Sudden, gory, emotionless. "The graft-craze does not wind down gradually. The graft stops when the meat stops." Moves on.
6. **No mercy / no surrender-offers: PASS.** No "Drop it" / "you can walk" lines anywhere. Casual blade economy throughout (kneel and cut; bludgeon with the revolver grip; sword finishes).
7. **Cylinder activation moved later: PASS.** Line 83, after the dispenser-room deadlock broken and bayonet-team room cleared, before the stairs.

## B. Voice fidelity — PASS

Pre-Anjali register holds throughout. No spectral-Kyra peer-forward drift (unlike draft-1's Micah-lifetime-later line). Pacing-brake observational sentence at the gauntlet armour-assessment (line 111). Anton on-page treatment voice-correct: a sound first, the body coming up the stairs, then dead in a single sentence with no editorial.

## C. AI-isms — em-dash failure (same as draft-1)

**§2.3 em-dash pivot abuse — 11 em-dashes against cap of 2.** Counted carefully: lines 7, 13, 17, 23, 31, 45, 51, 57, 65, 127, 135. Most are appositive insertions convertible to comma/colon/full-stop without changing rhythm.

Recommended retention (2 earned): line 127 (Bowels-smell catalogue) and line 135 (Geyser pacing-brake — chapter outline calls this beat out).
Recommended conversions: 9 others.

**§3.1 topic-sentence summary — two borderline lines.**
- Line 39: Ford's-grey-coats-foreshadowing thesis. Tighten.
- Line 53: ambient-mana-rationing-explanation. One sentence enough; trim the lecture.

**§13 portentous closers — clean.** "The third shot." stays clean physical fact.

**§17 "suddenly", §18 "of course", §4.5 named emotions, §22 monologue-over-the-corpse, §1 lexical tells, §6.1 "air was thick with" — all clean.**

## D. Polish-targets — one bug

**§25 — one mangled line at 135**: "since before my grandmother **was** time" — likely a typo where "born" got replaced with "time" mid-edit. Either restore to "before my grandmother was born" (matches line 127) or rewrite as "before my grandmother's time" (varied construction).

No bird-idioms (the draft-1 "crow's feet" leak is not repeated — rewritten as "lines around her knuckles" which is voice-correct). No paper, wood, animal-leather, plant/animal-textile, or unfiltered-sun leaks.

## E. Resolution rules — all 11 must-resolves landed; all must-NOT-resolves clean.

## F. Beat status
- H-kyra-merc-life: advanced cleanly.
- H-the-magic-shortages: advanced via the illegal ley-line tap, implicit not lectured.

## G. Length and pacing — PASS (3,241 within 2,500–3,500). Six distinct rhythm units, varied sentence-length, source's un-paragraphed-block failure avoided.

## H. Hand-off to scene-03 — PASS. Window beat closes on the third shot; Raynard not present, not foreshadowed; Kyra's state at scene end (corset bruise, cylinder at two empties, Powerstone at a third) gives scene-03 the cooling-armour Raynard cooldown carry-over.

## Inline edits (twelve)

1. Line 7 em-dash → full stop.
2. Line 13 em-dash → colon.
3. Line 17 em-dash → full stop.
4. Line 23 em-dash → full stop.
5. Line 31 em-dash → full stop + comma adjustment.
6. Line 45 em-dash → full stop + semicolon.
7. Line 51 em-dash → comma.
8. Line 53 §3.1 thesis tighten (drop the rationing-explanation clause).
9. Line 57 em-dash → full stop.
10. Line 65 em-dash → full stop.
11. Line 135 "grandmother was time" → "grandmother's time".
12. Line 39 §3.1 thesis tighten (drop the Ford-grey-coats foreshadowing).

After: em-dash count drops to 2 (lines 127 and 135, both earned). Typo fixed. Two thesis lines tightened. No structural changes.

## Recommendation

Apply the twelve inline diffs. Promote draft-2.md → scene-02.md. Update codex state-logs (Kyra at upper window with corset bruise; Anton dead and his body left in the upper corridor; shield-breaker spent and discarded at arch; cylinder at 2 empty chambers, Powerstone at ~1/3; one cooking-floor worker fled east passage; one inner-sanctum survivor unconfirmed). No third Sonnet pass required.

## Codex tick-forward (summary for orchestrator)

- `characters/kyra-zorantis/history.md`: location upper-level window above courtyard; Powerstone ~1/3; cylinder 2 empty; bruise across lower ribs (corset save, no consequence); shield-breaker spent + discarded at arch; new knowledge: she can draw directly from ambient mana when there's a local field (first time on the Skylands; seed for the mainland-ambient revelation later in book 1).
- `characters/anton/history.md`: **dead**. Killed by cartel guard's muzzle-loader to the back of the head, on the upper-level stairs/corridor of the Undercity manufactory. Body left in the upper corridor.
- `locations/skylands-undercity.md`: manufactory cleared; arch projector permanently destroyed; cooking-rig hall + dispenser room cleared; illegal ley-line tap noted but not severed; upper corridor holds Anton's body.
- `factions/stardust-cartels.md`: one refined-grade manufactory destroyed; ~13 cartel personnel dead at this site; one cooker fled east passage (presumed escape to street).
- Re-run `scripts/regen-status.sh`.
- No INDEX.md changes (no new entities).
