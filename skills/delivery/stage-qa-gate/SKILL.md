---
name: stage-qa-gate
version: 0.0.1
status: specified
description: >
  Make the "2ND CHECK / Qualified person" sign-off gate actually block stage progression, instead
  of being a blank cell in Checklists.xlsx. Requires a named qualified person to confirm before a
  project can be marked as having passed a stage gate.
domain: delivery
module: M2
owner: Wayne McKiernan
access-tier: practice
triggers:
  - "check the QA gate status for [project]"
allowed-tools: TBD — not yet built
fixes: F09 (2ND CHECK row blank across every observed copy of Checklists.xlsx — QA gate ornamental)
---

Not yet built. Depends on `${CLAUDE_PLUGIN_ROOT}/context/technical.md` being populated with Wayne's actual QA criteria
— currently that file is almost entirely open pending his interview.
