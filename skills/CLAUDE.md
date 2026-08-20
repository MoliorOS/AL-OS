# skills/ — human-invoked workflows

Grouped by the audit's module sequence (`ROADMAP.md`), not by folder convenience — the repo and
the commercial proposal should stay the same shape.

| Domain | Module | Depth in this build |
|---|---|---|
| `proposal/` | M1 | Full `SKILL.md` |
| `os/` | — | Full `SKILL.md` |
| `delivery/` | M2 | Specified stub (`status: specified`) |
| `practice/` | M2 | Specified stub |
| `knowledge/` | M3 | Specified stub |

**A specified stub is a commitment, not a placeholder.** It has real frontmatter, a real
description, named inputs/outputs, an owner, and the friction row it closes — everything except
the procedure body, which waits until its `context/` dependency is populated enough to write
against.

**Two rules every skill obeys, stated once here rather than repeated in each file:**

1. **Augmented by default.** Drafts a suggestion; a named human approves it. Full autonomy is the
   exception, and must be justified explicitly in the skill body when it appears.
2. **Deterministic where the underlying logic is deterministic.** Arithmetic and lookups are
   calculations, not prompts — see `context/commercial.md` for the clearest example (`fee-calc`).
