---
name: portfolio-health
version: 0.0.1
status: specified
description: >
  Surface at-risk projects across the ~40 live portfolio without Jon having to dig project by
  project — addresses tracker decay ("they're saying 75% complete... it's not 75%, it's 50%").
domain: practice
module: M2
owner: Andrew Bonner
access-tier: practice
triggers:
  - "which projects are at risk"
  - "portfolio health check"
allowed-tools: TBD — not yet built
fixes: F16 (at-risk projects not surfaced), F17 (tracker decay)
---

Not yet built. Needs a defined data source for project status — CMap CSV export is the
audit-specified path (see `SYSTEM.md` §3) but that pipeline isn't wired up in this repo's scope.
