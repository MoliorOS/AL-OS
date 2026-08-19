---
name: invoice-ready
version: 0.0.1
status: specified
description: >
  Flag invoices ready to release and apply the three hold-reason categories (work not delivered /
  client dispute / director-personal) that today exist only in the invoice-release meeting.
domain: practice
module: M2
owner: Jon Ackroyd
access-tier: director
triggers:
  - "which invoices are ready to release"
  - "invoice-ready check"
allowed-tools: TBD — not yet built
fixes: F20 (invoice-release meeting — "knowledge in heads"; ~15% of issuable value held on unrecorded reasoning)
---

Not yet built. Blocked on `context/finance.md`'s open item — the invoice-release rubric has never
been written down. This skill can only flag "ready to send" once the hold-reason logic actually
exists somewhere other than Jon's judgment in the room.
