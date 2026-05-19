# AI-isms - Avoidance Blacklist

Working reference for the novel-rewriting pipeline. Each entry names a
stylistic tell that current readers, editors, and detection tools associate
with machine-generated prose. Patterns are drawn from the Wikipedia "Signs
of AI writing" guide, the tropes.fyi catalog, academic vocabulary studies
on LLM output (Springer 2025, Science Advances 2025), fiction-craft blogs,
and novelist commentary from 2025-2026. None of these tells are uniquely
AI - human writers used them first - but in combination, or at AI's
frequency, they read as machine output.

Reviewers cite entries here by section + item number: e.g. `ai-isms §2.1`
for the "not just X, it's Y" pattern.

---

## 1. Lexical tells

Single words and short phrases that LLMs reach for far more often than
human writers. Frequency studies (PMC 2025, arXiv 2509.09596) show >5x
post-2022 spikes for many of these.

1. **"delve" / "delve into"** - "She delved into the archive." Top-flagged AI verb; humans say "dug into" or "read."
2. **"tapestry"** - "A rich tapestry of memory." Generic noun for "many things."
3. **"realm"** - "In the realm of dreams." Filler noun; means nothing more than "in dreams."
4. **"navigate" (as metaphor)** - "She navigated the grief." AI's all-purpose abstract verb for "handle."
5. **"a testament to" / "stands as a testament"** - "Her silence was a testament to her grief." Inflates observation into thesis.
6. **"in the world of"** - "In the world of harbor traders." Travel-brochure framing.
7. **"bustling"** - "The bustling market." Tourism copy; rare in literary fiction.
8. **"vibrant"** - "Vibrant colors filled the square." Marketing register; show the color.
9. **"myriad"** - "A myriad of stars." Thesaurus-reach for "many."
10. **"palpable"** - "The tension was palpable." Shorthand for "I want you to feel tension."
11. **"underscores" / "underscored"** - "Her tone underscored her doubt." Editorial verb; wrong register for close third.
12. **"showcases" / "showcased"** - "The room showcased her wealth." Catalog copy; people don't showcase.
13. **"embark" / "embark on a journey"** - "She embarked on a journey of grief." Cruise-ad cadence.
14. **"landscape" (as metaphor)** - "The political landscape shifted." Generic spatial metaphor for any abstract domain.
15. **"intricate"** - "An intricate web of lies." 700-5,400% post-ChatGPT spike in academic corpora.
16. **"meticulous" / "meticulously"** - "He meticulously folded the letter." 2,800% post-ChatGPT spike.
17. **"robust"** - "A robust defense." Consultant register.
18. **"leverage" (as verb)** - "She leveraged her connection." Business-deck verb.
19. **"harness" (as verb)** - "He harnessed his anger." Movie-poster verb.
20. **"streamline"** - "She streamlined the ritual." Office vocabulary.
21. **"utilize"** - "She utilized the knife." Almost always replace with "used."
22. **"pivotal"** - "A pivotal moment." AI's favorite "important" synonym.
23. **"crucial" / "vital" / "essential" (chained)** - "A crucial, vital, essential decision." Stacked, reads as AI emphasis-padding.
24. **"resonate" / "resonated"** - "Her words resonated with him." LLM go-to for "had effect."
25. **"profound"** - "A profound silence." Inflates without earning.
26. **"beacon"** - "A beacon of hope." Generic-fantasy uplift noun.
27. **"cacophony"** - "A cacophony of voices." Thesaurus reach for "noise."
28. **"whisper" (as scene-flavor noun)** - "A whisper of wind." AI's default ambient noun.
29. **"shiver"** - "A shiver passed through her." AI's default involuntary body-tell.
30. **"quietly" / "softly" / "gently"** - "She quietly understood." Adverbs that manufacture significance without earning it.
31. **"deeply"** - "She deeply regretted." Pure padding adverb.
32. **"fundamentally"** - "He was fundamentally afraid." Argumentative-essay adverb in narrative.
33. **"remarkably" / "arguably" / "notably"** - "Remarkably, the door opened." Editorial intrusion in close POV.
34. **"certainly" / "indeed" / "undoubtedly"** - "She had, indeed, arrived." Confidence-buffer adverbs.
35. **"rich cultural heritage" / "rich history"** - "The city's rich cultural heritage." Wikipedia editors flag this as one of the strongest AI tells.
36. **"enduring legacy" / "lasting impact" / "indelible mark"** - "His enduring legacy." Eulogy register inside scene prose.
37. **"plays a vital role" / "serves as a key"** - "Faith plays a vital role here." Encyclopedia-summary cadence.
38. **"breathtaking" / "stunning" / "awe-inspiring"** - "A breathtaking view." Travel-blog adjectives.
39. **"a sense of"** - "A sense of unease settled." AI's emotional padding; hedges away the actual feeling.
40. **"ethereal"** - "Ethereal light filled the hall." Almost always a tell.

**What to do instead:** When the rewrite reaches for any word in this list,
force a concrete substitution drawn from the scene's own materials - the
character's job, the named geography of the chapter, the specific object
already on the page. "Delved into the archive" becomes "spent the
afternoon on the third-floor stacks." "Palpable tension" becomes whatever
physical detail the POV character would actually notice: the unread letter
still sealed, the unlit lamp, the chair pulled too close. The replacement
should narrow the picture, not broaden it.

---

## 2. Syntactic tells

Sentence-shape habits. tropes.fyi and Wikipedia editors call these out
most often; detection tools weight them heavily.

1. **Negative parallelism ("Not just X, but Y")** - "It wasn't just a door. It was a promise." The single most-cited AI tell; inflates the second clause without earning it.
2. **"It's not X - it's Y" with em dash** - "She wasn't running - she was leaving." Same pattern, even more conspicuous with the dash.
3. **Em-dash pivot abuse** - "She turned - and saw him - and forgot the rest." Humans use 2-3 dashes per chapter; LLMs use 20+.
4. **Tricolon padding (rule of three without earning it)** - "She was tired, she was hungry, and she was alone." LLMs default to three-beat enumeration even when the third item is filler.
5. **Three-adjective stack** - "The cold, dark, unforgiving night." Adjective triples chained without rhythm or contrast.
6. **Anaphoric openings** - "She walked. She watched. She waited." Repeating sentence-initial subject for false momentum.
7. **Hedge stacking** - "She seemed to almost remember, as if from a dream." Three hedges in one clause buys vagueness; AI piles them.
8. **Participial-phrase openers** - "Holding the lantern aloft, she descended." LLMs use these at 2-5x human rate (Science Advances 2025).
9. **"From X to Y" range constructions** - "From the cellar to the rooftop, the house held her." AI's default range/variety frame.
10. **Balanced clause + summary clause** - "The wind rose, the lamp guttered, and she knew it was over." Two beats of action plus an interpretive third beat that names the meaning for the reader.
11. **Topic-sentence narration** - "What followed was a moment she would never forget." Tells the reader what the scene will mean before the scene.
12. **"Here's the thing" / "What's interesting is"** - "Here's the thing: she'd been lying." False-suspense transition; essay register in narrative.
13. **"Moreover" / "Furthermore" / "Additionally"** - "Moreover, the lamp had been moved." Connector words native to essays, alien to scene prose.
14. **Question-then-answer rhetorical** - "Why had she come? Because she had to." Lecture cadence.
15. **"He couldn't help but [verb]"** - "He couldn't help but smile." Default involuntary-action shape.

**What to do instead:** Break the symmetry. If a sentence falls into a
"not-just-but" or "rule-of-three" shape, drop one limb and let the
remaining clause stand without its parallel. Replace participial openers
with simple SVO sentences for one paragraph at a time. Reserve the em
dash for the one moment per scene where it actually matters. Hedge once
or not at all - "seemed" and "almost" should not appear in the same
sentence.

---

## 3. Structural tells

Paragraph-shape and scene-shape habits. These are the patterns Wikipedia
editors and tropes.fyi call the "essay shape" of AI prose.

1. **Topic-sentence summaries** - paragraph opens "The night that followed would change everything." LLMs front-load the paragraph's point; scene fiction earns the point at the end, if at all.
2. **"In conclusion" / "Ultimately" / "In summary" transitions** - "Ultimately, the harbor would forgive her." Essay-conclusion vocabulary leaking into narrative.
3. **Mirrored closings** - scene opens "She had never trusted the bell"; closes "And so, in the end, the bell could not be trusted." AI loves to bookend; humans rarely close so neatly.
4. **Over-symmetrical scene endings** - every scene ends on a one-line summary beat. Pattern detectable across chapters even when each instance reads fine.
5. **Sensory-list paragraph openers** - "The smell of salt, the sound of gulls, the feel of damp rope." Three-sense triple as scene-setter is AI's default establishing shot.
6. **Establishing-paragraph clichés** - "The morning broke over the harbor, golden and slow." Generic atmospheric opener interchangeable across any chapter.
7. **Mid-paragraph thesis** - after scene action, a sentence summarizes what the scene means. The interpretive beat AI inserts to "help" the reader.
8. **List-of-three world-detail paragraphs** - "Three things mattered in the upper district: the bells, the bridges, and the brokers." Encyclopedia register dressed as scene-setting.
9. **Symmetric chapter openers** - every chapter starts on weather, time, or character-name + verb. Detectable as a pattern across the manuscript.
10. **Portentous fragment closers** - "And he knew, then, what he had to do." Once a book is fine; recurring is a tell.

**What to do instead:** Cut the first and last sentence of every suspect
scene and reread - if the scene still works, those sentences were AI
scaffolding. Replace summary openers with an action mid-stride or a piece
of unexplained dialogue. Replace mirrored closings with an image the POV
character can't yet interpret. Vary chapter-opening grammar across the
manuscript on purpose: weather, then dialogue, then a noun phrase, then
an interior thought.

---

## 4. Dialog and character tells

Habits in how AI handles people in a scene. These overlap with longstanding
fiction clichés (Kathy Steinemann's word lists, Writers Helping Writers on
talking heads), but LLMs concentrate them.

1. **Smile/nod/shrug stacked as tags** - "'Yes,' she smiled. 'Of course,' he nodded." You can't speak a smile or a nod; AI does this constantly.
2. **"Let out a breath they didn't know they were holding"** - romance cliché pre-dating AI, now a top reader-flagged AI tell.
3. **Eyes that "pierce" or "bore into"** - "His eyes bored into hers." Generic intensity stand-in for any high-stakes look.
4. **"Met her gaze" / "held her gaze"** - "Their eyes met across the room." Reflexive AI go-to for any two-character beat.
5. **Named emotions** - "She felt a mix of anger and fear." Tells instead of shows; AI's default for any complex feeling.
6. **Biological-reflex shorthand** - "Her stomach knotted. Her heart pounded." Universal biology substituting for individual psychology.
7. **Single-register dialogue** - the street vendor and the queen use the same syntax and vocabulary; LLMs cannot reliably hold separate idiolects across characters.
8. **Over-explained dialogue** - "'I'm angry,' she said angrily, because she was angry." Dialogue, tag, and gesture all naming the same emotion.
9. **Soft-launch tags** - "'Don't,' she said softly, gently, almost a whisper." Adverb-stacked tags.
10. **Universal articulacy** - every character finishes their thoughts in clean grammatical sentences. Humans interrupt themselves; AI characters don't.
11. **Therapy-speak in fantasy mouths** - "I need to process what happened to me." Modern wellness register on characters who shouldn't have it.
12. **Reflexive body inventories** - "She crossed her arms. She uncrossed them. She tucked her hair behind her ear." AI fills silences with fidget-loops.

**What to do instead:** Pick a verbal tic per character (a contraction
choice, a sentence-length habit, a vocabulary range) and enforce it on
rewrite. Replace named emotions with the specific thing the character is
looking at, or refusing to look at. Cut any dialogue tag that includes an
adverb. If a beat is "she let out a breath" or "their eyes met," replace
it with what the character is physically doing with their hands or where
they are standing in the room.

---

## 5. Worldbuilding and fantasy-specific tells

These are concentrated in fantasy/SFF because AI was trained on a great
deal of generic-fantasy prose and reaches for it whenever a setting is
undefined (Sudowrite 2025 documents AI defaulting to "cobwebs and creaking
floorboards" for any spooky-house prompt).

1. **"Ancient" as cheap modifier** - "An ancient stone. An ancient curse. An ancient evil." Default fantasy adjective that means nothing specific.
2. **Prophecy-as-clutch** - "The prophecy spoke of a chosen one." Lazy foreshadowing; LivingWriter flags prophecy as the most-overdone fantasy trope.
3. **Info-dump mid-scene** - character pauses to recite three paragraphs of world history. AI's default failure mode: encyclopedia entries inside dialogue.
4. **"The land of X"** - "In the land of Velmar." Travel-guide framing.
5. **"Stood as a testament to a forgotten age"** - "The tower stood as a testament to a forgotten age." Compound tell: testament + standing structure + vague antiquity.
6. **Generic-fantasy nouns** - "The beacon. The cacophony. The tapestry of fate." Vocabulary AI reaches for when worldbuilding is thin.
7. **"Long ago, in a time before..."** - "Long ago, in a time before the kings, the islands sang." Storybook narrator voice breaking close POV.
8. **Capitalized abstract nouns** - "The Order. The Pact. The Calling." Easy gravitas via capitalization without naming a specific thing.
9. **"Time forgot" / "ages past" / "ages untold"** - "A ruin time forgot." Antiquity-vague boilerplate.
10. **Map-tour establishing shots** - "To the north lay the mountains; to the south, the sea; to the east, the desert." AI's default geography paragraph.

**What to do instead:** If the world is named in this chapter, name only
what the POV character would notice and only in their idiom. Cut all
"ancient" modifiers and replace with a date, a regnal year, a named
ruler, or a specific material (basalt, salt-rotted oak). Move any history
beat into a fragmentary line of dialogue, not a paragraph of narration.
If the scene wants to feel old, show one object that has been repaired
badly.

---

## 6. Imagery clichés that read AI

Stock images that pre-date AI but appear in machine prose at far higher
frequency. The Cornell Daily Sun's February 2026 critique of AI romance
novels found some appearing once every seven pages.

1. **"The air was thick with..."** - default ambient opener, almost always followed by "tension," "smoke," or "the smell of."
2. **"Sent a shiver down [their] spine"** - top-ten reader-flagged AI cliché.
3. **"A chill ran down her spine / back"** - variant of above; equally flagged.
4. **"Her heart pounded in her chest"** - where else would it pound. AI's default fear-tell.
5. **"Time seemed to slow"** - AI's default high-stakes time dilation.
6. **"The world fell away" / "the world spun"** - default romantic/dramatic dissociation beat.
7. **"Her walls crumbled"** - Cornell flagged this appearing every seven pages in AI romance.
8. **"A single tear rolled down her cheek"** - greeting-card grief.
9. **"The silence was deafening"** - oxymoron as easy intensity.
10. **"Her breath caught in her throat" / "words caught in her throat"** - reflexive surprise-tell.
11. **"His blood ran cold"** - default visceral-fear cliché.
12. **"A storm raged within her"** - internal-weather metaphor for conflicted feelings.
13. **"Sunlight streamed through the window, casting [adjective] shadows"** - AI's default morning beat.
14. **"His jaw clenched" / "a muscle ticked in his jaw"** - default male-restraint signal.
15. **"For what felt like an eternity"** - default subjective-time stretch.
16. **"A flicker of [emotion] crossed [their] face"** - default micro-expression shorthand.

**What to do instead:** When any of these images is reached for, replace
it with one concrete sensory fact the POV character would actually notice
in their specific circumstances - what their hands are doing, what they
can see at chair-level, the temperature of one named object they are
touching. If the scene needs fear, show the character mis-hearing
something ordinary, not the heart pounding. If the scene needs grief,
show one practical thing the character has stopped doing.

---

## Notes on use

- These tells are cumulative, not individually damning. Any human writer can
  use any one of these unironically. The blacklist exists to catch
  concentration and pattern.
- Romance and fantasy genres carry pre-existing tolerance for many of these
  clichés. Calibrate by chapter target rather than absolute ban.
- Strongest single-instance flags (per tropes.fyi and Wikipedia editors):
  the "not just X, it's Y" pattern, the em-dash pivot, "delve / tapestry
  / realm" clusters, and "stands as a testament."
- Strongest pattern-level flags: tricolon rhythm running through every
  paragraph, mirrored scene closings, sensory-list openers, and
  single-register dialogue across the cast.

## How reviewers cite

When flagging an AI-ism, use `ai-isms §<section>.<item>` — e.g.
`ai-isms §2.1` for negative parallelism, `ai-isms §6.4` for "her heart
pounded in her chest." This file supersedes the prior working list and is
updated as new tells surface during reviews.

---

## Sources

- [Wikipedia: Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing) — canonical community guide.
- [TechCrunch: The best guide to spotting AI writing comes from Wikipedia (Nov 2025)](https://techcrunch.com/2025/11/20/the-best-guide-to-spotting-ai-writing-comes-from-wikipedia/)
- [NPR: Wikipedia editors publish new guide to help readers detect entries written by AI (Sept 2025)](https://www.npr.org/2025/09/04/nx-s1-5519267/wikipedia-editors-publish-new-guide-to-help-readers-detect-entries-written-by-ai)
- [Lit Hub: Here's a handy guide to help you spot AI writing](https://lithub.com/heres-a-handy-guide-to-help-you-spot-ai-writing/)
- [tropes.fyi — AI Writing Pattern Directory (32-trope catalog)](https://tropes.fyi/)
- [tropes.fyi: Name and shame AI writing — Ossama Chaib](https://ossama.is/writing/tropes)
- [Hacker News: Show HN — Tropes.fyi discussion](https://news.ycombinator.com/item?id=47088813)
- [Agent Wars: tropes.fyi releases a system-prompt catalog of AI writing tics (Mar 2026)](https://agent-wars.com/news/2026-03-12-tropes-fyi-publishes-a-comprehensive-catalog-of-ai-writing-tics-as-a-single)
- [AI:Productivity — A Catalog of 40+ LLM Writing Tropes You Should Put in Your System Prompt](https://aiproductivity.ai/news/llm-writing-tropes-catalog-system-prompt/)
- [Walter Writes: Most Common ChatGPT Words to Avoid in 2026](https://walterwrites.ai/most-common-chatgpt-words-to-avoid/)
- [PageOn.ai: The Most Overused ChatGPT Words in 2025](https://www.pageon.ai/blog/the-most-overused-chatgpt-words)
- [Plus AI: The most overused ChatGPT words](https://plusai.com/blog/the-most-overused-chatgpt-words)
- [SynkrLAB: ChatGPT's Most Overused Words and Phrases (310+ list)](https://synkrlab.com/chatgpts-most-overused-words-and-phrases/)
- [Florida State University News: Why Does ChatGPT 'Delve' So Much? (Feb 2025)](https://news.fsu.edu/news/science-technology/2025/02/17/why-does-chatgpt-delve-so-much-fsu-researchers-begin-to-uncover-why-chatgpt-overuses-certain-words/)
- [Science Advances: Delving into LLM-assisted writing in biomedical publications through excess vocabulary](https://www.science.org/doi/10.1126/sciadv.adt3813)
- [arXiv 2509.09596: How much are LLMs changing the language of academic papers after ChatGPT?](https://arxiv.org/abs/2509.09596)
- [PMC: Delving Into PubMed Records — How AI-Influenced Vocabulary Has Transformed Medical Writing](https://pmc.ncbi.nlm.nih.gov/articles/PMC12679996/)
- [The Conversation: ChatGPT is changing the way we write](https://theconversation.com/chatgpt-is-changing-the-way-we-write-heres-how-and-why-its-a-problem-239601)
- [Ruben.substack: Ban. (How to AI — "delve")](https://ruben.substack.com/p/delve)
- [ZeroGPT Plus: Why 'a testament to' is Overused in AI Writing](https://www.zerogpt.plus/blog/why-a-testament-to-is-overused-in-ai-writing/)
- [PB&J Marketing: How To Stop ChatGPT From Using Em Dashes (July 2025)](https://pbjmarketing.com/blog/how-to-stop-chatgpt-from-using-em-dashes)
- [Mark Lawrence: The AI vs authors results part 2 (Aug 2025)](https://www.marklawrence.buzz/2025/08/the-ai-vs-authors-results-part-2.html?m=1)
- [Rachel Neumeier: AI Flash Fiction Turing Tests (Sept 2025)](https://www.rachelneumeier.com/2025/09/17/ai-flash-fiction-turing-tests/)
- [Writers Helping Writers: How to Differentiate Stories from AI Slop (Sept 2025)](https://writershelpingwriters.net/2025/09/how-to-differentiate-stories-from-ai-slop/)
- [Chuck Wendig / Terribleminds: Writers Who Use AI Are Not Real Writers (Feb 2026)](https://terribleminds.com/ramble/2026/02/09/writers-who-use-ai-are-not-real-writers/)
- [Cornell Daily Sun: Hater Friday — Mass-Generating Literary Slop (Feb 2026)](https://www.cornellsun.com/article/2026/02/hater-friday-mass-generating-literary-slop-ai-written-books)
- [Sudowrite: Best AI for Fantasy Writers](https://sudowrite.com/blog/best-ai-for-fantasy-writers-worldbuilding-without-the-chaos/)
- [LivingWriter: Avoid These Fantasy Writing Clichés](https://livingwriter.com/blog/avoid-fantasy-writing-cliches/)
- [Tracey Lee Writes: 50 cliché phrases to avoid when writing fiction (Aug 2025)](https://traceyleewrites.com/2025/08/21/50-cliche-phrases-to-avoid-when-writing-fiction/)
- [Kathy Steinemann: 75+ Ways to Say "Heart Pounded"](https://kathysteinemann.com/Musings/heart-pounded/)
- [Writers Helping Writers: Nods, Smiles, and Frowns — Avoiding Talking Heads and Clichés](https://writershelpingwriters.net/2021/06/nods-smiles-and-frowns-how-can-we-avoid-talking-headsand-cliches/)
- [Cherryleaf: Indicators that suggest something was written by AI (Feb 2026)](https://www.cherryleaf.com/2026/02/indicators-that-suggest-something-was-written-by-ai/)
- [The Augmented Educator: The Ten Telltale Signs of AI-Generated Text](https://www.theaugmentededucator.com/p/the-ten-telltale-signs-of-ai-generated)
- [Beutler Ink: How to Spot AI Writing, According to Wikipedia](https://www.beutlerink.com/blog/how-to-spot-ai-writing)
- [The Decoder: Here's how to spot AI writing, according to Wikipedia editors](https://the-decoder.com/heres-how-to-spot-ai-writing-according-to-wikipedia-editors/)
- [Indisputably: What the New York Times Gets Right (and Wrong) About AI Writing (Dec 2025)](http://indisputably.org/2025/12/what-the-new-york-times-gets-right-and-wrong-about-ai-writing/)
- [Alyssa Day on Threads: on "let out a breath she didn't know she was holding" as romance cliché](https://www.threads.com/@authoralyssaday/post/DN6C_V1jTi7/)
