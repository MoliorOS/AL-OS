---
name: encode
version: 0.1.0
status: live
description: >
  Session-close ritual for AL-OS. Summarizes what changed this session and commits it, so context
  edits and skill work are never left uncommitted. Run at the end of a session that touched this
  repo.
domain: os
module: —
owner: —
access-tier: firm
triggers:
  - "/encode"
  - "end of session"
allowed-tools: Bash, Read
fixes: — (repo hygiene; not tied to a friction row)
---

## What this does

Closes a working session cleanly: reviews what changed, confirms nothing was left half-written
(no stray placeholders, no orphaned open-section edits), and commits.

## Procedure

1. `git status` and `git diff` — review every changed file.
2. Check for the things `AGENTS.md` forbids surviving to a commit: `[bracketed placeholder]`
   text in any `context/` or `roles/` file, a fact duplicated across more than one file (the
   one-home rule), a secret value anywhere.
3. If a `context/` file's `## Open — not yet captured` section was answered this session, confirm
   the open item was removed or updated, not left dangling next to its own answer.
4. Stage the relevant files (not a blanket `git add -A` unless genuinely everything changed
   deliberately).
5. Commit with a message describing what changed and why — this repo is client-owned, so commit
   history should read clearly to someone at AL, not just to Molior.
6. `git push`, if the session has push access and the user has confirmed it's wanted — this repo
   holds no auto-push assumption; check first per `AGENTS.md` Core Rule 9 (confirm before
   outward-facing actions).

## What it does not do

Does not touch AL-BRAIN, AL-AGENT, or Molior-app — this ritual is scoped to AL-OS only. Does not
auto-push without confirmation.
