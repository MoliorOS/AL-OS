# AL-OS

Ackroyd Lowrie's shared skill layer — a **Claude Code plugin**, not a working directory. It ships
the practice's skills, context, roles, and process, built so Claude can act inside the practice's
real constraints instead of generic advice. Every person runs it from their own **personal-os**
repo, not from inside this one.

## Install

```bash
claude plugin install https://github.com/MoliorOS/AL-OS
```

Run this from inside your own personal-os repo (e.g. `JON-OS`, `OLI-OS`) — that's your working
directory; this plugin supplies the skills and shared context you use from it. New to the fleet
and don't have a personal-os repo yet? Install this plugin somewhere, then run `skills/os/onboard`
to get one scaffolded and created for you.

## If you're new here

Start with three files, in order:

1. **`IDENTITY.md`** — who Ackroyd Lowrie is, and why this plugin exists.
2. **`AGENTS.md`** — the routing table. Every kind of information has exactly one home; this
   file tells you where.
3. **`ROADMAP.md`** — what's built, what's next, and why.

## What's in here

- **`context/`** — the practice's tacit knowledge, written down: how fees are calculated, what's
  in scope, how projects move through RIBA stages, how cashflow decisions actually get made.
  Some files are complete; some are honestly incomplete because the knowledge only lives in
  someone's head and hasn't been captured yet — those files say so explicitly, and say who.
- **`skills/`** — things this plugin can *do*: draft a scope, calculate a fee, search past
  decisions, scaffold a new person's personal-os repo. Grouped to match the phased build the
  May 2026 audit specified.
- **`roles/`** — who can see what. Mirrors AL's existing JumpCloud permissions.
- **`docs/`** — the audit, the workshop output, the architecture thinking, and this plugin's own
  ADRs. Reference material, not working files.
- **`ontology/`** — record schemas (Person/Company/Deal/Project) for AL-BRAIN.

## What this is not

Not the vault (that's `AL-BRAIN`), not the unattended automation (that's `AL-AGENT`), not the
Molior platform infra (that's `Molior-app`), and — as of 2026-08-20 — not a working directory at
all. Administration-tier content (finance, governance, pipeline strategy) and personal working
style live in each person's own personal-os repo (`JON-OS`, `OLI-OS`, …), never here. See
`docs/decisions/0002-al-os-becomes-plugin.md`.

## Owned by Ackroyd Lowrie

Built by Molior, but designed to be owned outright: local files, no SaaS lock-in. If the
engagement with Molior ends, this repo — and everything in it — stays.
