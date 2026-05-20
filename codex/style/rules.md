# Style Rules

General prose rules for the rewrite. Sits alongside `voice-profile.md` (the positive description of the voice) and `ai-isms.md` (the negative list of patterns to avoid).

## Point of view

- POV is declared per scene in the scene card. Do not slip POV mid-scene.
- Tight third unless the source voice establishes otherwise.
- The POV character does not narrate facts they do not know.

## Tense

- Past tense unless the source establishes otherwise.
- Flashbacks in past perfect for the first sentence or two, then drop to simple past.

## Dialog formatting

- Double quotes.
- New paragraph for each speaker.
- `said` is the default tag. Strong verbs (whispered, snarled) are reserved for moments that earn them.
- Action beats may replace tags when the speaker is clear.

## Numbers, time, names

- Spell out one through ten in prose. Numerals for eleven and up unless the context calls for spelling.
- In-world time references are governed by the codex timeline. Do not invent calendar terms.
- Character names are spelled the way the codex spells them; aliases come from the front-matter `aliases` field.

## Italics

- Used for: emphasized words in dialog (sparingly), titles of in-world books or ships, character thought when explicitly internalized.
- Not used as a default emphasis tool. Strong syntax does more work.

## Profanity, sex, violence

- Match the source manuscript's register. Do not escalate. Do not sanitize.
- Violence has cost — physical, emotional, social. Never play it for spectacle without consequence elsewhere.

## Worldbuilding terms

- New terms get an INDEX.md entry the same commit they appear in.
- A reader should be able to infer a new term's meaning from context on first encounter. No glossary-reliance.

## Narrator lexicon and worldbuilding consistency

- **Born-Skylander narrators do not use nature as metaphor, comparison, or imagery while on the Skylands.** The Skylands has crystal, fungus, and humans — nothing else. Plants and animals are six-centuries-ago legend. No "clever as a fox", no "sharp-eyed as an eagle", no "rooted to the spot", no "in full bloom", no "dog-leg corridor". See `voice/polish-targets.md §25` and `voice/voice-profile.md §Kyra` for the full rule and substitution palette. The vocabulary enters gradually after a Skylander narrator leaves the city, and the narration softens at the same pace.
- Each narrator's lexicon is bounded by their lived experience. A Bizhjerai-raised character knows buffalo, plains, and storms. A Skylander narrator who has never seen daylight does not. The lexicon is itself characterisation; do not violate it for convenience.

## Length targets

- Scene: 1,500–2,500 words typical. Hard-beat scenes may run to 3,500.
- Chapter: 3–5 scenes typical.
- Book: ~90,000–120,000 words after rewrite.

## Scene and chapter transitions

- **Within a chapter, scenes must transition cleanly.** The state at scene-N's close must logically connect to the state at scene-(N+1)'s open — same POV, no skipped beats, no missing connective tissue. If scene-N ends with the POV character about to use a device, take an action, cross a threshold, or address a person, scene-(N+1) must open with that action playing through, not with its result presented as if it happened off-page. Time-gaps inside a chapter are minutes at most unless the chapter outline explicitly calls for a pause beat. The reader should not feel a cut between scene closings and openings — they should feel a beat-shift, a register-shift, a tightening of focus, but not a gap.
- **Chapters can have breaks.** Between chapter-M and chapter-(M+1) the orchestrator may leap time, change location, change POV, drop a thread, or open mid-action. The chapter boundary IS a transition; no connective tissue is required by default. Each chapter opens with its own hook per the chapter outline.
- **The reviewer enforces scene-to-scene continuity.** When reviewing scene-N, the reviewer must verify that scene-N opens consistently with how scene-(N-1) closed — physical state, possessions, location, who is in the room, what is in the POV character's hand, what the POV character was about to do. A continuity break between scenes within a chapter is a `significant` verdict on the new scene by default; the fix is either to revise the new scene's opening or to extend the prior scene's closing so the seam is on-page.

## What "good" looks like

- Every paragraph either advances story, deepens character, or establishes stakes. Cut paragraphs that do none.
- Every line of dialog reveals something — information, character, or relationship.
- Every chapter ends with a reason to start the next.
