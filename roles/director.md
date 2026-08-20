# Role — Director

**Tier:** A
**Zone(s):** Firm, Practice, Director
**Who:** Jon Ackroyd, Oliver Lowrie, Jo Greenoak (Operations Director — Director-zone by
authority, not by title match)

## What you can see

Everything this plugin ships (`context/`, `roles/`, `docs/`, `ontology/`), plus your own
personal-os repo's `admin/finance.md` (cashflow, invoice-release) and `admin/governance.md`
(GDPR, permissions) — since 2026-08-20, `JON-OS`/`OLI-OS`, not a shared repo (see
`docs/decisions/0002-al-os-becomes-plugin.md`). This is the only role with `admin/*.md` content
in its personal-os repo at all.

## What you can do

Every skill this plugin ships. In practice, the ones most relevant to this role:
- `skills/proposal/*` — especially sign-off on Path B/C proposals (`context/delivery.md`)
- `skills/practice/cashflow-brief`, `invoice-ready` — once built against your own
  `admin/finance.md`; these ship to everyone but only do anything where `admin/finance.md`
  exists, i.e. in a director's own personal-os repo
- `skills/os/*` — capture, ask, populate, onboard new people

## Your rhythm

Jon and Oliver open their own personal-os repo (`JON-OS`, `OLI-OS`) at the points named in
`admin/finance.md`'s weekly cycle (Thursday resourcing, weekly finance meeting) and whenever a
Path B/C fee proposal needs sign-off. Jo Greenoak's access reflects her role in the ALAQEP
sign-off chain and JumpCloud administration, not day-to-day proposal work.

## Escalation

None needed — this is the top of the access model. If something in `context/` is wrong or
missing, this role is the one who can authoritatively correct it (especially `scope.md`, and
each director's own `admin/finance.md`, which depend on Oliver and Jon personally).
