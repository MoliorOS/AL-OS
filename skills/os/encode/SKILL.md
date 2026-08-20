---
name: encode
version: 0.2.0
status: live
description: >
  Session-close ritual. Commits and pushes whatever changed this session — your own personal-os
  repo (the working directory) and, separately, this plugin's own install if `capture` or
  `populate` wrote to shared context. Two repos, checked independently. Run at the end of any
  session that touched either.
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

## What this does, and why it now checks two repos

Before AL-OS was a plugin, "close the session" meant one repo: AL-OS itself. Now a session
usually runs with cwd inside a **personal-os repo** (`JON-OS`, `OLI-OS`, …) and the AL-OS plugin
installed alongside it at `${CLAUDE_PLUGIN_ROOT}`. Either, both, or neither may have uncommitted
work — check both, independently, don't assume.

## Procedure

### 1. Close the working directory (your personal-os repo)

```bash
git status
git diff
```

1. Review every changed file. Check for `[bracketed placeholder]` text, a fact duplicated across
   more than one file, a secret value anywhere.
2. If an `admin/*.md` file's `## Open — not yet captured` section was answered this session,
   confirm the open item was removed or updated, not left dangling next to its own answer.
3. Stage the relevant files (not a blanket `git add -A` unless genuinely everything changed
   deliberately).
4. Commit with a message describing what changed and why.
5. `git push`, if the session has push access and the user has confirmed it's wanted — check
   first per `${CLAUDE_PLUGIN_ROOT}/AGENTS.md` Core Rule 4 (confirm before outward-facing
   actions). If nothing changed, say so and move on — don't force a commit.

### 2. Close the plugin install, only if `capture` or `populate` ran this session

```bash
cd "${CLAUDE_PLUGIN_ROOT}"
git status
```

If this shows uncommitted changes, `skills/os/capture` should already have committed and pushed
them as part of its own procedure — if it didn't (e.g. the session was interrupted mid-capture),
finish that here: review, commit, push, following the same discipline as step 1. If `git status`
is clean, say so plainly and skip — don't touch this repo on every `/encode` out of habit, only
when something actually changed here.

### 3. Report

State plainly what happened in each repo: committed and pushed / nothing to commit / left
uncommitted with a reason. Don't conflate the two into one summary line — they're different
repos with different consequences if left dirty.

## What it does not do

Does not touch AL-BRAIN, AL-AGENT, or Molior-app. Does not auto-push without confirmation, in
either repo.
