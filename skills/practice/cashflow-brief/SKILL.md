---
name: cashflow-brief
version: 0.0.1
status: specified
description: >
  Produce the weekly cash-position view that today takes Jon manually reconciling his own
  spreadsheet against Xero and CMap — collapsing a 4-hop question into one command.
domain: practice
module: M2
owner: Jon Ackroyd
access-tier: director
triggers:
  - "what's our cash position"
  - "cashflow brief"
allowed-tools: TBD — not yet built
fixes: F21 (monthly board pack manual assembly), the Connectivity Matrix's 4-hop cashflow question (this plugin's context/stack.md)
---

Not yet built. Blocked on `admin/finance.md`'s largest open item — Jon's spreadsheet logic
(VAT handling, the seasonal £150k→£7k pattern) has not been extracted. This skill cannot
meaningfully replicate a calculation nobody has documented yet.

**Path note:** `admin/finance.md` is read relative to the working directory this skill runs in
— your own personal-os repo (e.g. `JON-OS`), not this plugin. Ships in every install; only
useful in a working directory that actually has `admin/finance.md` — see
`skills/CLAUDE.md`'s path-convention note.
