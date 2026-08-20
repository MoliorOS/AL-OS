# Role — Director

**Tier:** A
**Zone(s):** Firm, Practice, Director
**Who:** Jon Ackroyd, Oliver Lowrie, Jo Greenoak (Operations Director — Director-zone by
authority, not by title match)

## What you can see

Everything in this repo, plus `DIRECTOR-OS` (Administration + Personal tier — a separate,
access-restricted repo since 2026-08-20; see `docs/decisions/0001-director-os-split.md`). This
is the only role with access to `DIRECTOR-OS/admin/finance.md` (cashflow, invoice-release) and
`DIRECTOR-OS/admin/governance.md` (GDPR, permissions).

## What you can do

Every skill in this repo's `skills/`, plus everything in `DIRECTOR-OS/skills/`. In practice, the
ones most relevant to this role:
- `skills/proposal/*` — especially sign-off on Path B/C proposals (`context/delivery.md`)
- `DIRECTOR-OS/skills/practice/cashflow-brief`, `invoice-ready` — once built against
  `DIRECTOR-OS/admin/finance.md`
- `skills/os/*` — capture, ask, onboard new roles

## Your rhythm

Jon and Oliver open `DIRECTOR-OS` at the points named in `admin/finance.md`'s weekly cycle
(Thursday resourcing, weekly finance meeting) and whenever a Path B/C fee proposal needs
sign-off. Jo Greenoak's access reflects her role in the ALAQEP sign-off chain and JumpCloud
administration, not day-to-day proposal work.

## Escalation

None needed — this is the top of the access model. If something in `context/` is wrong or
missing, this role is the one who can authoritatively correct it (especially `scope.md`, and
`DIRECTOR-OS/admin/finance.md`, which depend on Oliver and Jon personally).
