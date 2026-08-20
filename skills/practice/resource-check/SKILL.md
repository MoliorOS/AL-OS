---
name: resource-check
version: 0.0.1
status: specified
description: >
  Answer "who's available next week, and at what revenue impact" without the current three-hop
  chain (CMap resourcing → Google Calendar → ask Andrew).
domain: practice
module: M2
owner: Andrew Bonner
access-tier: practice
triggers:
  - "who's free next week"
  - "resource check for [project]"
allowed-tools: TBD — not yet built
fixes: F12 (loose timesheet/workload entry), F14 (Thursday resourcing meeting — "talking not doing"), F15 (CMap dual-tab, not reconciled)
---

Not yet built. Depends on connecting CMap resourcing and Google Calendar (both named as
Plug-and-Play in `SYSTEM.md` §3-4) — not yet wired in this build's scope.
