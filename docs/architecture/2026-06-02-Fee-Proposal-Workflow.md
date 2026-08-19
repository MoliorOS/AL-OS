---
type: fee-workflow
archived: 2026-06-02
date: 2026-06-02
title: "Fee Proposal Workflow — Comprehensive Overview"
archive: true
client: Ackroyd-Lowrie
project: Workshop
---
# Fee Proposal Workflow — Comprehensive Overview
**Ackroyd Lowrie AIOS · Phase 1 Scope Document**
*Prepared by Molior · 2026-06-02 · Workshop prep*

---

## 1. Recap & Objectives

This document defines the Fee Proposal workflow as the first slice of the Ackroyd Lowrie AI Operating System (AIOS). It covers the current state, the future state, and the technical design for each workflow phase.

**Purpose of this document:**
- Establish a shared, precise understanding of what the fee proposal workflow does today and what it must do when built
- Identify the rules, data, and decisions at each step
- Specify the technical layers required to deliver each phase
- Serve as the foundation for the architecture overview and workshop backlog

**Scope of Phase 1 Build:**
The Fee Proposal workflow runs from the moment a director decides to bid, to the moment a signed proposal is sent and the project is seeded in the firm's project management system. It does not include post-appointment cash flow management, project execution, or the Lessons Library — these emerge in Phase 2 as the system accumulates real data.

---

## 2. Fee Proposal Vision

### Why Are We Doing This?

The fee proposal is the single most expensive workflow in the firm per hour of director time — not because it is complex, but because it concentrates all the wrong people. Every bid requires 4–5 senior person-days from the most expensive staff in the office: Oliver (~2 days), Wayne (~2 days), Andrew (~1 day). At 2–4 bids per month, that is 8–20 senior days per month spent on a process that could be largely systematised.

The deeper problem is scope creep. The scope definition step — what is included and what is excluded — lives almost entirely in Oliver's head. When it is not documented with precision, the firm ends up delivering work it is not paid for. This happens on more than 50% of projects. Worst case: a £100k fee turns into a £200k staff spend because a client correctly argues that a deliverable was implied but never excluded.

The appointment document is also the legal foundation for cash flow enforcement. You cannot chase a debt if you do not have a signed contract that states what was agreed, by when, and for what payment. The current system produces agreements that are often a dead PDF, missing from the folder, or inconsistent between what Oliver said and what was written. This is why the weekly finance meeting with four senior people (Oliver, John, Jo, Anita) exists — to manually resolve what should be deterministic.

**Oliver:** *"The biggest headache in our business is always cash flow. And cashflow, you can't chase somebody properly unless you did the appointment properly."*

### What Will Things Look Like When It Is Done?

A director sits down after a client meeting. They open the fee proposal tool. In under 90 minutes, they have:
- Pulled the client record from the CRM (Notion)
- Run an automated site analysis — planning context, conservation area, flood zone, TPOs
- Set project parameters (sector, HRB status, service level, unit count, construction value)
- Built the programme stage by stage, with the tool suggesting team composition based on past comparable projects from the knowledge core
- Calculated the fee, cross-checked against RICS Fees Bureau benchmarks, with a flag if the proposed rate deviates from the firm's own historical margin on similar projects
- Walked through every RIBA service item with a pre-populated scope checklist (Bronze/Silver/Gold defaults baked in), overriding where needed, and adding bespoke exclusions in plain language that the tool converts to contract language
- Assigned DRM responsibilities (P/D/I per role per stage), pre-populated and editable
- Routed through sign-off (peer check, director sign-off, or four-senior review depending on fee value)
- Generated a formatted, legally defensible proposal document with full scope, fee, programme, DRM, T&Cs, and 60-day validity
- Saved it to the firm's file system and created the project record in Notion — ready for kickoff

On win, the proposal data becomes the project brief. The deliverables schedule seeds the project tracker. The invoice schedule is pre-built. The scope record is a live document, not a dead PDF.

**The endgame:** Nothing about the appointment lives in Oliver's head. The invoice goes out because the deliverable was done, and the system knows it. The weekly finance meeting becomes a 10-minute review rather than a 60-minute negotiation.

### Constraints

| Constraint | Detail |
|---|---|
| **CMap API not available** | CMap is on a plan without stable API access. Workaround: daily CSV export → ETL → Supabase. Long-term: evaluate migration to Notion as primary PM tool. |
| **Pipedrive for now** | CRM stays in Pipedrive until Notion CRM is live. Integration is read-only from the fee tool. |
| **No rebuild of Oliver's prototype** | The AL_Fee_Tool.html is a non-functional prototype — valuable for workflow logic, not for code. Build from scratch. Discuss rebuild vs. wrap with Oliver at workshop. |
| **Phase 1 only: proposal to project seed** | Lessons Library, autonomous invoice chasing, and project execution tracking are Phase 2. |
| **Notion vs. Supabase are two different things** | Notion = firm-facing PM and CRM (human-operated). Supabase = knowledge core / agent database (agent-operated, structured schemas). These serve different purposes and must not be conflated. |

---

## 3. Walk the Workflow — Fee Proposal

The workflow has five phases and ten steps. Primary volume tier is **Tier 2: Standard Fee Proposal** (2–4/month). Tier 1 (large RFP, 1–2/year) and Tier 3 (continuation fee, frequent) follow abbreviated or extended versions of the same flow.

---

### Phase 1 — Brief Assembly

**What triggers it?**
A senior director decides to bid following a positive lead screen (ALAQEP-011a). This is a conscious human decision — the workflow does not self-initiate.

**Steps:**
1. Confirm client identity — pull from Pipedrive if existing client. If new client, enter manually and flag for CRM entry.
2. Enter site address and geolocate.
3. Capture planning context for the site.

**Logic applied:**
- Client lookup is deterministic: exists in Pipedrive → auto-populate; does not exist → manual entry.
- Site geolocation is deterministic: address → coordinates.
- Planning context is a structured extraction: defined fields (conservation area, height, use class, planning history) from LPA planning portals. Currently manual; will be agent-driven.

**Information & Data required:**

| Data | Source | Current method |
|---|---|---|
| Client name, company, email | Pipedrive | Manual lookup |
| Site address | Director input | Manual entry |
| Conservation area status | LPA planning portal | Manual lookup (~20 min) |
| Listed building status | LPA planning portal | Manual lookup |
| Existing building height / storeys | LPA planning portal or OS data | Manual lookup |
| Use class (existing) | LPA planning portal | Manual lookup |
| Recent planning history (site + adjacent) | LPA planning portal | Manual lookup |

**Output:**
- Client identity confirmed with contact details
- Site address confirmed and geolocated
- Planning context captured (conservation area, height, use class, planning history)

---

### Phase 2 — Project Parameters

**What triggers it?**
Phase 1 output confirmed.

**Steps:**
3. Set building sector, build type, and contract type.
4. Determine HRB status.
5. Set unit count, mix, and construction value.
6. Set service level (Bronze / Silver / Gold).

**Logic applied:**
- Sector, build type, and contract type: categorical choices. Mixed-use requires proportion split summing to 100%.
- **HRB rule (deterministic):** IF building is residential / co-living / student AND (height > 18m OR storeys ≥ 7) → HRB flag active. This triggers: Gateway 2 required, BSR approval before construction, Stage 4 extended to 12 months, Stage 5 extended to 24 months, resident engagement duties.
- **Retrofit uplift (deterministic):** IF build type = Retrofit → add +1.4% to benchmark rate.
- **D&B discount (deterministic):** IF contract type = Design & Build → subtract 2.8% from benchmark rate.
- Service level: human judgment, not deterministic. Bronze = lean/core scope only. Silver = standard full service (AL's typical). Gold = enhanced scope, senior-weighted team.

**Information & Data required:**

| Data | Source | Current method |
|---|---|---|
| Sector categories | Director knowledge | Selection |
| Build type | Director knowledge | Selection |
| Contract type | Director / client brief | Selection |
| HRB determination inputs (height, storeys) | Planning context from Phase 1 | Auto-populated |
| Unit count and mix | Client brief | Manual input |
| Construction value (£) | Director estimate | Manual input |
| Service level | Director judgment | Selection |

**Output:**
- All parameters set
- HRB status confirmed with downstream implications flagged
- Benchmark category and applicable rate range confirmed

---

### Phase 3 — Programme + Fee

**What triggers it?**
Phase 2 parameters confirmed.

**Steps:**
7. Build per-stage programme (durations, options).
8. Set team composition (days/month per role per stage).
9. Calculate total fee.
10. Cross-check against RICS Fees Bureau benchmark.

**Logic applied:**

**Programme (partially deterministic):**
- Stages available: Pre-application, Planning Application, Determination, Stage 3 (Developed Design), Stage 4 (Technical Design), Stage 5 (Construction & Handover).
- Default durations: Pre-app 3 months, Planning 4 months, Determination 3 months, Stage 3: 4 months, Stage 4: 6 months (12 if HRB), Stage 5: 18 months (24 if HRB).
- Per-stage options: pre-app iterations, DRP/QRP panel, GLA pre-app attendance, tender timing (Stage 3 vs 4).
- Duration adjustment: human judgment within defaults.

**Fee calculation (deterministic):**
```
Stage fee = (Dir_days × £960 + SA_days × £720 + Arch_days × £640 + Asst_days × £480) × duration_months
Total raw fee = Σ all stage fees
Total fee = Total raw fee × service level multiplier (Bronze ×0.85 / Silver ×1.0 / Gold ×1.2)
```

Charge-out rates (CMap 2026, London):

| Role | Day rate |
|---|---|
| Directors | £960 |
| Senior Architects | £720 |
| Architects | £640 |
| Assistants | £480 |

**Benchmark crosscheck (deterministic calculation, human decision on position):**

RICS Fees Bureau sector rates (London 2026):

| Sector | £1M CV | £2.5M CV | £5M CV | £10M+ CV |
|---|---|---|---|---|
| Residential / Co-living | 7.3% | 6.6% | 6.0% | 5.5% |
| Hotel | 5.9% | 5.5% | 5.1% | 4.8% |
| Commercial | 5.6% | 5.0% | 4.6% | 4.2% |
| Education | 5.9% | 5.3% | 4.9% | 4.5% |

Decision: Is the calculated fee below / within / above the applicable market range?
- Below → bid competitive or lift to market (human judgment)
- Within → proceed
- Above → re-evaluate staffing or justify premium

**KNOWN GAP — Past project actuals (not yet integrated):**
The benchmark check uses only Fees Bureau sector percentages. It does NOT compare against AL's own historical project actuals from CMap. *"One good way of writing a fee proposal is to look at how much it cost you to deliver the last project that was similar."* This is the most important missing input. CMap actuals will be loaded via daily CSV export into Supabase and made queryable in this phase.

**Information & Data required:**

| Data | Source | Current method |
|---|---|---|
| Stage durations | Director judgment | Manual input |
| Team days/month per role | Director judgment | Manual input |
| CMap charge-out rates | CMap | Hardcoded in prototype |
| RICS Fees Bureau benchmark rates | RICS 2026 publication | Loaded into tool |
| CMap past project actuals (comparable fee, hours, margin) | CMap CSV → Supabase | **GAP — not yet integrated** |

**Output:**
- Total fee calculated
- Per-stage fee breakdown
- Benchmark position confirmed (below / within / above market)
- (Future) Comparable past project pulled and displayed

---

### Phase 4 — Scope Definition *(Highest-Leverage Step)*

**What triggers it?**
Phase 3 fee validated and confirmed.

**Steps:**
11. Walk every RIBA service item per stage — mark included or excluded.
12. Assign DRM responsibilities (P/D/I per role per stage).
13. Add bespoke exclusions (project-specific, free text).
14. Review the full exclusions list as final step.

**Logic applied:**
- Service item pre-population: **deterministic** from service level. Bronze/Silver/Gold defaults for every RIBA stage item are pre-set in the system. Director reviews and overrides.
- DRM assignment: **deterministic defaults** from service level + contract type. Override is human judgment.
- Bespoke exclusions: **human judgment**, free text.
- Validation: no required DRM fields blank. No stage included without at least one responsible role.

**Key scope categories:**

| Stage | Examples of included/excluded items |
|---|---|
| Pre-app & Stage 2 | Site visits, concept design, PPA engagement, in-house visualisations (Gold only) |
| Planning Application | GA drawings, Design & Access Statement, GLA pre-app (Silver+), political engagement (Gold) |
| Stage 3 — Developed Design | BIM model, spatial coordination, specification, compliance audits |
| Stage 4 — Technical Design | Regulation Design Pack, sub-contractor coordination, BSR responses, tender package |
| Stage 5 — Construction | Site visits, snagging, DLP inspections (Silver+), shop drawing review (Gold) |
| Additional items (always excluded unless priced) | Planning conditions discharge, Secured by Design, conveyancing plans, marketing plans, CDM Principal Designer role |

**Information & Data required:**

| Data | Source | Current method |
|---|---|---|
| Service item checklist by RIBA stage | AL scope template | In Oliver's prototype (to be extracted) |
| DRM defaults by service level + contract type | AL standard | In Oliver's prototype |
| Past exclusion patterns for similar projects | **Future: Supabase Lessons table** | Currently: Oliver's memory |
| Bespoke exclusion language | Director input | Free text |

**Output:**
- Full scope record: included items, excluded items, DRM responsibilities, bespoke exclusions
- This is the contractual spine of the appointment — the document the team refers to 12 months later to defend against scope creep

---

### Phase 5 — Sign-off + Assembly

**What triggers it?**
Phase 4 scope record confirmed.

**Steps:**
15. Route to correct sign-off path based on fee value.
16. Obtain approval.
17. Assemble proposal document from all structured data.
18. Save to Egnyte and create project record in Notion.
19. Handoff to commercial pipeline (DocuSign, deposit invoice, CMap activation).

**Logic applied:**

Sign-off path routing (**deterministic** by fee threshold):
- **Path A (<£15k — Feasibility / Pre-app / Planning only):** Project Director peer sense-check. Appointment Letter Template. No full proposal required.
- **Path B (£15k–£100k):** Oliver or John sign-off (in meeting or email). Full fee proposal on template.
- **Path C (>£100k or HRB):** High-Value Sign-Off Form (ALAQEP-002b). All four senior roles consulted: Oliver, John, Jo, Wayne.

Proposal assembly: **deterministic** — pull all structured data from Supabase FeeRecord + ScopeRecord → render to proposal template.

**Information & Data required:**

| Data | Source | Current method |
|---|---|---|
| All data from Phases 1–4 | Supabase FeeRecord + ScopeRecord | Manual assembly |
| AL proposal template (T&Cs, DRM format, header) | Egnyte templates | Manual copy/paste |
| Sign-off approver identity | Fee value threshold routing | Manual judgment |
| Egnyte project folder path | Egnyte B Job Information | Manual file save |

**Output:**
- Formatted fee proposal PDF
  - Client name, company, site address, reference
  - Service level (Bronze/Silver/Gold)
  - Programme Gantt per stage
  - Per-stage fee breakdown + total (excl. VAT)
  - Full scope of services included
  - Explicit exclusions list
  - DRM (where applicable)
  - Standard T&Cs (Trowers & Hamlins)
  - 60-day validity from issue date
- Saved to Egnyte B Job Information
- Project record created in Notion → seeded for kickoff

---

## 4. Technical Design — Future Fee Proposal Workflow

For each phase, the following layers are specified:

| Layer | What it covers |
|---|---|
| **Interaction** | Where and how people engage with the system |
| **Tasks, Logic & Workflow** | How the process is orchestrated and controlled |
| **Audit Layer** | Quality control, logging, version history |
| **Intelligence Layer** | AI reasoning, generation, and suggestion |
| **Tools & Actions** | Specific actions AI agents can take |
| **Data Layer** | Data stores read and written |
| **Integrations** | Routes into external systems |
| **Systems of Record** | Authoritative sources for each data type |

---

### Phase 1 — Brief Assembly: Technical Design

| Layer | Specification |
|---|---|
| **Interaction** | Web UI. Director enters project name, selects or types client name (triggers Pipedrive lookup). Enters site address. Reviews auto-populated planning context. Can edit any field. |
| **Tasks, Logic & Workflow** | 1. Client name input → Pipedrive API query → return match or "new client" flag. 2. Site address → geocode API → return coordinates + map pin. 3. Trigger planning context agent → structured extraction. |
| **Audit Layer** | Log: proposal created by [user], timestamp, client_id, site_address, planning_context_source (agent or manual), all field values. Written to Supabase audit_log. |
| **Intelligence Layer** | Planning context agent: given site address, scrape LPA planning portal → extract conservation area, listed status, building height, use class, recent planning history → return structured JSON. Agent is deterministic in intent — structured output, not freeform. |
| **Tools & Actions** | Web search / LPA portal scrape. Pipedrive read (client lookup). Geocoding API (coordinates + map). |
| **Data Layer** | Supabase: Project table (new record created with client_id, site_address, planning_context). Pipedrive: client record (read only). |
| **Integrations** | Pipedrive API (read). Geocoding API (e.g. Google Maps / OpenStreetMap). LPA planning portal web scrape (agent-driven). |
| **Systems of Record** | Pipedrive (client identity). LPA planning portals (planning context). |

---

### Phase 2 — Project Parameters: Technical Design

| Layer | Specification |
|---|---|
| **Interaction** | Form-driven UI. Dropdowns for sector, build type, contract type. Number inputs for units, construction value. HRB status auto-computed and displayed with flag + implications. Service level selection with scope preview (what's included at each tier). |
| **Tasks, Logic & Workflow** | 1. Height/storeys from Phase 1 planning context → auto-populate HRB check. 2. HRB rule engine: IF residential/co-living/student AND (height > 18m OR storeys ≥ 7) → HRB = true + flag downstream duration changes. 3. Benchmark category assigned from sector + build type + contract type → fetch applicable Fees Bureau rate range. |
| **Audit Layer** | All parameter values logged to Supabase FeeRecord (project_id, sector, build_type, contract_type, hrb_flag, service_level, units, cv_value, benchmark_category). Timestamp and user. |
| **Intelligence Layer** | Minimal at this phase. Could surface: "This sector + HRB combination has appeared in 3 past AL projects — avg. fee was X% of CV." Requires CMap actuals in Supabase. Phase 2 feature. |
| **Tools & Actions** | None (deterministic logic). |
| **Data Layer** | Supabase: FeeRecord (parameters written). Supabase: FeeBureauRates table (read — static, refreshed annually). |
| **Integrations** | None. |
| **Systems of Record** | RICS Fees Bureau (benchmark rates — loaded as static table in Supabase). |

---

### Phase 3 — Programme + Fee: Technical Design

| Layer | Specification |
|---|---|
| **Interaction** | Programme builder UI: toggle stages on/off, set duration (slider or number input), set per-stage options (DRP panel, pre-app iterations, HRB flags auto-applied). Team composition per stage: days/month per role (Director, SA, Architect, Assistant) with running cost shown. Fee auto-calculates on every change. Benchmark comparison displayed: calculated fee as % of CV vs. Bureau range. |
| **Tasks, Logic & Workflow** | Fee calculation engine runs client-side on every input change (deterministic). Benchmark crosscheck: fetch applicable Bureau rate from Supabase → compute calculated %. Flag if > 15% above or below market. Comparable lookup: query Supabase FinancialPerformance for past projects with matching sector + HRB + CV range → return top 3 comparables with fee actuals and margin. |
| **Audit Layer** | Full programme and team composition logged to Supabase FeeRecord (stage_fees[], duration_per_stage[], team_composition_per_stage[], total_fee, benchmark_position). Comparable projects surfaced logged (which records were shown to the user). |
| **Intelligence Layer** | Comparable project suggestion: given sector, HRB status, CV range → query Supabase → return similar past projects with actual fee, actual hours, and margin. Display as: "3 comparable past projects — avg fee was £X (Y% of CV), avg margin was Z%." Agent can explain what drove fee differences (e.g. HRB, gold service level). Phase 1 stretch goal — depends on CMap CSV load. |
| **Tools & Actions** | Read from Supabase FinancialPerformance (comparable projects). Read from Supabase FeeBureauRates. |
| **Data Layer** | Supabase: FeeRecord (written). Supabase: FinancialPerformance (read — sourced from CMap CSV). Supabase: FeeBureauRates (read). |
| **Integrations** | CMap daily CSV export → ETL pipeline → Supabase FinancialPerformance table (batch, not real-time). |
| **Systems of Record** | CMap (past project actuals — via CSV). RICS Fees Bureau (benchmark rates). |

---

### Phase 4 — Scope Definition: Technical Design *(Highest-Leverage)*

| Layer | Specification |
|---|---|
| **Interaction** | Scope checklist UI: for each RIBA stage, service items displayed as toggled rows (included / excluded). Defaults pre-populated from service level. Director reviews and overrides. DRM matrix: grid of Role × Stage, P/D/I selection, defaults pre-set. Bespoke exclusions: free text input with optional AI drafting assistance. Final review: summary of all exclusions in plain language. |
| **Tasks, Logic & Workflow** | 1. Load service item defaults from Supabase ScopeTemplates table (keyed by service level + contract type). 2. Per item: Director confirms or overrides. 3. DRM defaults loaded same way. 4. Validation: no stage included without at least one responsible role. No DRM blank where item is included. 5. Bespoke exclusion: accept free text → AI converts to contract-grade language → display for confirmation. |
| **Audit Layer** | Every scope item state (included/excluded/overridden) logged with timestamp, user, default value, final value. DRM assignments logged. Bespoke exclusions logged verbatim + AI-generated version. This is the contractual record — immutable once signed off. Version history maintained in Supabase ScopeRecord. |
| **Intelligence Layer** | (1) Scope suggestion: given sector, HRB, comparable projects → surface lessons from Supabase Lessons table: "In 2 past similar projects, 'in-house visualisations' was excluded at Silver level — confirm?" Phase 2 feature. (2) Bespoke exclusion drafting: Director types plain description → AI converts to contract language → Director confirms. Phase 1 feature. |
| **Tools & Actions** | Read Supabase ScopeTemplates (defaults). Read Supabase Lessons (comparable scope decisions — Phase 2). Write Supabase ScopeRecord. |
| **Data Layer** | Supabase: ScopeRecord (written — primary contractual output). Supabase: ScopeTemplates (read). Supabase: Lessons (read — Phase 2). |
| **Integrations** | None at Phase 1. |
| **Systems of Record** | Supabase ScopeRecord becomes the authoritative scope document — replaces the dead PDF. |

---

### Phase 5 — Sign-off + Assembly: Technical Design

| Layer | Specification |
|---|---|
| **Interaction** | Sign-off path displayed based on fee value — Director sees which path applies and what approval is required. Approval: click-to-confirm (Path A), email notification to approver (Path B), structured four-person review form (Path C). On approval: proposal preview shown → download as PDF → save to Egnyte. Project creation wizard launches on save. |
| **Tasks, Logic & Workflow** | 1. Fee value threshold routing (deterministic). 2. For Path C: generate structured review form, notify four approvers via email, require all to confirm. 3. Proposal assembly: pull all data from Supabase FeeRecord + ScopeRecord + Project → render to template. 4. PDF generation. 5. Egnyte save to B Job Information folder. 6. Supabase Project record updated with status = "Proposal Sent". 7. Notion project record created (on win signal). |
| **Audit Layer** | Sign-off event logged: who approved, which path, timestamp. Proposal version locked in Supabase. Egnyte file path stored on Supabase Project record. Every status change logged. |
| **Intelligence Layer** | Proposal narrative generation: AI writes the cover letter text and scope description summary from structured data. Director reviews and edits before sending. Keeps tone consistent with AL voice. |
| **Tools & Actions** | PDF generation. Egnyte API write (proposal PDF). Email notification (Gmail / Workspace API). Notion API write (project record on win). Future: DocuSign trigger. |
| **Data Layer** | Supabase: Project (status update), FeeRecord (read), ScopeRecord (read). Egnyte: B Job Information folder (write). Notion: Projects database (write on win). |
| **Integrations** | Egnyte API (write). Notion API (write on win). Gmail / Workspace API (approval notifications). Future: DocuSign (appointment signing). Future: CMap (project activation — or Notion replaces CMap). |
| **Systems of Record** | Egnyte B Job Information (proposal document storage). Notion Projects (project of record — forward state). Supabase (all structured data — backward reference). |

---

## 5. Data Architecture Summary

Two distinct layers — not to be conflated:

### Notion (Firm-Facing: Human-Operated)
Project management and CRM. Where Oliver, John, and the team work. Replaces CMap (project management) and Pipedrive (CRM) over time.

**Core Notion databases:**
- Projects (name, number, client, lead, stage, status, sector, fee value, start date)
- Clients / Contacts (CRM — imported from Pipedrive)
- Pipeline / Deals (sales funnel)
- Team / Resourcing
- Invoice Schedule (seeded from fee proposal)

### Supabase (Agent-Facing: Knowledge Core)
Structured schemas for agent queries. Memory layer and intelligence backbone. Not human-operated directly — seeded from Notion, CMap CSV exports, and workflow events. This is where the agents go to think.

**Core Supabase tables:**

```
projects             id, name, number, client_id, lead_id, sector, build_type,
                     contract_type, hrb_flag, stage_current, status, fee_value,
                     cv_value, start_date, notion_id

fee_records          id, project_id, total_fee, stage_fees JSONB, benchmark_pct,
                     benchmark_position, service_level, comparable_ids[],
                     created_at, created_by

scope_records        id, project_id, fee_record_id, included_items JSONB,
                     excluded_items JSONB, drm_assignments JSONB,
                     bespoke_exclusions[], signed_at, signed_by, version

financial_performance id, project_id, invoiced_to_date, paid_to_date,
                     time_cost_to_date, expected_profit, margin_pct,
                     snapshot_date  -- sourced from CMap CSV

fee_bureau_rates     id, sector, cv_band, rate_pct, retrofit_uplift,
                     db_discount, year, source

scope_templates      id, service_level, contract_type, stage,
                     items JSONB  -- Bronze/Silver/Gold defaults

clients              id, name, company, email, sector, pipedrive_id,
                     notion_id, relationship_stage

audit_log            id, entity_type, entity_id, action, user_id,
                     before JSONB, after JSONB, timestamp

lessons              id, project_id, stage, category, description,
                     impact, applied_to JSONB, created_at  -- Phase 2
```

### CMap → Supabase ETL (Transitional)
Daily CSV export from CMap → parsing script → Supabase `financial_performance` and `projects` tables. This is the bridge while CMap is still in use. If AL migrates to Notion as their PM tool, this ETL is replaced by direct Notion → Supabase sync.

---

## 6. Known Gaps and Open Questions for the Workshop

| # | Gap | Impact | Resolution path |
|---|---|---|---|
| G1 | No CMap past-project actuals in fee tool | Under-pricing risk; missed margin | Daily CSV export → Supabase ETL. What fields does Oliver need from CMap exactly? Hours by stage? Margin? |
| G2 | Planning context scrape broken in prototype | ~30 min manual LPA lookup per bid | Rebuild as agent tool. What LPA portals does AL use most? Is SiteMAXXER the right scope? |
| G3 | Scope definition lives in Oliver's head | Scope creep >50% of projects | Scope template extraction from prototype + Oliver review session |
| G4 | DRM is a dead PDF | Unenforceable scope 12 months later | ScopeRecord in Supabase becomes the live record; Notion surfaces it per project |
| G5 | CMap entry after win is a manual duplicate | Time lost; entry errors | Phase 1: Notion project seeded from fee proposal data on win. Phase 2: CMap activation or full CMap → Notion migration |
| G6 | CMap migration to Notion — scope and timing | Determines integration architecture | Workshop decision: commit to Notion as primary PM? Set migration timeline. |
| G7 | Partnership structure — IP, equity, roles | Determines who builds what and under what terms | Workshop decision: three-way agreement needed before significant build begins |

---

*Next document: AIOS Architecture Overview — Capability Architecture for Fee Proposal V1*
