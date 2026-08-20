---
name: capture
version: 0.2.0
status: live
description: >
  Capture a decision, lesson, correction, or signal into the right context file — never a
  catch-all note. Use when someone states something worth remembering: a decision made, a
  correction to existing context, a lesson from a project. Writes to this plugin's own local
  install, then commits and pushes from there — not to the working directory the session is
  actually running in.
domain: os
module: —
owner: —
access-tier: firm
triggers:
  - "remember that..."
  - "note for next time..."
  - "we decided..."
  - "/capture"
allowed-tools: Read, Edit, Bash
fixes: L3 (email-as-knowledge-store) — this is the mechanism for keeping context/ current between full extraction sessions
---

## What this does, and the thing that's different since AL-OS became a plugin

Routes a piece of new knowledge to exactly one `context/` file and appends or updates it there —
never creates a new catch-all note, per `${CLAUDE_PLUGIN_ROOT}/AGENTS.md`'s one-home rule.

**The file being edited is not in your working directory.** `context/` is plugin content, shipped
from `${CLAUDE_PLUGIN_ROOT}/context/` — a local git clone of AL-OS that lives at your plugin
install path, separate from whatever personal-os repo (`JON-OS`, `OLI-OS`, …) your session's cwd
actually is. Editing it only changes *your own local install* until it's committed and pushed
from inside `${CLAUDE_PLUGIN_ROOT}` back to `github.com/MoliorOS/AL-OS` — skip that and the edit
quietly vanishes the next time the plugin updates, or simply never reaches anyone else's install.

## Procedure

1. **Identify what kind of thing this is** — a correction to existing content, a new fact, a
   decision, or a lesson — and check `${CLAUDE_PLUGIN_ROOT}/AGENTS.md`'s routing table for its
   home.
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
7. **Commit and push from inside the plugin install, not your working directory:**
   ```bash
   cd "${CLAUDE_PLUGIN_ROOT}"
   git add -A
   git commit -m "capture: {one-line description}"
   git push origin main
   ```
   `git push` is in this plugin's `settings.json` `ask` list — state what's about to be pushed,
   and to which repo (`MoliorOS/AL-OS`, not the working directory's own repo), before it prompts.
   If the push fails because the plugin install is stale relative to `origin/main`, `git pull
   --rebase` first — don't force-push over someone else's capture.

## What it does not do

Does not write to AL-BRAIN (that's a different repo, a different write path — `gbrain` only,
per `${CLAUDE_PLUGIN_ROOT}/AGENTS.md` Core Rule 1). Does not create new top-level `context/`
files without a clear gap in the routing table. Does not write to the working directory's own
`admin/`, `working-style.md`, or `skills/` — those are personal-os content and belong to whoever
owns that repo, not this skill's job.
