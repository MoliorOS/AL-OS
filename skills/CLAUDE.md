# skills/ — human-invoked workflows

Grouped by the audit's module sequence (`${CLAUDE_PLUGIN_ROOT}/ROADMAP.md`), not by folder convenience — the repo and
the commercial proposal should stay the same shape.

| Domain | Module | Depth in this build |
|---|---|---|
| `proposal/` | M1 | Full `SKILL.md` |
| `os/` | — | Full `SKILL.md`, including `populate` — the interview-driven mechanism for closing `## Open` gaps |
| `delivery/` | M2 | Specified stub (`status: specified`) |
| `practice/` | M2 | Specified stub |
| `knowledge/` | M3 | Specified stub |

**A specified stub is a commitment, not a placeholder.** It has real frontmatter, a real
description, named inputs/outputs, an owner, and the friction row it closes — everything except
the procedure body, which waits until its `${CLAUDE_PLUGIN_ROOT}/context/` dependency is populated enough to write
against.

**Two rules every skill obeys, stated once here rather than repeated in each file:**

1. **Augmented by default.** Drafts a suggestion; a named human approves it. Full autonomy is the
   exception, and must be justified explicitly in the skill body when it appears.
2. **Deterministic where the underlying logic is deterministic.** Arithmetic and lookups are
   calculations, not prompts — see `${CLAUDE_PLUGIN_ROOT}/context/commercial.md` for the clearest example (`fee-calc`).

## Path convention — plugin-relative vs. working-directory-relative

AL-OS is a Claude Code **plugin** (`.claude-plugin/plugin.json`) — it ships skills, but every
person runs them from their own **personal-os working directory** (`JON-OS`, `OLI-OS`, …), not
from inside this repo. A skill's file paths mean different things depending on what they name:

- **This plugin's own content** — `${CLAUDE_PLUGIN_ROOT}/context/`, `${CLAUDE_PLUGIN_ROOT}/roles/`, `${CLAUDE_PLUGIN_ROOT}/docs/`, `${CLAUDE_PLUGIN_ROOT}/ontology/`, other `skills/` —
  is not guaranteed to sit at a predictable relative path from the working directory. When a
  skill needs to read one of these, resolve it via `${CLAUDE_PLUGIN_ROOT}` (e.g.
  `${CLAUDE_PLUGIN_ROOT}/context/commercial.md`), not a bare relative path, unless the skill is
  explicitly documented as plugin-root-relative already.
- **Working-directory content** — `admin/*.md`, `working-style.md`, `drafts/` — is read as a
  bare relative path (`admin/finance.md`), on the assumption it resolves against whatever
  personal-os repo the user has open. This is deliberate: it's what makes one skill work
  correctly for Jon (`JON-OS/admin/finance.md`) and Oliver (`OLI-OS/admin/finance.md`) without
  per-person forks of the skill itself. A skill referencing working-directory content simply does
  nothing useful if run somewhere that content doesn't exist — that's the access boundary, not a
  bug (see `skills/practice/cashflow-brief` and `invoice-ready` for the pattern).
