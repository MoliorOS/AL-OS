---
name: rfi-log
version: 0.0.1
status: specified
description: >
  Give every RFI a register entry and a number, and apply AL's missing severity convention
  (directive / flag / warning) instead of leaving consultant input to be misread either way.
domain: knowledge
module: M3
owner: —
access-tier: practice
triggers:
  - "log this RFI"
  - "what's the status of RFI [n]"
allowed-tools: TBD — not yet built
fixes: F25 (information hunting before issuing a new RFI), F27 (severity misclassification of consultant input)
---

Not yet built. AL has no existing RFI numbering convention or register — this skill would need to
establish one, not adopt one that already exists. Confirm with Wayne/Andrew before building.
