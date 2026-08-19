# roles/ — access zones and rollout tiers

AL-OS does not invent a permission model. It mirrors the one AL already runs on JumpCloud — the
audit's own constraint, stated directly: *"If an architect cannot see the finance folder, Claude
cannot either. The AIOS operates within existing JumpCloud permissions."*

## Four access zones

| Zone | Contents | Who |
|---|---|---|
| **Firm** | `context/practice.md`, `people.md`, `clients.md`, `brand.md`; `docs/policies/`; `roles/` itself | Everyone |
| **Practice** | `context/commercial.md`, `scope.md`, `delivery.md`, `technical.md`; `skills/proposal/`, `skills/delivery/` | Senior team |
| **Director** | `context/finance.md`, `governance.md`; pipeline value, cashflow, invoice-release calls | Jon, Oliver, Jo Greenoak |
| **Project** | Project-scoped decisions, drawings, scope records (not yet built in this pass — see `projects/` deferral) | That project's team |

Every `context/` file belongs to exactly one zone — check the table above (or that file's own
header) before granting access to something new, rather than guessing.

## Rollout tiers (the audit's Phase A/B/C, mapped to repo access)

- **Tier A — now.** Jon, Oliver, Biyi. Full repo access; Biyi is the embedded technical champion.
- **Tier B — next.** Wayne, Andrew, Joe, Jo Greenoak. Role-scoped — see their individual files
  below. Wayne's technical judgement should move earlier in the fee-proposal sequence once he's
  onboarded (`context/delivery.md` names exactly where it currently lands too late).
- **Tier C — later.** The full practice, roughly 15 architects. Biyi first, on his own projects,
  since he already has a working AI-assisted pattern to extend from.

## Surface question — not yet settled

Most of the practice will never open a terminal or a Claude Code session directly. The original
audit assumed delivery through Claude Cowork; that decision should be confirmed before Tier B
onboarding starts, not worked around ad hoc. Track the decision in `docs/decisions/` once made.

## Role files

- `director.md` — Jon, Oliver, Jo Greenoak (Director zone + everything below it)
- `technical.md` — Wayne McKiernan (Practice zone, technical-standards focus)
- `project-lead.md` — Andrew Bonner, Joe Maguire (Practice zone, delivery focus)
- `architect.md` — the wider practice, Tier C (Firm zone + project-scoped access only)
- `operations.md` — Sam Carlisle, Ellen Smith, Rebecca Latham, Anita Ford (Firm zone,
  operations-specific skills)
- `_template.md` — copy this when a new role is needed
