# Scope — the contractual spine

> **Owner:** Oliver Lowrie (sole author of the scope/DRM logic, currently encoded in
> `AL_Fee_Tool.html` and nowhere else) · **Status:** Draft, migrated from the June 2026 workshop
> scope spec (which itself was extracted from Oliver in the May audit and workshop). **This is
> the single highest-value file in this repo** — the audit priced scope-creep exposure from an
> undocumented, unenforced scope at £250,000–£500,000/yr (finding F04), on top of ~£48,000/yr in
> direct rework time. Confirm every line below with Oliver before treating it as final; the
> checklist here is recoverable from workshop material but has never been signed off as
> canonical by Oliver himself.

## Why this file exists

> "If you forget to exclude things, that's where it really costs you. Scope defining is the most
> expensive mistake you've made… it's the biggest problem in the industry." — Oliver, May 2026
> audit interview

Scope creep occurs on **more than half of AL's projects**. Worst observed case: a £100k fee
became £200k of staff spend. The scope record is the document a project team refers back to 12
months later to defend against exactly that — today it's built once at proposal stage, then
effectively unenforced, because nothing keeps it visible through delivery. Oliver: *"it's endemic
in the industry, not just us."*

## Service item checklist, by RIBA stage

Every item below is either **included** or **excluded** per project, with the default set by
service level (Bronze/Silver/Gold — see `context/commercial.md`) and overridable by the director
running the proposal.

### General Services (all stages)
CDM "designer" duties · Building Regulations "designer" duties · attend Design Team meetings ·
act as Lead Designer · chair Design Team meetings and coordination workshops · lead on
consultant/sub-contractor design integration · update Risk Register · BIM coordination and model
management.
*Bronze: core duties, attendance, risk register. Silver adds: Lead Designer role, chairing, BIM,
consultant coordination. Gold adds: sub-contractor design integration.*

### Pre-application & Stage 2 — Concept Design
Site visits · establish client vision and objectives · develop Initial Project Brief and
feasibility studies · site analysis and options · liaise with planning consultant · concept
design (plans/sections/elevations) · design rationale visuals · initial consultant coordination
(Structural/MEP) · sustainability and energy approach · PPA engagement documents · integrate
feedback.
*Bronze: core deliverables. Silver adds: visuals, consultant coordination, sustainability, PPA
documents. Gold adds: in-house visualisations (3 no.).*

### Planning Application & Determination
Prepare planning application documents with planning consultant · integrate engagement feedback
· GA plans/sections/elevations · Design and Access Statement · apartment/unit area schedules
(GIA) · respond to planning officer queries · prepare additional determination information ·
drawing amendments from consultee comments · determination allowance (capped £7,500).
*Bronze: all core planning deliverables. Silver adds: determination fee allowance, GLA pre-app
attendance. Gold adds: political engagement meeting attendance.*

### Stage 3 — Developed Design
Validate Stage 2 information for buildability/compliance · build/update BIM model · agreed BIM
strategy and DRM/CDP list · agreed design programme · refine interior design · develop a single
agreed design for all apartments · agree key strategies (MEP, Acoustics, Fire) · GA
plans/elevations/key sections · resolve key interface conditions · freeze spatial design ·
coordinate all disciplines spatially · outline project specification · initial Building Control
application support · compliance audits · coordinate with cost consultant (Stage 3 cost plan).
*Bronze: core model and design deliverables. Silver adds: BIM strategy, DRM, programme, interior
design, spatial coordination, specification, compliance audits. Gold adds: nothing further at
this stage.*

### Stage 4 — Technical Design
Prepare Regulation Design Pack (detailed architectural drawings) · GA
plans/sections/elevations/fire strategy overlays · key construction details (wall build-ups,
compartmentation) · schedule of building materials, products and systems with performance data ·
coordinate with Principal Designer's Fire Safety Information Summary · develop detailed
schedules · prepare specifications · liaise with Principal Designer · respond to BSR comments
during determination · tender package (Stage 4a) · review/comment on sub-contractor packages
(Stage 4b) · update design for sub-contractor changes (Stage 4c) · prepare final construction
information (Stage 4c) · coordinate final architectural packages with design team (Stage 4c).
*Bronze: core drawings, details, schedules, fire summary. Silver adds: materials schedule,
specifications, BSR responses, tender package, sub-contractor review and coordination, final
coordination. Gold adds: leading coordination of sub-contractor designs as part of the design
team (Stage 4b).*

### Stage 5 — Construction & Handover
Respond to site RFIs · monthly site visits for visual inspection · attend monthly design team
workshop (chaired by Contractor) · Practical Completion inspection and certification · handover
documentation and H&S File input.
*Bronze: core responses and inspections. Silver adds: Lead Designer role in construction
coordination, snagging inspections, Defects Liability Period inspections. Gold adds: review of
shop drawings; post-occupancy evaluation (Stage 7).*

> Recall `IDENTITY.md`'s scope boundary: AL no longer undertakes contract administration or
> project/site management on new projects. Stage 5/6–7 items above are the ceiling of AL's own
> direct involvement — everything past that is client, PM, or contractor territory.

### Always excluded unless specifically agreed and priced
Planning conditions discharge (£500/condition) · Secured by Design Application (£3,000) ·
conveyancing plans (£250/unit) · marketing plans/stripped-out plans (£250/unit) · physical model
procurement · Principal Designer (CDM) role · Principal Designer (Building Regulations) role ·
success fee on planning grant · travel outside the M25 (recharged at cost) · physical printing
(cost + 10%).

## Design Responsibility Matrix (DRM)

Assign **P (Prescriptive) / D (Descriptive) / I (Indicative)** to each role, per RIBA stage, for
each discipline. Defaults are pre-populated from the selected service level and contract type;
the director overrides as required. ALAQEP-002 §6.4 requires the fee proposal to accurately
reflect these responsibilities.

**The problem today:** the DRM is set once at proposal stage and becomes a dead PDF — no live
link to project execution or invoicing, and no way to reference it without digging up the
original document. Oliver: disputes 12 months later require finding that original file. This is
finding F05 in the audit.

## Bespoke exclusions

Free-text, project-specific exclusions not covered by the standard checklist — Oliver's own
examples: *"in-house visualisations not included," "critical engagement not allowed."* Reviewing
this list is the final step of scope definition, and it's the document the team refers back to
when defending against scope creep.

## What feeds `skills/proposal/scope-draft` and `skills/proposal/drm`

`scope-draft` pre-populates the checklist above from the selected service level, produces the
included/excluded list plus bespoke exclusions field, and outputs a scope record — never
auto-submits it. `drm` pre-populates the P/D/I grid from service level + contract type, again
override-only. Neither skill invents scope; both draft from this file's checklist.

## Open — not yet captured

- **This entire checklist needs Oliver's direct sign-off** — it was reconstructed from workshop
  transcripts, not authored fresh in an interview about this repo specifically. Treat as a strong
  first draft, not ground truth, until he confirms.
- **HRB-specific scope variations** beyond the duration/Gateway-2 effects already in
  `context/commercial.md` — does HRB status change any item's default inclusion, not just the
  programme?
- **What makes a scope record "signed"** — today there's no versioning, no immutability once
  signed, and no link from the signed scope record forward into project delivery. That gap is
  exactly what M1's `scope-draft` skill needs to close, but the mechanism (where the signed
  record lives, who can amend it) isn't decided yet.
