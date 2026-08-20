---
name: scope-draft
version: 0.1.0
status: specified
description: >
  Draft a scope record for a fee proposal — included/excluded items per RIBA stage, pre-populated
  from the selected service level (Bronze/Silver/Gold), with bespoke exclusions added in plain
  language. Produces a draft for director review, never a final scope record. Use when starting
  Step 7 of the fee-proposal workflow (W01), after fee calculation and before DRM assignment.
domain: proposal
module: M1
owner: Oliver Lowrie
access-tier: practice
triggers:
  - "draft a scope for [project]"
  - "start the scope record"
  - "what's included at [service level] for [sector]"
allowed-tools: Read
fixes: F04 (£250k–£500k/yr scope-creep exposure), F05 (DRM as dead PDF — see skills/proposal/drm)

---

## What this does

Turns the checklist in `${CLAUDE_PLUGIN_ROOT}/context/scope.md` into a project-specific draft scope record: which items
are included, which are excluded, and where bespoke exclusions need to be added in plain
language. It does not write a final, signed scope record — it produces a draft for the
responsible Senior Director (per `${CLAUDE_PLUGIN_ROOT}/context/delivery.md`'s sign-off routing) to review, amend, and
approve.

## Inputs required

- **Sector** (Residential/Co-living, Hotel, Commercial, Education, etc.) — determines which
  stage-item set applies
- **Service level** (Bronze / Silver / Gold) — determines defaults; see `${CLAUDE_PLUGIN_ROOT}/context/commercial.md`
- **RIBA stages in scope** for this appointment (not every project runs Pre-app through Stage 5)
- **HRB status**, if known at this point — some items' defaults may be affected; see
  `${CLAUDE_PLUGIN_ROOT}/context/commercial.md`'s HRB rule and `${CLAUDE_PLUGIN_ROOT}/context/scope.md`'s open question on HRB-specific scope
  variations
- Any known bespoke exclusions the director already has in mind

## Procedure

1. **Read `${CLAUDE_PLUGIN_ROOT}/context/scope.md`** for the full item checklist and Bronze/Silver/Gold defaults, by
   stage.
2. **Pre-populate** the included/excluded list for each in-scope RIBA stage, applying the service
   level's defaults exactly as documented — no invented items, no silent additions.
3. **Flag anything ambiguous** rather than guessing: if `${CLAUDE_PLUGIN_ROOT}/context/scope.md`'s open section names
   an unresolved question relevant to this project (e.g. an HRB-specific variation not yet
   confirmed), surface it explicitly in the draft rather than picking a default silently.
4. **Leave a clearly marked space for bespoke exclusions** — do not draft bespoke exclusion
   language without the director's input; this is where AL's actual project-specific risk
   decisions live (see `${CLAUDE_PLUGIN_ROOT}/context/scope.md`'s examples: "in-house visualisations not included").
5. **Output a draft scope record**: included items (by stage), excluded items (by stage,
   including the standing "always excluded unless priced" list), a bespoke-exclusions section
   marked for director input, and a note on any open questions surfaced in step 3.
6. **Do not submit, save as final, or treat as signed.** This draft feeds Step 7 of W01; the
   director reviews and amends before it becomes part of the appointment. See
   `skills/proposal/drm` for the paired Design Responsibility Matrix step.

## What it does not do

Does not calculate the fee (`skills/proposal/fee-calc`), does not check benchmark position
(`skills/proposal/benchmark`), does not assign P/D/I responsibilities (`skills/proposal/drm`),
and does not make the include/exclude call on anything genuinely ambiguous — that's a director
decision, always.

## Status note

This procedure is written in full (not a stub) because it's M1's priority skill, but
**`${CLAUDE_PLUGIN_ROOT}/context/scope.md` itself is still awaiting Oliver's direct sign-off** (see that file's
header) — this skill is only as reliable as that file. Treat drafts produced before that
sign-off as provisional, and flip `status` to `live` once both are confirmed.
