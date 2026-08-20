---
name: drm
version: 0.1.0
status: specified
description: >
  Draft a Design Responsibility Matrix (P/D/I per role, per RIBA stage, per discipline) from
  service-level and contract-type defaults. Pairs with scope-draft as Step 7 of the fee-proposal
  workflow. Produces a draft for director override, never a final DRM.
domain: proposal
module: M1
owner: Oliver Lowrie
access-tier: practice
triggers:
  - "draft the DRM for [project]"
  - "assign responsibilities for [project]"
allowed-tools: Read
fixes: F05 (DRM as a dead PDF — no live link to project execution or invoicing)
---

## What this does

Produces a draft Design Responsibility Matrix: **P (Prescriptive) / D (Descriptive) /
I (Indicative)** assigned to each role, per RIBA stage, for each relevant discipline —
pre-populated from the service level and contract type per `context/scope.md`'s DRM section,
override-only by the director.

## Inputs required

Service level (Bronze/Silver/Gold), contract type (Traditional / Design & Build), the disciplines
involved on this project (structural, MEP, fire, acoustic, etc. — see `context/scope.md` for
which disciplines typically appear at which stage).

## Procedure

1. Read `context/scope.md`'s DRM section for the default P/D/I pattern by service level and
   contract type.
2. Build the stage × discipline grid for this project's in-scope stages.
3. Apply defaults; flag any discipline or stage combination `context/scope.md` doesn't already
   cover as an open item rather than guessing a value.
4. Output the draft grid alongside the scope record from `skills/proposal/scope-draft`, so both
   are reviewed together — ALAQEP-002 §6.4 requires the fee proposal to accurately reflect DRM
   responsibilities, and reviewing them apart risks a mismatch.

## The known structural gap this skill sits inside

Per `context/scope.md`: today's DRM is set once at proposal stage and becomes a dead PDF — no
live link to project execution or invoicing, no way to reference it later without digging up the
original file. This skill drafts the DRM; it does not solve the dead-PDF problem on its own. That
requires a decision (not yet made — see `context/scope.md`'s open section) about where the signed
scope record and DRM live once approved, and how they stay linked to the live project.

## What it does not do

Does not decide P/D/I values on anything not already covered by the default pattern — that's a
director judgment call, always. Does not solve the dead-PDF / no-versioning problem by itself.
