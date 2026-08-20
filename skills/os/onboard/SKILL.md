---
name: onboard
version: 1.0.0
status: live
description: >
  Bring a new person into the fleet: determine their role and access zone, interview them for
  their own working-style, scaffold a brand-new personal-os repo for them (e.g. JON-OS, OLI-OS),
  seed it with role-appropriate content, create the GitHub repo, and commit. Use when a new team
  member has installed the AL-OS plugin and needs their own working directory, or when someone
  says "onboard me", "set up my personal-os", "/os-onboard", or "/onboard".
domain: os
module: —
owner: —
access-tier: firm
triggers:
  - "onboard me"
  - "set up my personal-os"
  - "/os-onboard"
  - "/onboard"
allowed-tools: Read, Write, Bash, AskUserQuestion
fixes: — (rollout infrastructure — supports the Phase A/B/C adoption path in ROADMAP.md; also the mechanism DIRECTOR-OS's retirement depends on — see docs/decisions/)
---

## What this does, and what changed

This used to only scope *access within AL-OS itself*. Since AL-OS became a plugin
(`.claude-plugin/plugin.json`) rather than a working directory, that's no longer where a new
person's own facts and drafts live — they need their **own repo**. This skill now does the full
job: determine role, interview for personal content, scaffold and create that repo, seed it with
role-appropriate content, and hand back a working directory the person can actually open Claude
Code in.

**What's proven vs. what's a first draft:** the director-tier scaffold shape is real — `JON-OS`
and `OLI-OS` exist and are the reference this skill's director branch is built from. Every other
role's scaffold shape (technical, project-lead, architect, operations) is a first pass, honestly
marked as such below — don't treat it as validated until a real Tier B/C onboarding has actually
run through it once.

## Procedure

### 1. Determine role and access zone

Same logic as before this skill changed:

1. Ask (or read from `context/people.md`) the person's actual JD tier (001–009 ladder) and
   function — director, technical, project delivery, operations, or wider practice.
2. Map onto an existing `roles/{role}.md` file (`director`, `technical`, `project-lead`,
   `architect`, `operations`) via `roles/README.md`'s zone table. If none fits, copy
   `roles/_template.md` and fill it in — don't grant broader access than their zone requires.
3. Confirm the tier against `roles/README.md`'s rollout sequence (Tier A/B/C) — flag if
   onboarding someone ahead of the stated sequence without an explicit reason.
4. State explicitly what they will **not** have access to, not just what they will.

### 2. Name the new repo

Convention: the person's short/informal name (as they'd actually go by, not their full legal
first name — `OLI-OS` not `OLIVER-OS`), uppercased, with `-OS` appended. Ask directly if unclear
from `context/people.md` which short form they use. Confirm the exact name with the person
before creating anything — this becomes a real GitHub repo name and can't be silently redone.

### 3. Scaffold content, by role

**Every role gets this base** (proven shape — `JON-OS`, `OLI-OS`):
```
{NAME}-OS/
  AGENTS.md          # this repo's own manifest — session startup, routing, core rules
  CLAUDE.md           # "@AGENTS.md" pointer, same convention as AL-OS's own root
  README.md
  working-style.md
  drafts/
  skills/
    CLAUDE.md          # explains this folder is for their own skills, not firm-wide ones
```
Generate `AGENTS.md` from `JON-OS`'s or `OLI-OS`'s own as the template — swap the name and
pronouns, keep the structure (Session Startup, Routing table, Core Rules, Origin) identical.
`skills/` starts empty except its own `CLAUDE.md` — never invent a placeholder skill to fill it.

**Director role adds** (proven shape — `JON-OS`, `OLI-OS`):
```
{NAME}-OS/
  admin/{finance,governance,pipeline-fee-strategy,project-commercials,resourcing}.md
```
`admin/*.md` is **role-shared, not person-specific** — these are the same underlying facts
(the practice's finance logic, governance gaps, pipeline strategy) regardless of which director
is asking. Seed them by copying from an existing director's repo (`JON-OS` or `OLI-OS`, whichever
is reachable) rather than re-interviewing from scratch — only diverge them later if that
director's own repo genuinely needs to record something different. `working-style.md` is always
a fresh self-interview (step 4) — never copied from someone else, unlike `admin/`.

**Every other role** (first-pass shape, not yet validated by a real onboarding): just the base
above, no `admin/`. Practice- and Firm-zone content already lives in the AL-OS plugin itself
(`context/`, accessible to whoever's role permits it per `roles/README.md`), so there's nothing
role-shared to seed into a non-director's personal repo yet. If a real onboarding surfaces a need
for role-shared content at another tier (e.g. a technical-standards working set for Wayne), add
it here and update this section — don't invent it speculatively now.

### 4. Interview for working-style.md

Ask the person directly, conversationally (this is a self-interview, not filled in by anyone
else — see `skills/os/populate` for the same discipline applied to owned `context/` gaps):

1. **Communication and tone** — how should drafts written on their behalf sound? Anything from
   `context/brand.md`'s firm-wide voice they personally deviate from?
2. **Delegation comfort** — which decisions are they comfortable having drafted for sign-off vs.
   which they want surfaced with no suggestion attached? Extends AL-OS's firm-wide "augmented,
   not autonomous" rule into their own actual comfort line.
3. **Working rhythm** — when do they actually expect to open this repo, and is there anything
   about session start they want beyond what the plugin's own hook already shows?

Write directly into `working-style.md`. If they only answer one question, write that one and
leave the rest as an honest open item — don't pad with generic defaults.

### 5. Create the repo

```bash
mkdir -p {NAME}-OS
cd {NAME}-OS
git init -q
git add -A
git commit -q -m "Scaffold {NAME}-OS via AL-OS skills/os/onboard"
gh repo create MoliorOS/{NAME}-OS --private --source=. --push
```

`gh repo create` and `git push` are both in this plugin's `settings.json` `ask` list — state
what's about to be created and pushed before it prompts, same as every other outward-facing
action in this repo.

### 6. Hand off

Tell the person plainly:
- Their repo's location and GitHub URL.
- To open Claude Code with this new repo as the working directory, with the AL-OS plugin
  installed (`claude plugin install https://github.com/MoliorOS/AL-OS` — see AL-OS's own
  `README.md`).
- What they can and can't see, restated from step 1.
- If director-tier: that `admin/*.md` was seeded from an existing peer's repo and may already be
  slightly stale — worth a skim, not assumed current forever.

## What it does not do

Does not grant JumpCloud access itself — this skill scopes what a person's own repo contains,
assuming JumpCloud is the source of truth for whether they should have any access at all. Does
not keep two directors' `admin/*.md` in sync after scaffolding — each repo evolves independently
once created; reconciling drift between `JON-OS` and `OLI-OS` is a manual `skills/os/capture`-style
edit, not something this skill watches for.
