---
type: architecture-overview
archived: 2026-06-02
date: 2026-06-02
title: "AIOS Architecture Overview — Fee Proposal V1"
archive: true
client: Ackroyd-Lowrie
project: Workshop
---
# AIOS Architecture Overview — Fee Proposal V1
**Ackroyd Lowrie AI Operating System · Capability Architecture**
*Prepared by Molior · 2026-06-02 · Workshop prep*

---

## 1. Architecture Framing

The AL AIOS is not a single tool. It is a layered operating system that sits across the firm's existing tools and connects them through a structured intelligence backbone. The fee proposal is the first workflow slice — the initial vertical cut from user interaction down to systems of record. Every subsequent workflow slice reuses the same layers.

**Two foundational distinctions:**

**Notion vs. Supabase — different purposes, different audiences:**
- **Notion** is the firm's operating interface. It is where people work — project management, CRM, client portals, task tracking, invoice schedules. It is human-operated and will progressively replace CMap (project management) and Pipedrive (CRM/sales).
- **Supabase** is the knowledge core and agent database. It is where the system thinks — structured schemas, agent-queryable records, time-series data, financial performance, comparable project lookup, scope templates, lessons. It is not a user-facing tool. It is the backbone that agents read from and write to, and that surfaces intelligence into Notion and the web tool.

**The architecture in one diagram:**

```
┌─────────────────────────────────────────────────────────────────┐
│  INTERACTION LAYER                                              │
│  Fee Proposal Web Tool · Notion (PM / CRM) · Director Dashboard │
└────────────────────────────┬────────────────────────────────────┘
                             │
┌────────────────────────────▼────────────────────────────────────┐
│  WORKFLOW & LOGIC LAYER                                         │
│  Fee calculation engine · HRB rules · Sign-off routing          │
│  Scope pre-population · Programme builder · Proposal generator  │
└────────────────────────────┬────────────────────────────────────┘
                             │
┌────────────────────────────▼────────────────────────────────────┐
│  INTELLIGENCE LAYER (Claude API)                                │
│  Planning context agent · Comparable lookup · Scope suggestions │
│  Bespoke exclusion drafting · Proposal narrative generation     │
└────────────────────────────┬────────────────────────────────────┘
                             │
┌────────────────────────────▼────────────────────────────────────┐
│  AUDIT LAYER                                                    │
│  All events logged · Version history · Who did what, when       │
│  Immutable scope records · Approval trails                      │
└────────────────────────────┬────────────────────────────────────┘
                             │
        ┌────────────────────┴────────────────────┐
        │                                         │
┌───────▼──────────┐                   ┌──────────▼──────────────┐
│  NOTION          │                   │  SUPABASE (Postgres)    │
│  (Firm-facing)   │                   │  (Agent-facing /        │
│  Project mgmt    │                   │   Knowledge Core)       │
│  CRM / Pipeline  │                   │  Fee records            │
│  Invoice tracker │                   │  Scope records          │
│  Client portals  │                   │  Financial performance  │
│  Team tasks      │                   │  Comparable lookup      │
└───────┬──────────┘                   │  Scope templates        │
        │                              │  Audit log              │
        │                              │  Lessons (Phase 2)      │
        │                              └──────────┬──────────────┘
        │                                         │
┌───────▼─────────────────────────────────────────▼──────────────┐
│  INTEGRATION LAYER                                              │
│  Pipedrive (read) · CMap CSV → ETL · Egnyte (write)            │
│  Planning portals (agent scrape) · Gmail (notifications)       │
│  DocuSign (future) · Notion API · Google Workspace             │
└────────────────────────────┬────────────────────────────────────┘
                             │
┌────────────────────────────▼────────────────────────────────────┐
│  SYSTEMS OF RECORD                                              │
│  CMap (financial — transitional) · Pipedrive (CRM — trans.)    │
│  Egnyte (files — permanent) · RICS Fees Bureau (benchmarks)    │
│  Notion (projects — future primary) · Google Workspace         │
└─────────────────────────────────────────────────────────────────┘
```

---

## 2. Capability Architecture — Component Breakdown

### Component 1: Fee Proposal Web Tool (Frontend)

**What it is:** A web application that replaces Oliver's non-functional HTML prototype. Single-page application, browser-based, no local install. Built to be used by directors and senior architects.

**What it provides:**
- Structured 5-phase workflow (Brief Assembly → Parameters → Programme + Fee → Scope Definition → Sign-off + Assembly)
- Client lookup connected to Pipedrive (Phase 1)
- Site address input + geolocation map (Phase 1)
- Planning context display (auto-populated by agent, editable) (Phase 1)
- Parameter form: sector, build type, HRB auto-flag, service level, units, CV (Phase 2)
- Programme builder: stage toggles, duration inputs, team composition, running fee total (Phase 3)
- Fees Bureau benchmark comparison widget (Phase 3)
- Comparable past project display (Phase 3 — requires CMap Supabase load)
- Scope checklist: pre-populated by service level, all items reviewable and overridable (Phase 4)
- DRM matrix: pre-populated, editable (Phase 4)
- Bespoke exclusions: free text + AI-assisted contract language drafting (Phase 4)
- Sign-off routing: fee-value-based, approval notifications (Phase 5)
- Proposal document assembly + PDF download (Phase 5)
- Egnyte save + Notion project creation (Phase 5)
- Active proposals dashboard (proposals in draft, with client, won this quarter)

**Technology:** React or Next.js frontend. Hosted on Vercel (free tier for now, scalable). Connects to Supabase via REST API. Claude API for intelligence features.

**Decision for workshop:** Rebuild from scratch using Oliver's prototype as workflow reference, or reengineer the prototype? Recommend: rebuild. Oliver's prototype is valuable as a workflow reference, but its code is a solo HTML file with hardcoded logic — not a viable base for a multi-user production system.

---

### Component 2: Intelligence Layer (Claude API)

**What it is:** A set of AI agent functions, each responsible for a specific task within the fee proposal workflow. Not a general-purpose chatbot — each function has a defined input, a defined output format, and deterministic-intent prompting.

**Agent functions — Phase 1 scope:**

| Agent | Trigger | Input | Output | Model |
|---|---|---|---|---|
| **Planning Context Agent** | Site address entered | Site address + coordinates | Structured JSON: conservation_area (bool), listed_status (str), height_storeys (int), use_class (str), planning_history[] | Sonnet 4.6 |
| **Comparable Lookup Agent** | Phase 3 — parameters confirmed | Sector, HRB flag, CV range, service_level | Top 3 comparable past projects from Supabase with fee, hours, margin, and brief explanation of differences | Sonnet 4.6 |
| **Exclusion Language Agent** | Phase 4 — bespoke exclusion entered | Director's plain-text description | Contract-grade exclusion language for review and confirmation | Sonnet 4.6 |
| **Proposal Narrative Agent** | Phase 5 — proposal assembly | FeeRecord + ScopeRecord structured data | Cover letter text, scope summary paragraph, formatted for AL tone | Sonnet 4.6 |

**Phase 2 additions (not in scope for V1):**

| Agent | Function |
|---|---|
| **Lesson Spotter** | Flags patterns from past projects → suggests scope items to exclude |
| **Email Scanner** | Extracts project-relevant information from Gmail → writes to Supabase |
| **Status Updater** | Reads CMap / Notion → updates project status in Supabase |
| **Minutes Reader** | Processes Otter / Fireflies transcripts → extracts decisions and action items |

**Technology:** Anthropic Claude API (claude-sonnet-4-6 as primary model). Prompt caching enabled for context-heavy operations (scope templates, past project data). Structured output (JSON mode) for all extraction agents. Tool use for Supabase reads and web scraping.

---

### Component 3: Supabase — Knowledge Core (Agent Database)

**What it is:** A managed Postgres database (Supabase cloud). The structured intelligence backbone of the system. All agent queries go here rather than directly to source systems. All workflow events are written here. This is what gives the system memory, comparability, and determinism.

**Why not just markdown files?** At AL's scale (25–30 people, 40 live projects, 2–4 bids/month), an unstructured knowledge store becomes expensive and non-deterministic. Agents querying markdown files burn tokens, produce inconsistent answers, and cannot support dashboard time-series data. A structured database gives: canonical records, schema-enforced consistency, cheap queries, resilience when external systems go down, and a foundation for future analytics.

**Core tables (Phase 1):**

```sql
-- Project identity and status
projects (
  id, name, number, client_id, lead_id, sector, build_type, contract_type,
  hrb_flag, service_level, stage_current, status, fee_value, cv_value,
  start_date, notion_id, egnyte_folder_path, created_at, updated_at
)

-- Fee calculation record
fee_records (
  id, project_id, total_fee, stage_fees JSONB, benchmark_pct,
  benchmark_position, service_level, cv_value, comparable_ids UUID[],
  created_at, created_by, version
)

-- Scope record — the contractual spine
scope_records (
  id, project_id, fee_record_id, service_level, contract_type,
  included_items JSONB, excluded_items JSONB, drm_assignments JSONB,
  bespoke_exclusions JSONB, signed_at, signed_by, version, is_final BOOL
)

-- Financial performance (from CMap CSV)
financial_performance (
  id, project_id, invoiced_to_date, paid_to_date, time_cost_to_date,
  expected_profit, margin_pct, snapshot_date, source
)

-- RICS Fees Bureau benchmark rates (static)
fee_bureau_rates (
  id, sector, cv_lower, cv_upper, rate_pct, retrofit_uplift,
  db_discount, year, source
)

-- Scope templates (Bronze/Silver/Gold defaults)
scope_templates (
  id, service_level, contract_type, stage, items JSONB
  -- items: [{item_id, label, included_by_default, drm_default}]
)

-- Client records
clients (
  id, name, company, email, sector, pipedrive_id, notion_id,
  relationship_stage, created_at
)

-- Audit log (all events)
audit_log (
  id, entity_type, entity_id, action, user_id, before JSONB,
  after JSONB, timestamp
)
```

**Phase 2 additions:**
```sql
-- Lessons learned (emerges from operating data)
lessons (
  id, project_id, stage, category, description, impact,
  applied_to_templates JSONB, created_at, created_by
)

-- Agent run log (control plane for autonomous agents)
agent_runs (
  id, agent_name, trigger, input JSONB, output JSONB,
  status, tokens_used, cost_usd, started_at, completed_at
)
```

**Vector store (for document similarity — Phase 2):**
Supabase supports pgvector. Used for: proposal document similarity search, scope record comparison across projects. Not needed for Phase 1 fee calculation, but same Supabase instance.

---

### Component 4: Notion — Firm Operating Layer

**What it is:** The firm's primary human-operated workspace. Replaces CMap (project management) and Pipedrive (CRM) over time. Not a data store for agents — a workspace for people, with structured enough data to be synced to Supabase.

**Core Notion databases (Phase 1 setup):**

| Database | Purpose | Seeded from |
|---|---|---|
| **Projects** | Live project list, status, lead, stage, fee | Fee proposal tool (on win) |
| **Clients / Contacts** | CRM — replaces Pipedrive | Imported from Pipedrive |
| **Pipeline / Deals** | Sales funnel — replaces Pipedrive deals | Imported from Pipedrive |
| **Invoice Schedule** | When invoices go out, by project and deliverable | Seeded from fee proposal scope record |
| **Team Resourcing** | Who is on what, capacity tracking | Manual initially |

**Notion → Supabase sync (Phase 2):** Changes in Notion (project status updates, resourcing changes, invoice status) sync to Supabase via Notion API + webhook. This keeps the knowledge core up to date without agents polling Notion directly.

**Decision for workshop:** When does the CMap → Notion migration happen? This is a data migration and workflow change for the team. Recommend: begin migration planning in Phase 1, execute in Phase 2 once the fee proposal tool is live and the Notion database schema is validated.

---

### Component 5: Integration Layer

**What it is:** The routes by which the system connects to external tools. Each integration has a defined direction (read / write / both), a method (API / CSV / scrape / webhook), and a defined scope (what data, how often).

| Integration | Direction | Method | Data | Cadence |
|---|---|---|---|---|
| **Pipedrive** | Read | REST API | Client records (name, company, email, sector) | On demand (client lookup) |
| **CMap** | Read | Daily CSV export → ETL | Financial performance (invoiced, paid, time cost, margin) by project | Daily batch |
| **Egnyte** | Write | REST API | Proposal PDF saved to B Job Information folder | On proposal approval |
| **Planning portals (LPA)** | Read | Agent web scrape | Conservation area, listed status, height, use class, planning history | On demand (per proposal) |
| **Google Workspace** | Read / Write | Gmail API + Google Workspace MCP | Approval notifications, email extraction (Phase 2) | On demand / triggered |
| **Notion** | Read / Write | Notion API | Project creation on win, status updates | On demand (event-driven) |
| **DocuSign** | Write | DocuSign API | Appointment signing trigger | On approval (Phase 2) |
| **RICS Fees Bureau** | Read | Static load | Benchmark rate tables | Annual refresh |

**MCP gateway consideration (from Danny):** Individual MCP connections granted at the tool level can have unintended blast radius — an agent with CMap MCP access could, in principle, modify all CMap records. Mitigations for Phase 1: (1) CMap access is read-only via CSV, not live MCP. (2) Egnyte MCP scoped to B Job Information folder only. (3) Notion MCP scoped to specific databases. (4) Evaluate centrally administered MCP gateway in Phase 2 as autonomous agents are introduced.

**Access control principle:** Agents operate with the same access as the user who triggered them — no broader. JumpCloud → Google Workspace migration noted; implement access control through Google Workspace rather than JumpCloud.

---

### Component 6: CMap → Supabase ETL Pipeline

**What it is:** A lightweight data pipeline that processes CMap's daily CSV export into the Supabase `financial_performance` table. This is the transitional solution while CMap is still the system of record for project financials.

**What it does:**
1. CMap generates a daily CSV export (manually triggered by a staff member, or scheduled if CMap supports it)
2. A Python script (Supabase Edge Function or simple cron script) parses the CSV
3. Extracts: project_id, invoiced_to_date, paid_to_date, time_cost_to_date, expected_profit, margin, snapshot_date
4. Upserts into Supabase `financial_performance` table (project_id + snapshot_date as composite key — preserves time series)
5. Updates Supabase `projects` table with latest status and fee value

**What this enables:**
- Comparable project lookup in Phase 3 (which past projects had similar sector, HRB, CV, and what was the actual fee and margin?)
- Future: director dashboard showing project margin vs. proposed fee, time to invoice, debt by project

**Migration path:** When AL migrates from CMap to Notion, the ETL pipeline is replaced by a Notion → Supabase sync. The Supabase table schema remains unchanged — only the source changes.

---

### Component 7: Director Dashboard (Phase 1 stretch / Phase 2)

**What it is:** A read-only view for directors showing: active fee proposals (status, fee estimate, client), projects at risk (billing ahead of tracker, compliance gaps), resourcing health, and won-this-quarter summary.

**Data sources:** All from Supabase. No direct system queries — the database is the authoritative view.

**Key metrics:**
- Active fee proposals: count, status breakdown (draft / with client), fee estimate total
- Won this quarter: count, total fee value
- Projects at risk: billing % vs tracker % (flags where billing is significantly ahead of stated completion — John's core pain)
- Lessons applied to templates: count (Phase 2)

**Why this requires Supabase, not direct queries:** Dashboard time-series data (billing trend over 3 months, margin trend by project) cannot be reconstructed from live system queries if source systems don't store history. Supabase `financial_performance` table preserves snapshots. This is Danny's core point: *"A dashboard can't really be something that's created on the fly every time... it needs an underlying database."*

---

## 3. Build Sequence — Phase 1

**Goal:** A working fee proposal tool that produces a legally defensible proposal document and seeds the Notion project record. Delivered incrementally.

### Sprint 0 — Foundation (before building features)
- [ ] Set up Supabase project (Postgres instance, connection strings, RLS policies)
- [ ] Create core tables: `projects`, `clients`, `fee_records`, `scope_records`, `audit_log`
- [ ] Load static data: `fee_bureau_rates` (RICS 2026), `scope_templates` (Bronze/Silver/Gold defaults from Oliver's prototype)
- [ ] Set up Notion workspace: Projects, Clients, Pipeline databases
- [ ] Pipedrive → clients import (one-time)
- [ ] Set up Claude API integration (Anthropic SDK, prompt caching enabled)
- [ ] Set up frontend project (Next.js / Vercel)

### Sprint 1 — Brief Assembly (Phase 1 of workflow)
- [ ] Client lookup: Pipedrive API read → Supabase client create/update
- [ ] Site address input + geocoding API
- [ ] Planning context agent: site address → LPA scrape → structured JSON → display
- [ ] Supabase write: project record created, planning context stored
- [ ] Audit log: proposal created event

### Sprint 2 — Parameters + Programme + Fee (Phases 2–3 of workflow)
- [ ] Parameter form: sector, build type, contract type, HRB logic, service level, units, CV
- [ ] HRB rules engine: auto-flag, downstream implications displayed
- [ ] Programme builder UI: stage toggles, duration inputs, team composition
- [ ] Fee calculation engine (client-side, deterministic)
- [ ] Fees Bureau benchmark comparison (Supabase `fee_bureau_rates` read)
- [ ] Supabase write: FeeRecord with parameters, programme, total fee, benchmark position
- [ ] Audit log: fee calculation event

### Sprint 3 — CMap ETL + Comparable Lookup
- [ ] CMap CSV export format analysis
- [ ] ETL script: CSV parse → Supabase `financial_performance` upsert
- [ ] Comparable lookup agent: given sector + HRB + CV → query Supabase → return top 3
- [ ] Display in Phase 3 UI: comparable projects panel
- [ ] Audit log: which comparables were shown

### Sprint 4 — Scope Definition (Phase 4 of workflow)
- [ ] Extract scope templates from Oliver's prototype (item-by-item)
- [ ] Scope checklist UI: pre-populated from service level, overridable
- [ ] DRM matrix UI: pre-populated, editable
- [ ] Bespoke exclusions: free text + exclusion language agent (Claude)
- [ ] Supabase write: ScopeRecord (immutable once signed off)
- [ ] Audit log: every item state, every override

### Sprint 5 — Sign-off + Assembly + Notion Seed (Phase 5 of workflow)
- [ ] Sign-off routing logic: fee threshold → path A/B/C
- [ ] Approval flow: email notification (Gmail API), confirmation click
- [ ] Proposal assembly: Supabase FeeRecord + ScopeRecord → proposal template renderer
- [ ] Proposal narrative agent (Claude): cover letter + scope summary
- [ ] PDF generation
- [ ] Egnyte API write: save to B Job Information folder
- [ ] Notion project creation: on win signal, create project record from fee proposal data
- [ ] Supabase update: project status = "Proposal Sent"
- [ ] Audit log: sign-off event, proposal version locked

---

## 4. Technology Stack Summary

| Component | Technology | Rationale |
|---|---|---|
| Frontend | Next.js (React) + Vercel | Fast deployment, server-side rendering for auth, Vercel free tier for Phase 1 |
| Agent database | Supabase (managed Postgres) | Structured, relational, REST API auto-generated, pgvector for Phase 2, free tier available |
| AI agents | Anthropic Claude API (Sonnet 4.6) | Best in class for structured extraction and reasoning; prompt caching for cost efficiency |
| Firm operating layer | Notion | Human-operated PM + CRM; AI-native with MCP; replaces CMap + Pipedrive over time |
| File storage | Egnyte | Already in use; B Job Information folder is established; Egnyte API available |
| CRM (transitional) | Pipedrive → Notion | Import Pipedrive clients to Notion; new leads enter Notion directly |
| Project financials (transitional) | CMap CSV → Supabase ETL | Daily export until Notion replaces CMap |
| Authentication | Supabase Auth | Integrated with Postgres RLS; Google Workspace SSO |
| Hosting | Vercel | Zero-ops for Phase 1; scalable |
| Email / notifications | Google Workspace API | Already in use; approval notifications, future email extraction |

---

## 5. Phased Roadmap

| Phase | What | When |
|---|---|---|
| **Phase 1a** | Fee proposal tool (Sprints 0–5): Brief Assembly → Scope Definition → Sign-off → Proposal PDF → Notion seed | Workshop → build |
| **Phase 1b** | CMap ETL + comparable project lookup | Parallel with Phase 1a Sprint 3 |
| **Phase 2a** | CMap → Notion migration (project management) | After Phase 1 validated |
| **Phase 2b** | Full project tracker: briefer, stage-by-stage tracking, invoice schedule, compliance checklist | After Phase 2a |
| **Phase 2c** | Director dashboard: cross-project view, billing vs tracker, margin trends | After Phase 2b |
| **Phase 2d** | Autonomous agents: email scanner, minutes reader, status updater | After Phase 2c |
| **Phase 3** | Lessons Library: automated lesson capture from completed projects → feeds scope templates | After system has 6+ months of data |
| **Phase 4** | Commercialisation: forward deployment to other AEC firms | After Phase 2 validated at AL |

---

## 6. Open Architecture Decisions for the Workshop

| # | Decision | Options | Stakes |
|---|---|---|---|
| A1 | Rebuild Oliver's prototype from scratch vs. reengineer? | Rebuild (recommended) / Reengineer | Technical debt vs. Oliver's investment |
| A2 | CMap → Notion migration: when and how? | Phase 1 planning + Phase 2 execution / Delay indefinitely | Determines integration architecture complexity |
| A3 | Pipedrive → Notion CRM migration: when? | Phase 1 import + Phase 2 full migration / Keep Pipedrive | Eliminates an integration dependency |
| A4 | Notion as middleware (interim) vs. Supabase as permanent backend? | Notion → Supabase sync (recommended) / Notion-only | Danny's concern: Notion alone doesn't give you structured relational data for analytics |
| A5 | Hosting and authentication model | Vercel + Supabase Auth + Google SSO / Other | Simple path for Phase 1 |
| A6 | MCP gateway: when to introduce? | Phase 2 when autonomous agents arrive / Earlier | Risk control vs. build complexity |
| A7 | Partnership structure: IP, equity, roles | Three-way collaboration agreement / Client engagement / Other | Must resolve before significant build begins |

---

*Companion document: Fee Proposal Workflow — Comprehensive Overview*
*Next document: Workshop Prep — What to Provide for the 2026-06-03 Session*
