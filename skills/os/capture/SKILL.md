---
name: capture
version: 0.1.0
status: live
description: >
  Capture a decision, lesson, correction, or signal into the right context file — never a
  catch-all note. Use when someone states something worth remembering: a decision made, a
  correction to existing context, a lesson from a project.
domain: os
module: —
owner: —
access-tier: firm
triggers:
  - "remember that..."
  - "note for next time..."
  - "we decided..."
  - "/capture"
allowed-tools: Read, Edit
fixes: L3 (email-as-knowledge-store) — this is the mechanism for keeping context/ current between full extraction sessions
---

## What this does

Routes a piece of new knowledge to exactly one `context/` file and appends or updates it there —
never creates a new catch-all note, per `AGENTS.md`'s one-home rule.

## Procedure

1. **Identify what kind of thing this is** — a correction to existing content, a new fact, a
   decision, or a lesson — and check `AGENTS.md`'s routing table for its home.
2. **If it corrects something already written**, edit that file directly rather than appending a
   contradictory note elsewhere. State the correction plainly.
3. **If it fills an `## Open — not yet captured` item**, write it into the relevant section of
   the file and remove or update the open item — don't leave a stale open question sitting next
   to its own answer.
4. **If it's genuinely new** and doesn't fit an existing open item, add it to the most relevant
   section, or a new one if needed — still inside the single correct file, not a new document.
5. **If it doesn't clearly belong anywhere** (rare, given the routing table's coverage), say so
   explicitly and ask rather than inventing a new file — a stray file breaks the one-home rule
   for everyone downstream.
6. **Never write a placeholder.** If the capture is incomplete (e.g. "Oliver mentioned something
   about retrofit pricing but didn't finish the thought"), write exactly that, not a filled-in
   guess.

## What it does not do

Does not write to AL-BRAIN (that's a different repo, a different write path — `gbrain` only,
per `AGENTS.md` Core Rule 1). Does not create new top-level `context/` files without a clear gap
in the routing table.
