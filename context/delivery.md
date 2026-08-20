# Delivery — stage gates, kickoff, deliverables, sign-off routing

> **Owner:** Andrew Bonner (Project Director — resourcing, kickoff) and Wayne McKiernan
> (Technical Director — stage-gate QA, standards). **Status:** Partially migrated from workflow
> specs (W01, W02) and ALAQEP references. **Wayne's own interview was cancelled during the May
> audit and never rescheduled — everything below attributed to his domain is reconstructed from
> other people's testimony, not his own.** Treat the technical-QA sections as provisional.

## RIBA stages as AL uses them

Pre-application → Planning Application → Determination → **Stage 3** Developed Design →
**Stage 4** Technical Design → **Stage 5** Construction & Handover → (**Stage 6/7** In Use).
Stage-gate sequence per ALAQEP-003a: **Kick-off → 0 → 1 → 2 → 3A → 3B → 4A → Tender → 4C.**

## Sign-off routing by fee value (ALAQEP-002)

| Path | Fee value | Route |
|---|---|---|
| **A** | <£15k (Feasibility / Pre-app / Planning App only) | Project Director peer sense-check. Appointment Letter Template — full proposal template not required |
| **B** | £15k–£100k | Oliver or Jon sign-off (meeting or email). Full proposal on CMap or Excel template |
| **C** | >£100k **or HRB** | High-Value Sign-Off Form (ALAQEP-002b). All four senior roles consulted: Jon, Oliver, Jo Greenoak (Operations Director), Wayne (Technical Director) |

Hard rule, ALAQEP-002 §6.14: **no work may commence without a signed appointment or deposit.**
§6.12 requires CMap activation; §6.13 requires DocuSign. Proposal validity: **60 days** from
issue. Standard terms: Trowers & Hamlins (since 2020) — negotiated fire-exemption clauses
(PI-linked), basement exclusions, improved payment terms for debt collection. Bespoke contracts
and collateral warranties are checked by both insurers' solicitors and AL's own before signing.
Payment terms: 14 days (ALAQEP-010 draft).

**Where W01 (fee proposal) hands off:** to `ALAQEP-002a / ALAQEP-005` — send offer letter, fee
proposal, and T&Cs to the client, introducing the Operations Director and Finance Manager.
Downstream, not part of the proposal workflow itself: DocuSign appointment (Jo), deposit invoice
(Anita), CMap project activation, CMap invoicing/resource schedule population, onboarding form,
credit check for new limited-company clients.

## Project kickoff (W02) — the sequence

1. **Admin handoff (ALAQEP-007)** — create the Egnyte folder using AL's standard A–G structure,
   transfer any pre-instruction material. Responsible: Operations Director.
2. **Client briefing session** — Oliver named this **the missing workflow**: a structured set of
   questions, played back to the client, and locked as the project's **anchor brief**, filed in
   Egnyte `B Job Information`. It should be re-checked at every subsequent stage gate — Stage 3
   review is supposed to re-confirm it explicitly. Today it has no template, no owner, no
   trigger.
3. **Internal kickoff — the AL Startup Sheet** (`Checklists.xlsx`, Stage 0/1 Initial Job Setup
   block). Four items: (1) Egnyte folder to AL standard structure; (2) CMap job set up with
   hours and fee proposal, verified with Finance (Anita) or a director; (3) locate the site by
   postcode and save 3–4 aerial/bird's-eye photos to Egnyte; (4) confirm the appointment detail,
   deliverables, and brief are on file. Responsible: Project Lead. **Gate: `2ND CHECK`** —
   a qualified person date-stamps this section.
4. **Site data verification — "the 10 crucial things"** (Oliver, reconciled with
   `Checklists.xlsx` Capacity Study items). Required before design progresses past Stage 0:
   - Download OS site plan (flag cost with a director before purchase)
   - Check for existing asset information from the client or another party
   - Planning policy route — commission a planning consultant, or Project Lead works the LPA
     website directly (director's call)
   - Commission a survey (measured/topo) or obtain a suitable floor plan; scale into CAD
   - Title check — boundary as drawn matches as deeded; flag restrictive covenants, easements,
     ransom strips
   - Existing infrastructure — drainage, services, party walls, TfL/Network Rail adjacency
   - Adjacency/context — neighbouring buildings, construction access, site levels, parking,
     trees (TPO), Right of Light/Daylight, Party Wall matters
   - Planning feedback note on relevant policies, from the planning consultant
5. **Consultant onboarding** and **model baseline establishment** (BEP, grid, setting-out).
6. **Stage 1 Feasibility transition** — optional; folds directly in if the appointment includes
   a paid Stage 1 feasibility, which most AL projects do.
7. **Kickoff closeout — `2ND CHECK`** — a qualified person signs off the Stage 0/1 block with
   date.

**Where this breaks today, per the audit:** artefacts exist (the checklist, the startup sheet)
but discipline doesn't — Oliver: they *"live in a dark, dead place that nobody checks."* The
`2ND CHECK / Qualified person` row is blank across every observed copy of `Checklists.xlsx` — the
QA gate is ornamental, not enforced. And the brief-playback step has no owner or trigger, so the
cost of doing it properly gets paid twice — once here, once again at Stage 3.

## Deliverables by stage — the tier logic

See `context/scope.md` for the full item-by-item checklist (included/excluded per service
level). The short version: Bronze covers core deliverables only; Silver is AL's standard full
service; Gold adds senior-weighted, enhanced-scope items. Nothing here should be reconstructed
from memory once `context/scope.md` exists — that file is now the source of truth for what's
included at each stage.

## Drawing identity — ISO 19650 numbering

AL's deployed convention (Business Plan p.47):

```
{4-digit Project Code} - {Originator: ALA} - {Zone: XX/ZZ/NB} - {Level: B2/B1/00/0M/01…}
  - {Form: DR/BQ/CM/DA/M2/M3/SA/SH/RP} - {Discipline: A} - {Package+DrawingNo} _ {Title}
```
Example: `1500 - ALA - XX - 00 - DR - A - 01100 _ Existing Ground Floor Plan`. Package codes:
99 = Sketch, 10 = Planning, 00 = GA, 01 = Demolition/Existing, 05 = Areas.

## What feeds `skills/delivery/*`

`brief-playback` should implement the missing-workflow fix Oliver already named: structured
questions → table → played back to the client → locked as the anchor brief. `site-data-check`
implements the 10-crucial-things list above as a checklist with named responsible parties.
`stage-qa-gate` should make the `2ND CHECK` gate something that actually blocks progress rather
than a blank cell in a spreadsheet — that's the whole fix for the audit's QA-ornamental finding.

## Open — not yet captured

- **Wayne's technical sign-off content** — the "white book" of standard details, Stage 4
  technical quality criteria, PI/BSA judgement calls. His audit interview was cancelled and
  never rescheduled; this needs a direct session with him, not a reconstruction from others'
  testimony.
- **Where Wayne's review actually lands in the sequence.** The audit found his sign-off arrives
  at Step 5 (fee calculation) rather than Step 7 (scope + DRM) — i.e. after scope is already
  locked. Confirm whether that's still true and whether moving it is feasible.
- **A template and named owner for the client briefing session** — Oliver identified the fix
  precisely but it hasn't been built or assigned.
