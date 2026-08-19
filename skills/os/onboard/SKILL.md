---
name: onboard
version: 0.1.0
status: live
description: >
  Onboard a new person or role into AL-OS — determine their tier and access zone, point them at
  the right roles/ file, and confirm what they can and can't see. Use when a new team member is
  being brought into this repo, or an existing person's access needs to change.
domain: os
module: —
owner: —
access-tier: firm
triggers:
  - "onboard [name] to AL-OS"
  - "what should [name] have access to"
  - "/onboard"
allowed-tools: Read
fixes: — (rollout infrastructure — supports the Phase A/B/C adoption path in ROADMAP.md)
---

## What this does

Places a new person into the tier and access-zone model in `roles/README.md`, and either points
them at an existing `roles/{role}.md` file or helps create a new one from `roles/_template.md`.

## Procedure

1. **Determine the person's actual JD tier** (`context/people.md`'s ladder, 001–009) and their
   function (director, technical, project delivery, operations, or wider practice) — this maps
   directly to the access zones in `roles/README.md`.
2. **Check whether an existing role file already fits.** Most people should map onto
   `director.md`, `technical.md`, `project-lead.md`, `architect.md`, or `operations.md` without a
   new file.
3. **If none fits, copy `roles/_template.md`** and fill it in with their actual zone(s), the
   skills scoped to them, and their rhythm — don't grant broader access than their zone requires,
   even if it would be more convenient.
4. **State explicitly what they cannot see**, not just what they can — per the audit's own
   permission rule (`context/governance.md`): if they can't see it in JumpCloud, they shouldn't
   see it here either.
5. **Confirm the tier against `roles/README.md`'s rollout sequence** — Tier B people (Wayne,
   Andrew, Joe, Jo) and Tier C (the wider practice) shouldn't be onboarded ahead of the sequence
   without an explicit reason.
6. **Flag the unresolved surface question** (`roles/README.md`) if onboarding someone in Tier B or
   C — most of the practice will never open a terminal, and that decision should land before
   volume onboarding starts.

## What it does not do

Does not grant JumpCloud access itself — this skill scopes access *within* this repo, assuming
JumpCloud is the source of truth for whether someone should have any access at all.
