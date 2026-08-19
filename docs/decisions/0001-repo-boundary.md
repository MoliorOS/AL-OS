# ADR 0001 — Repo boundary: AL-OS as the fourth repo

**Status:** Decided, 2026-08-19 (this build)

## Decision

AL-OS is a new, fourth repo — not folded into AL-AGENT, not a fork of AL-BRAIN. The boundary
across all four repos is: *does a human invoke it, or does a clock?*

- **`Molior-app`** — client-agnostic platform infra. Molior only.
- **`AL-BRAIN`** — the vault. Written only through `gbrain`. Nobody opens it directly.
- **`AL-AGENT`** — unattended runtime: crontab, jobs, deterministic scripts.
- **`AL-OS`** — human-invoked: identity, context, skills, roles, docs, roadmap. This repo.

## Why

Three repos already existed (`Molior-app`, `AL-BRAIN`, `AL-AGENT`) but none of them is a place a
person at AL opens to understand or operate the practice. `AL-AGENT`'s own `AGENTS.md` describes
it as automation infrastructure, explicitly not a Molior *or* AL-facing operating layer. The
audit's own promise — "all of it owned outright... stop working with Molior tomorrow and keep
everything" — needs a human-legible artifact to make good on, and none existed.

## Also settled by this decision

`AL-AGENT/AGENTS.md` (2026-08-06) states every script lives in AL-AGENT, nothing is committed to
AL-BRAIN. `AL-BRAIN/README.md` separately describes a brain-resident skillpack. These contradict
each other. This ADR settles it: `AL-BRAIN/skillpack.json` keeps `skills: []` permanently. All
human-invoked skills live in AL-OS; all unattended job code lives in AL-AGENT. The vault holds
knowledge, never code.

## Consequence

`AL-AGENT/package.json` still names itself `"al-os"` — a fossil from before its August 2026
rename. That should be corrected to avoid confusion, but doesn't block this repo claiming the
name; AL-AGENT is a different repo with a different purpose.

## Not decided here

The system-of-record question (which tool is canonical for deals, fees, and project state) is
explicitly out of scope for this build. See `SYSTEM.md` §3 for the stack as it stands today.
