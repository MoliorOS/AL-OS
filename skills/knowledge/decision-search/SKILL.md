---
name: decision-search
version: 0.0.1
status: specified
description: >
  Answer "why did we decide X on project Y" by reconstructing the chain across meeting notes and
  email — reasoning, not retrieval. The proof-of-concept the Hive Brain architecture doc names
  explicitly as the demo that sells this whole layer.
domain: knowledge
module: M3
owner: —
access-tier: practice
triggers:
  - "why did we decide [X] on [project]"
  - "find the decision about..."
allowed-tools: TBD — not yet built
fixes: F28 (information lost when someone's away; decisions in email threads can't be audited), L3 generally
---

Not yet built. Depends on decisions actually being captured as a distinct object first — see
`${CLAUDE_PLUGIN_ROOT}/docs/architecture/hive-brain-concept-and-meeting-plan.md` §3 for the full design, and
`skills/knowledge/meeting-minutes` / `action-brief` for the capture side this reads from. This is
explicitly out of scope for this build (the ontology fork that would formalize a `decision` type
is deferred — see `${CLAUDE_PLUGIN_ROOT}/docs/decisions/0001-repo-boundary.md`).
