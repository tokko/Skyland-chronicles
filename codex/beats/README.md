# Beats

## Files

- `hard.md` — the spine. Auto-included every turn. Cannot be skipped.
- `soft.md` — the scaffold. Flexible.
- `book-1.md`, `book-2.md`, `book-3.md` — per-book beat lists, ordered. Each entry references its hard/soft beat by ID.

## Beat IDs

Format: `<H|S>-<book>-<short-slug>`. Example: `H-1-fall-of-the-aerie`, `S-2-veyra-confession`. The `H` / `S` prefix is the source-of-truth — `hard.md` only lists IDs starting with `H-`.

## Lifecycle

1. **Extracted** during the initial manuscript ingest.
2. **Classified** as hard or soft, presented to the user for approval.
3. **Distributed** to per-book lists, ordered.
4. **Scheduled** onto scene cards.
5. **Landed** when a scene is accepted; the beat's status updates with the landing scene reference.
6. **Audited** at the end of each book: every hard beat for that book must be `landed`.
