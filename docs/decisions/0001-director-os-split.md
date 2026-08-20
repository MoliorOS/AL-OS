# ADR 0001 — Administration tier splits out into DIRECTOR-OS

**Status:** Decided, 2026-08-20

## Decision

`context/finance.md`, `context/governance.md`, and the director-only skills
(`skills/practice/cashflow-brief`, `skills/practice/invoice-ready`) move out of AL-OS into a new,
separate repo: `DIRECTOR-OS`. Access is restricted to Jon, Oliver, and Jo Greenoak — the same set
named in `roles/director.md`. AL-OS itself is checked in as a git submodule of DIRECTOR-OS, so
directors get Firm/Practice content alongside Administration content without opening two repos
by convention alone.

AL-OS keeps everything else: Firm-zone and Practice-zone `context/`, and every skill whose
`access-tier` frontmatter is `firm` or `practice`.

## Why

`roles/README.md` documents a four-zone access model (Firm / Practice / Director / Project)
mirroring AL's JumpCloud permissions, with an explicit design constraint: *"If an architect
cannot see the finance folder, Claude cannot either."* But that model was a convention inside one
repo — anyone who clones AL-OS gets every zone's content, regardless of what `roles/{their-
role}.md` says they're allowed to see. Survivable while access is Jon + Oliver only, but breaks
the moment the wider senior team and practice come online — a single shared repo cannot enforce
that a git clone stops at a folder boundary.

The practice's own Context Library states the principle directly: *"Confidentiality cannot be
instructed... Separate stores, not labels."* A `roles/` file inside the same repo as the content
it's supposed to gate is a label, not a store boundary. Splitting Administration content into its
own repo makes the boundary structural.

## What moved

| File | From | To |
|---|---|---|
| `context/finance.md` | AL-OS | `DIRECTOR-OS/admin/finance.md` |
| `context/governance.md` | AL-OS | `DIRECTOR-OS/admin/governance.md` |
| `skills/practice/cashflow-brief/SKILL.md` | AL-OS | `DIRECTOR-OS/skills/practice/cashflow-brief/SKILL.md` |
| `skills/practice/invoice-ready/SKILL.md` | AL-OS | `DIRECTOR-OS/skills/practice/invoice-ready/SKILL.md` |

## Consequence

`AGENTS.md`'s routing table, `roles/director.md`, and `roles/README.md`'s zone table now point to
`DIRECTOR-OS` for Administration-tier facts instead of holding the content directly. Any new
skill or context file that needs finance or governance data should live in `DIRECTOR-OS`, not
here — check `roles/README.md`'s zone table before creating a new `context/` file.

## Not decided here

Whether `DIRECTOR-OS` gets its own AL-BRAIN-equivalent vault, or reads AL-BRAIN with a
director-scoped query filter, is out of scope for this split.
