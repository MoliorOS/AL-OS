---
type: workshop-diagrams-spec
archived: 2026-06-02
date: 2026-06-02
title: "Workshop Diagrams — Specification"
archive: true
client: Ackroyd-Lowrie
project: Workshop
---
# Workshop Diagrams — Specification
**Ackroyd Lowrie AIOS · 2026-06-03 Workshop**
*Diagram descriptions for HTML build · Prepared by Molior · 2026-06-02*

---

## Overview

Four diagrams, one per workshop section. Two audiences:
- **Executive (Oliver, John):** Concrete, brief, no jargon. The *so what* immediately visible.
- **Technical (Danny, Felipe):** More detailed, layer-by-layer, specific components.

Diagrams 1 and 2 are executive-first. Diagrams 3 and 4 are technical-primary but must not lose the directors.

Visual language to maintain across all four:
- **AL brand:** clean, architecture-firm aesthetic. White backgrounds, dark charcoal text, a single accent colour (use a warm amber / ochre — feels like AL's palette, not a tech startup's).
- **No decorative elements.** Every shape carries meaning.
- **Labels are short.** If a label needs more than 6 words, it goes in a tooltip or sub-label, not the main node.
- **Icons:** minimal. Use only where they replace words (£ for fee, ✓ for sign-off, ⚠ for risk/gap).

---

## Diagram 1 — Fee Proposal Vision

**Type:** Before / After split panel with central "system" bridge
**Audience:** Executive (Oliver, John)
**Purpose:** Make the pain real and the solution concrete in under 10 seconds.

---

### Layout

Three vertical columns:

**Column A — TODAY (left)**
Label at top: `TODAY`

Six stacked rows, each a pain point as a simple statement with a number:

| Row | Label | Callout number |
|---|---|---|
| 1 | Senior directors doing admin | 4–5 days per bid |
| 2 | Planning context — manual lookup | ~30 min every time |
| 3 | Scope lives in Oliver's head | Scope creep on >50% of projects |
| 4 | DRM is a dead PDF | Unenforceable 12 months later |
| 5 | Cash flow meeting — 4 senior people | 1 hour, weekly |
| 6 | Fee validation: guesswork vs. past projects | No comparable data |


**Column B — THE SYSTEM (centre)**
Label at top: `FEE PROPOSAL AIOS`

A single vertical spine with five labelled nodes (circles), connected top to bottom by a line:

1. `Brief Assembly` — Client + site + planning context
2. `Parameters` — Sector · HRB · Service level
3. `Programme + Fee` — Calculation + benchmark + comparables
4. `Scope Definition` — Every item. Included or excluded.
5. `Sign-off + Assembly` — Proposal PDF + project seeded

No sub-detail inside the nodes. Each node: charcoal circle, white label, small amber number (1–5).

Between Col A and Col B: a horizontal arrow from the pain cluster to the spine, labelled `"replaces"` in small italic.
Between Col B and Col C: a horizontal arrow from the spine to the gain cluster, labelled `"produces"` in small italic.

**Column C — DONE (right)**
Label at top: `WHEN DONE`

Six stacked rows, mirroring Column A's pain points with the resolution:

| Row | Label | Callout |
|---|---|---|
| 1 | Director time on fee proposal | < 90 min |
| 2 | Planning context | Automated — agent-generated |
| 3 | Scope definition | Enforced checklist — every item documented |
| 4 | DRM | Live record — auditable, versioned |
| 5 | Cash flow meeting | Decision-ready — no manual assembly |
| 6 | Fee validation | Past project actuals surfaced automatically |

Same card style as Column A. Numbers on the right in amber.


---

## Diagram 2 — Fee Proposal Workflow

**Type:** Horizontal swimlane flow diagram
**Audience:** Executive primary (Oliver, John), Danny can follow the gates
**Purpose:** Walk the workflow phase by phase. Make the inputs, decisions, and outputs visible at a glance.

---

### Layout

**Top axis (X):** Five phases left to right, evenly spaced:
`Phase 1` / `Phase 2` / `Phase 3` / `Phase 4` / `Phase 5`

Full phase names displayed beneath each:
`Brief Assembly` / `Project Parameters` / `Programme + Fee` / `Scope Definition` / `Sign-off + Assembly`

**Left axis (Y):** Four swimlanes, labelled on the left margin:

| Swimlane            | Who                              |
| ------------------- | -------------------------------- |
| **Trigger / Input** | What starts each phase           |
| **Process**         | The work done in each phase      |
| **Decision**        | The judgement call in each phase |
| **Data Required**   | What information is needed and from where |
| **Output**          | What is produced                 |

---

### Cell-by-cell content

**Phase 1 — Brief Assembly**

| Swimlane | Content |
|---|---|
| Trigger / Input | Director decides to bid after initial lead screen |
| Process | Pull client from Pipedrive · Enter site address · Run planning context agent |
| Decision | ◆ Client on record? → Auto-populate or manual entry |
| Data Required | **Pipedrive** — client name, company, email · **LPA planning portal** — conservation area, listed status, height, use class, history · **Geocoding API** — coordinates |
| Output | Client identity confirmed · Site address + coordinates · Planning context (conservation, height, use class, history) |

**Phase 2 — Project Parameters**

| Swimlane | Content |
|---|---|
| Trigger / Input | Phase 1 confirmed |
| Process | Set sector · build type · contract type · units · construction value · service level |
| Decision | ◆ HRB? (>18m or 7+ storeys) → Flag + extend Stage 4 / 5 durations |
| Data Required | **Phase 1 output** — site height / storeys (auto-populated) · **RICS Fees Bureau** — benchmark category lookup table · **Director input** — sector, build type, contract type, units, CV, service level |
| Output | Parameters locked · HRB status confirmed · Benchmark category assigned |

**Phase 3 — Programme + Fee**

| Swimlane        | Content                                                                                                                                                                                              |
| --------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Trigger / Input | Phase 2 confirmed                                                                                                                                                                                    |
| Process         | Build per-stage programme (durations · team days/month) · Calculate total fee · Cross-check vs. Fees Bureau + past AL projects                                                                       |
| Decision        | ◆ Below / within / above market? → Adjust or hold                                                                                                                                                    |
| Data Required   | **CMap charge-out rates** — Dir,  SA, Arch, Asst · **RICS Fees Bureau** — sector benchmark % by CV band · **CMap past project actuals** *(GAP — via CSV → Supabase)* — comparable fee, hours, margin |
| Output          | Total fee · Per-stage breakdown · Benchmark position · Comparable past projects (when CMap data loaded)                                                                                              |

**Phase 4 — Scope Definition** *(⚠ Highest Leverage)*

| Swimlane        | Content                                                                                                                                                                                                                                                  |
| --------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Trigger / Input | Phase 3 fee validated                                                                                                                                                                                                                                    |
| Process         | Walk every RIBA stage service item → Included or Excluded · Assign DRM (P/D/I per role) · Add bespoke exclusions                                                                                                                                         |
| Decision        | ◆ Every item: In scope or out? (Pre-populated by service level, director overrides)                                                                                                                                                                      |
| Data Required   | **AL scope templates** — Bronze / Silver / Gold defaults per RIBA stage · **DRM defaults** — P/D/I pre-sets by service level + contract type · **Director knowledge** — bespoke exclusions *(currently in Oliver's head — this step makes it permanent)* |
| Output          | Full scope record · Included items · Excluded items · DRM · Bespoke exclusions — THE CONTRACTUAL SPINE                                                                                                                                                   |

**Phase 5 — Sign-off + Assembly**

| Swimlane        | Content                                                                                                                                                                                          |
| --------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Trigger / Input | Phase 4 scope confirmed                                                                                                                                                                          |
| Process         | Route to sign-off path (A/B/C by fee value) · Assemble proposal document · Save to Egnyte · Seed Notion project                                                                                  |
| Decision        | ◆ Fee < £15k → Path A (peer check) · £15k–£100k → Path B (director sign-off) · >£100k or HRB → Path C (four-senior review)                                                                       |
| Data Required   | **Supabase** — FeeRecord + ScopeRecord (all prior phase data) · **AL proposal template** · **Egnyte** — B Job Information folder path · **Notion** — Projects database (for project seed on win) |
| Output          | Proposal PDF · Egnyte save · Notion project created → Handoff to commercial pipeline                                                                                                             |

---

### Between-phase gates

Between each phase column, a narrow vertical gate strip with a ✓ symbol. Label beneath each gate:

- Between 1→2: `Client + site confirmed`
- Between 2→3: `Parameters locked`
- Between 3→4: `Fee validated`
- Between 4→5: `Scope record complete`

Gates styled as thin vertical bars in amber. They are the checkpoints — nothing passes without them.

---

### Callout flags

Two special flags overlaid at the phase column header:

- **Phase 4 header:** ⚠ amber badge reading `HIGHEST LEVERAGE — scope creep >50% of projects`
- **Phase 3 header:** ⚠ amber badge reading `GAP — past project actuals not yet integrated`

These flags are small, top-right of the column header. They flag the two critical pain points for the directors.


---

## Diagram 3 — Technical Design of the Future Fee Proposal Workflow

**Type:** Layer matrix (rows = 7 layers, columns = 5 phases) with expandable detail per cell
**Audience:** Technical primary (Danny, Felipe) — Danny can interrogate any cell; directors read the row labels to understand what exists
**Purpose:** Show, at a glance, what the system does at each layer for each phase. Sufficient detail to start writing a backlog.

---

### Layout

**Grid:** 7 rows × 5 columns + header row + header column

**Row labels (left margin)** — 7 layers, each with a one-line definition beneath the label:

| Row | Layer | One-line definition |
|---|---|---|
| 1 | **Interaction** | Where and how people engage |
| 2 | **Workflow & Logic** | How the process is orchestrated and controlled |
| 3 | **Audit Layer** | What is logged, versioned, and made immutable |
| 4 | **Intelligence Layer** | What the AI does |
| 5 | **Tools & Actions** | Specific agent capabilities used |
| 6 | **Data Layer** | Data stores read and written |
| 7 | **Integrations** | External system connections at this phase |

**Column headers:** Phase 1 through Phase 5 (same labels as Diagram 2).

---

### Cell content (detailed)

Each cell contains 1–3 brief bullet points. No full sentences. Priority: what is unique or notable about that intersection. Empty cells are marked with `—`.

**Row 1 — Interaction**

| Phase 1 | Phase 2 | Phase 3 | Phase 4 | Phase 5 |
|---|---|---|---|---|
| Client search field + Pipedrive dropdown · Site address input · Planning context display (agent output, editable) | Sector / build type dropdowns · HRB auto-flag with implications shown · Service level selector with scope preview | Programme builder: stage toggles + duration sliders + team day inputs · Running fee total auto-updates · Benchmark widget | Scope checklist: pre-populated rows, toggle-to-override · DRM grid (P/D/I) · Bespoke exclusion text field | Sign-off path displayed by fee value · Approval confirmation click · Proposal preview → Download PDF |

**Row 2 — Workflow & Logic**

| Phase 1 | Phase 2 | Phase 3 | Phase 4 | Phase 5 |
|---|---|---|---|---|
| Client lookup: exists → populate, not found → new flag · Geocode address → coordinates | HRB rule: IF residential AND (>18m OR 7+ storeys) → flag + extend Stage 4 to 12m, Stage 5 to 24m · Benchmark category auto-assigned | Fee calc: `Σ (days × rate × duration) × service multiplier` · Benchmark: fee% vs CV vs Bureau table → position flag | Service-level defaults pre-loaded from scope templates · Director overrides tracked · DRM validation: no blank required fields | Threshold routing: <£15k → A, £15k–£100k → B, >£100k or HRB → C · Proposal template render from structured data |

**Row 3 — Audit Layer**

| Phase 1 | Phase 2 | Phase 3 | Phase 4 | Phase 5 |
|---|---|---|---|---|
| Log: proposal created, user, timestamp, client_id, planning context source (agent or manual) | Log: all parameters set, HRB status, benchmark category assigned | Log: full programme, team composition, total fee, benchmark position, comparables shown | Log: every scope item state (default vs. override), DRM assignments, bespoke exclusions verbatim + AI-generated version · ScopeRecord immutable on sign-off | Log: sign-off path, approver, timestamp · Proposal version locked · Egnyte file path stored |

**Row 4 — Intelligence Layer (AI)**

| Phase 1 | Phase 2 | Phase 3 | Phase 4 | Phase 5 |
|---|---|---|---|---|
| **Planning Context Agent:** address → LPA scrape → structured JSON (conservation, listed, height, use class, history) | — (deterministic logic, no AI needed) | **Comparable Lookup Agent:** sector + HRB + CV range → query Supabase → return top 3 past projects with fee, hours, margin + explanation | **Exclusion Language Agent:** director plain text → contract-grade language → confirmation · Phase 2: Lesson Spotter surfaces past scope patterns | **Narrative Agent:** FeeRecord + ScopeRecord → cover letter text + scope summary → director review before send |

**Row 5 — Tools & Actions**

| Phase 1 | Phase 2 | Phase 3 | Phase 4 | Phase 5 |
|---|---|---|---|---|
| Web scrape (LPA planning portals) · Geocoding API · Pipedrive read | — | Supabase read (FinancialPerformance — CMap actuals) · Supabase read (FeeBureauRates) | Supabase read (ScopeTemplates) · Supabase write (ScopeRecord) · Phase 2: Supabase read (Lessons) | PDF generation · Egnyte API write · Gmail API (approval notifications) · Notion API write (project record on win) |

**Row 6 — Data Layer**

| Phase 1 | Phase 2 | Phase 3 | Phase 4 | Phase 5 |
|---|---|---|---|---|
| **Write:** Supabase `projects` (new record) · **Read:** Pipedrive client | **Write:** Supabase `fee_records` (parameters) · **Read:** Supabase `fee_bureau_rates` | **Write:** Supabase `fee_records` (fee + benchmark) · **Read:** Supabase `financial_performance` (CMap actuals), `fee_bureau_rates` | **Write:** Supabase `scope_records` (immutable) · **Read:** Supabase `scope_templates`, `lessons` (Phase 2) | **Read:** Supabase `fee_records`, `scope_records` · **Write:** Supabase `projects` (status update) · **Write:** Egnyte (PDF), Notion (project) |

**Row 7 — Integrations**

| Phase 1 | Phase 2 | Phase 3 | Phase 4 | Phase 5 |
|---|---|---|---|---|
| Pipedrive API (client lookup) · LPA planning portal (agent scrape) · Geocoding API | — | CMap CSV → Supabase ETL (batch, daily) | — | Egnyte API (write proposal PDF) · Notion API (create project on win) · Gmail API (approval notifications) · Future: DocuSign |


---

## Diagram 4 — Capability Architecture

**Type:** Layered stack diagram (vertical layers from top to bottom) with named components at each layer and connections between layers
**Audience:** All. Directors read the layer names and component boxes. Danny interrogates the connections and specifications.
**Purpose:** What needs to be built, what each piece does, and how they connect. The blueprint.

---

### Layout

**Seven horizontal layers, stacked vertically, reading top to bottom:**

Each layer is a horizontal band, full width. Layer name on the left in a dark label pill. Components displayed as cards within the band.

---

### Layer 1 — Interaction Layer

Three component cards:

**[Fee Proposal Web Tool]**
- Next.js / Vercel
- 5-phase workflow UI
- Browser-based, no install
- Connects to Supabase + Claude API

**[Notion — Firm Workspace]**
- Project management (replaces CMap)
- CRM and pipeline (replaces Pipedrive)
- Client portals
- Invoice schedules
- Human-operated

**[Director Dashboard]**
- Active proposals: status + fee estimate
- Projects at risk: billing vs. tracker
- Won this quarter
- Read from Supabase (Phase 2)

Connector: thin arrows downward from all three cards to Layer 2.

---

### Layer 2 — Workflow & Logic Layer

Four component cards:

**[Fee Calculation Engine]**
- Σ (days × rate × duration) × multiplier
- Client-side, deterministic
- Real-time recalculation on input

**[HRB Rules Engine]**
- IF residential AND (>18m OR 7+ storeys) → HRB flag
- Downstream: Stage 4 → 12m, Stage 5 → 24m
- Deterministic

**[Benchmark Crosscheck]**
- Calculated fee % of CV vs. RICS Bureau table
- Position flag: below / within / above
- Connects to Supabase `fee_bureau_rates`

**[Sign-off Router]**
- <£15k → Path A (peer check)
- £15k–£100k → Path B (director)
- >£100k or HRB → Path C (four-senior)
- Deterministic threshold logic

---

### Layer 3 — Intelligence Layer (AI)

Five component cards:

**[Planning Context Agent]**
- Trigger: site address entered
- Tool: LPA portal web scrape
- Output: structured JSON (conservation, listed, height, use class, history)
- Model: Claude Sonnet 4.6

**[Comparable Lookup Agent]**
- Trigger: Phase 3 parameters confirmed
- Tool: Supabase `financial_performance` query
- Output: top 3 past projects with fee, hours, margin
- Model: Claude Sonnet 4.6

**[Exclusion Language Agent]**
- Trigger: bespoke exclusion free text entered
- Tool: prompt → Claude → structured output
- Output: contract-grade exclusion clause for review
- Model: Claude Sonnet 4.6

**[Proposal Narrative Agent]**
- Trigger: proposal assembly
- Input: FeeRecord + ScopeRecord (structured)
- Output: cover letter + scope summary
- Model: Claude Sonnet 4.6

**[Lesson Spotter *(Phase 2)*]**
- Trigger: Phase 4 scope definition
- Tool: Supabase `lessons` query
- Output: past scope decisions for similar projects
- Model: Claude Sonnet 4.6

---

### Layer 4 — Audit Layer

Three component cards:

**[Event Logger]**
- All user actions → Supabase `audit_log`
- entity_type · entity_id · action · user · before/after · timestamp

**[Scope Record Vault]**
- ScopeRecord immutable on sign-off
- Version history maintained
- Who approved, when, which path

**[Agent Run Log *(Phase 2)*]**
- What each agent did · inputs/outputs
- Token cost · duration · status
- Foundation for cost governance

---

### Layer 5 — Data Layer

**Two distinct sub-sections within this layer, separated by a vertical divider:**

**LEFT: NOTION (Firm-Facing)**
`Label: Notion — Human-Operated`

Databases listed as small tags:
- Projects · Clients / Contacts · Pipeline / Deals · Invoice Schedule · Team Resourcing

Caption: *Where people work. Replaces CMap (PM) and Pipedrive (CRM) over time.*

**RIGHT: SUPABASE (Agent-Facing — Knowledge Core)**
`Label: Supabase Postgres — Agent-Operated`

Tables listed as small code-style tags:
- `projects` · `fee_records` · `scope_records` · `financial_performance` · `fee_bureau_rates` · `scope_templates` · `clients` · `audit_log` · `lessons *(P2)*` · `agent_runs *(P2)*`

Caption: *Where agents think. Structured schemas, time-series data, canonical records. Not human-operated directly.*

A double-headed arrow between the two sub-sections, labelled: `Notion → Supabase sync (event-driven, Phase 2)`

---

### Layer 6 — Integration Layer

Seven integration cards, arranged horizontally:

**[Pipedrive]**
- Direction: Read
- Method: REST API
- Data: client records
- Cadence: on demand
- Status: Transitional → Notion CRM

**[CMap]**
- Direction: Read
- Method: Daily CSV export → ETL script
- Data: financial performance (invoiced, paid, time cost, margin)
- Cadence: Daily batch
- Status: Transitional → Notion PM

**[Egnyte]**
- Direction: Write
- Method: REST API
- Data: Proposal PDF → B Job Information folder
- Cadence: On proposal approval

**[Planning Portals (LPA)]**
- Direction: Read
- Method: Agent web scrape
- Data: Planning context per site
- Cadence: On demand per proposal

**[Google Workspace]**
- Direction: Read / Write
- Method: Gmail API + Workspace MCP
- Data: Approval notifications (Phase 1) · Email extraction (Phase 2)
- Cadence: Event-driven

**[Notion API]**
- Direction: Write
- Method: Notion REST API
- Data: Project record created on win
- Cadence: Event-driven

---

### Layer 7 — Systems of Record

Six system tiles, horizontal:

| Tile | Status | Notes |
|---|---|---|
| **CMap** | Transitional | Financial performance + timesheets. Source for ETL. Will migrate. |
| **Pipedrive** | Transitional | Sales pipeline + client CRM. Will migrate to Notion. |
| **Egnyte** | Permanent | File storage. B Job Information. Stays. |
| **RICS Fees Bureau** | Static reference | Benchmark rates. Loaded annually. Lives in Supabase. |
| **Notion** *(forward)* | Primary (Phase 2+) | Projects + CRM + PM. Becomes the primary system of record. |
| **Google Workspace** | Permanent | Email, calendar, docs, auth. Stays. |

---

### Connection arrows (Layer 6 → Layer 7)

Each integration in Layer 6 has a line connecting to its source/target system in Layer 7:
- Pipedrive ↔ Pipedrive (read)
- CMap → Egnyte tile (no — wait: CMap ETL → Supabase) — draw arrow from CMap integration card to Supabase data layer, not to Egnyte.
- Egnyte integration → Egnyte SoR tile
- LPA portals → no SoR tile (external web — show a cloud icon instead)
- Google Workspace integration ↔ Google Workspace SoR tile
- Notion API ↔ Notion SoR tile

---

### Phase annotations (right margin)

A small vertical label on the right side of the diagram, indicating which sprints build each layer:

```
Layer 1: Sprint 0 (foundation) + Sprint 5 (full UI)
Layer 2: Sprint 2 (fee + HRB + benchmark) + Sprint 4 (scope) + Sprint 5 (sign-off)
Layer 3: Sprint 1 (planning agent) + Sprint 3 (comparables) + Sprint 4 (exclusion agent) + Sprint 5 (narrative)
Layer 4: All sprints (logging from day 1)
Layer 5: Sprint 0 (Supabase schema + Notion setup)
Layer 6: Sprint 0–3 (Pipedrive, CMap ETL, Egnyte, LPA scrape)
Layer 7: Existing systems — no build required
```

---


---

## Diagram 5 — Data Architecture Summary

**Type:** Two-column split with a connecting ETL bridge beneath
**Audience:** All. Directors see the two-layer distinction immediately. Danny validates the schema mapping.
**Purpose:** Make one thing crystal clear — Notion and Supabase are not the same thing. One is where people work. The other is where agents think. Show exactly what lives in each, and how data moves between them.

---

### Layout

Two large columns, side by side, equal width. A narrow ETL bridge below both columns connecting CMap into Supabase.

---

### Column A — NOTION (left)
`Header label: NOTION`
`Sub-label: Firm-Facing · Human-Operated`

One-line description beneath header:
*Where Oliver, John, and the team work. Project management and CRM. Replaces CMap and Pipedrive over time.*

Five database cards stacked vertically, each a flat row with a left-side charcoal accent bar:

| Database | Key fields |
|---|---|
| **Projects** | name · number · client · lead · stage · status · sector · fee value · start date |
| **Clients / Contacts** | name · company · email · sector · relationship stage — *imported from Pipedrive* |
| **Pipeline / Deals** | deal name · client · fee estimate · stage · probability · expected start |
| **Team / Resourcing** | person · project · role · days/week · stage from/to |
| **Invoice Schedule** | project · invoice date · amount · deliverable · status — *seeded from fee proposal* |


---

### Column B — SUPABASE (right)
`Header label: SUPABASE`
`Sub-label: Agent-Facing · Knowledge Core`
`Background: #1C1C1C · text: white · border-top: 3px solid #FFCE1B`

One-line description beneath header (white text):
*Where agents think. Structured schemas, agent-queryable records. Seeded from Notion, CMap CSV, and workflow events.*

Three schema sections stacked vertically. Each table shown as a card: table name as bold header, fields in monospace beneath. Compact — no prose descriptions inside the cards.

---

**OPERATIONAL**
`Background: rgba(255,255,255,0.06) · Border: rgba(255,255,255,0.15)`
Caption: *Transactional truth — what was agreed, who did it, immutable on sign-off*

Six table cards in a 2×3 grid:

```
projects
id · name · number · client_id · lead_id
sector · build_type · contract_type
hrb_flag · stage_current · status
fee_value · cv_value · start_date · notion_id
```
```
fee_records
id · project_id · total_fee
stage_fees JSONB · benchmark_pct
benchmark_position · service_level
comparable_ids[] · created_at · created_by
```
```
scope_records
id · project_id · fee_record_id
included_items JSONB · excluded_items JSONB
drm_assignments JSONB · bespoke_exclusions[]
signed_at · signed_by · version
```
```
scope_templates
id · service_level · contract_type
stage · items JSONB
-- Bronze/Silver/Gold defaults
```
```
clients
id · name · company · email · sector
pipedrive_id · notion_id · relationship_stage
```
```
audit_log
id · entity_type · entity_id · action
user_id · before JSONB · after JSONB · timestamp
```

---

**ANALYTICAL**
`Background: rgba(255,255,255,0.06) · Border: rgba(255,255,255,0.15)`
Caption: *Time-series data · fee actuals vs. benchmarks · no source system preserves this*

Two table cards side by side:

```
financial_performance
id · project_id
invoiced_to_date · paid_to_date
time_cost_to_date · expected_profit
margin_pct · snapshot_date
-- sourced from CMap CSV
```
```
fee_bureau_rates
id · sector · cv_band
rate_pct · retrofit_uplift
db_discount · year · source
```

---

**VECTOR** `· pgvector` *(Phase 2)*
`Background: rgba(255,206,27,0.08) · Border: rgba(255,206,27,0.4)` *(amber tint)*
Caption: *Past proposals · scope patterns · RAG context — emerges as the system accumulates data*

One table card:

```
lessons
id · project_id · stage · category
description · impact
applied_to JSONB · created_at
-- Phase 2
```

Footer inside column, amber text:
`↻ agents enrich · consolidate · write back`

---

### ETL Bridge — below both columns, centred
`Background: light green-grey (#EEF4EE) · Border: 1px solid #C8DCC8 · border-radius: 2px`
`Full width · compact height`

Label: **CMap → Supabase ETL** *(Transitional)*

Two lines of detail:
- `Daily CSV export → parse → financial_performance + projects tables`
- `When AL migrates to Notion PM: replaced by Notion → Supabase sync`

Left side of the bridge: an upward arrow pointing to Supabase column, labelled `writes to Analytical + Operational`
Right side of the bridge: a small dashed arrow labelled `future: Notion → Supabase sync`

---

### Connecting arrow between the two columns
A horizontal double-headed arrow between Column A and Column B at mid-height.
Label above the arrow: `sync`
Label below the arrow: `Notion → Supabase · event-driven · Phase 2`

This arrow is dashed — it's a planned connection, not Phase 1.

---

### Design notes

- **The two-column split is the entire message.** Notion on the left = people. Supabase on the right = agents. Every design choice reinforces this distinction.
- **Column B is visually heavier** — dark background, amber accents. It is the intelligence backbone. Column A is light and clean — it is the workspace.
- **The three schemas within Supabase map directly to Danny's diagram** — Operational, Analytical, Vector. The table names inside each are AL-specific. Danny sees his architecture filled in with real content.
- **Vector schema gets amber tint** — it is the AI-native layer. Phase 2, but name it now so the intent is clear.
- **ETL bridge is below both columns** — it is a transitional mechanism, not a primary architectural element. It sits beneath the two-column structure to signal it is a bridge, not a core.
- **The sync arrow is dashed** — the Notion → Supabase sync is a Phase 2 decision. Don't present it as built.
- **No consumers, no source systems, no n8n detail.** This diagram is purely about what data exists, where it lives, and how those two stores relate to each other. That is all.

---

### Diagram 5 position at the workshop

Show after Diagram 4. Introduce it as the zoom-in on the data layer:

> *"Two things that must not be confused. Notion is where the team works — they never touch Supabase. Supabase is where the agents think — they never live in Notion. Danny, the three schemas map to exactly what you described. Does this match?"*

---

## Summary: Diagram Usage at the Workshop

| Diagram | When to show | Who drives the conversation |
|---|---|---|
| **Diagram 1 — Vision** | Opening — sets the why | Felipe — frame the problem and the prize |
| **Diagram 2 — Workflow** | Early — establishes the scope of Phase 1 | Oliver — he knows the workflow; let him correct and add |
| **Diagram 3 — Technical Design** | Middle — after workflow is aligned | Danny — let him interrogate each cell; Felipe facilitates |
| **Diagram 4 — Architecture** | Late — once workflow + layers are agreed | Danny + Felipe — confirm stack, identify decisions, build backlog |
| **Diagram 5 — Data Architecture** | After Diagram 4 — zoom into the data layer | Danny — validate schema design and n8n ETL; Oliver + John see what the dashboard reads from |

**Transition logic between diagrams:**
1 → 2: *"Here's why we're doing this. Now let's walk exactly what we're building."*
2 → 3: *"Now we know the workflow. Let's look at what the system needs to do at each step."*
3 → 4: *"Now we know what it needs to do. Here's how we build it."*
4 → 5: *"And here's the data layer in detail — this is what Danny has been describing. Let's confirm the schemas are right."*
