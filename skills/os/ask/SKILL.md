---
name: ask
version: 0.1.0
status: live
description: >
  Answer a question about how the practice works, sourced only from this repo's context/ and
  docs/ — never invented, never sourced from general AEC knowledge presented as AL-specific fact.
  Use for any "how do we..." or "what's our..." question about AL's process, fees, or policy.
domain: os
module: —
owner: —
access-tier: firm
triggers:
  - "what's AL's [fee formula / scope for / policy on]..."
  - "how do we..."
  - "/ask"
allowed-tools: Read, Grep
fixes: — (cross-cutting; supports every friction row by making captured knowledge findable)
---

## What this does

Answers a question by reading `context/` and `docs/` — nothing else, and nothing invented.
Distinguishes clearly between three kinds of answer:

1. **Documented and confirmed** — cite the specific `context/` file and quote or closely
   paraphrase it.
2. **Documented but flagged open** — the file has a relevant `## Open — not yet captured` entry;
   say so, name the owner, don't guess at a value.
3. **Not covered anywhere in this repo** — say so plainly. Do not fall back to general AEC
   industry knowledge and present it as if it were AL's own practice.

## Procedure

1. Check `AGENTS.md`'s routing table for which `context/` file should hold the answer.
2. Read that file in full — not just a grep hit, since the surrounding context (owner, migrated
   vs. extracted status, open questions) changes how confidently to answer.
3. If the routing table doesn't obviously point anywhere, check `docs/` — the audit and workflow
   specs hold detail that hasn't been distilled into `context/` yet.
4. Answer with the source named. If the honest answer is "this isn't captured yet, and here's who
   would know," say exactly that — per `AGENTS.md`'s "templates are scaffolds" rule, this applies
   to answers too: an honest gap beats a plausible-sounding guess.

## What it does not do

Does not answer from training-data knowledge about architecture practice in general and present
it as AL's specific process. Does not access AL-BRAIN, Notion, Pipedrive, or any live system —
this skill only reads what's in this repo.
