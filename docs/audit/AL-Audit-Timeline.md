---
type: audit-timeline
archived: 2026-06-02
date: 2026-05-12
title: "AL Audit — 9-Day Delivery Timeline"
archive: true
client: Ackroyd-Lowrie
project: Audit
---
# AL Audit — 9-Day Delivery Timeline

> **Client:** Ackroyd Lowrie Architecture
> **Delivery date:** 2026-05-20
> **Starting point:** Intel synthesis complete (`AL-Audit-Intel-Summary.md`)
> **Reference:** [[AUDIT]] for full methodology

---

## Overview

| Day | Date | Phase | Focus |
|---|---|---|---|
| 1 | Mon May 12 | Analysis | Intelligence Review + Gap Map |
| 2 | Tue May 13 | Analysis | Context Inventory Deep Analysis |
| 3 | Wed May 14 | Analysis | Data & Tool Landscape Deep Analysis |
| 4 | Thu May 15 | Analysis | Workflow Deep Dives |
| 5 | Fri May 16 | Analysis | Friction Points + Client Info Request |
| 6 | Sat May 17 | Analysis → Solution | Opportunity Matrix + Implementation Order |
| 7 | Sun May 18 | Solution | Foundation & Intelligence Layer Design |
| 8 | Mon May 19 | Solution | Automation Plan + Roadmap + Report Build |
| 9 | Tue May 20 | Delivery | Final Polish + Presentation |

---

## Day 1 — Mon May 12 | Intelligence Review + Gap Map

**Objective:** Get a firm-wide picture of what we know, what's inferred, and what's missing before starting any section.

**Tasks:**
- [x] Re-read `AL-Audit-Intel-Summary.md` end-to-end ✅ 2026-05-12
- [x] For each section (1–11), rate confidence: Confirmed / Inferred / Missing ✅ 2026-05-12
- [x] Create master gap list — every gap flagged as: (a) request from client, (b) infer from evidence, (c) acceptable unknown ✅ 2026-05-12
- [x] Identify which gaps are blockers for the §7 guarantee threshold or §8 foundation scores ✅ 2026-05-12
- [x] Draft client info request (hold — send on Day 5 after workflows are mapped) ✅ 2026-05-12
- [x] Note any quick synthesis wins: patterns, themes, and strongest quotes to anchor the report narrative ✅ 2026-05-12

**Output:** Master gap list (annotated), preliminary report narrative themes

---

## Day 2 — Tue May 13 | Context Inventory & Knowledge Risk Mapping

**Objective:** Build the comprehensive Context Layer analysis from a thorough source-by-source pass.

**Tasks:**
- [x] Pull all source documents: resource index, policy files, Business Plan PDF, Marketing Plan PDF, interview transcripts ✅ 2026-05-12
- [x] Go section-by-section through the Context Inventory table (§3 of intel summary) ✅ 2026-05-12
- [x] For each documented asset: confirm location, owner, format, actual accessibility, deployment status ✅ 2026-05-12
- [x] Go source-by-source (transcripts + docs): fact-check entries, correct inaccuracies, surface new detail ✅ 2026-05-12
- [x] Add any assets not yet in the inventory that emerged from interviews ✅ 2026-05-12
- [x] Build the knowledge gap table: what's missing, who carries it, what breaks if they leave ✅ 2026-05-12
- [x] Build owner risk matrix: Jon, Oliver, Andrew, Wayne, Biyi — depth of exposure per domain ✅ 2026-05-12
- [x] Score Context Layer (1–5) per sub-area with evidence: Identity, SOPs, Templates, Standards, Consultant history, Knowledge transfer ✅ 2026-05-12
- [x] Flag specific items for client info request ✅ 2026-05-12

**Output:** Comprehensive Context Layer analysis doc — asset table, gap table, owner risk matrix, score with rationale

---

## Day 3 — Wed May 14 | Data & Tool Landscape Deep Analysis

**Objective:** Build the comprehensive Data Layer analysis — connectivity, fragmentation, and integration readiness.

**Tasks:**
- [x] Pull source files: resource index, Egnyte structure screenshots, Biyi transcript, CMap charge-out sheet ✅ 2026-05-12
- [x] Go row-by-row through the tool inventory table (§4 of intel summary) ✅ 2026-05-12
- [x] For each tool: confirm purpose, actual vs. intended usage, data types stored, who uses it ✅ 2026-05-12
- [x] Assign integration tier per tool: Tier 1 (API-ready) / Tier 2 (requires connector) / Tier 3 (custom/complex) ✅ 2026-05-12
- [x] Map data fragmentation: which data types are split across multiple systems? ✅ 2026-05-12
- [x] Map cross-system assembly pain: what does a user touch to answer one business question? ✅ 2026-05-12
- [x] Document the Egnyte folder structure in usable detail (per-project structure A–G confirmed) ✅ 2026-05-12
- [x] Score Data Layer (1–5) per sub-area with evidence: CRM, Finance, Project Mgmt, BIM, Communications, HR/Capacity ✅ 2026-05-12
- [x] Flag specific items for client info request (CMap API write capability, SiteMAXXER + AL_Fee_Tool details) ✅ 2026-05-12

**Output:** Full connectivity matrix, integration tier table, data fragmentation map, score with rationale

---

## Day 4 — Thu May 15 | Workflow Deep Dives ✅ COMPLETE 2026-05-12

**Approach pivot:** Rather than re-document the 3 engines (which would duplicate ALAQEP-001a/002a/003a/010a — see Workflows folder pull), we mapped 6 specific high-friction workflows that AL has NOT yet documented. Each follows AL house style and is anchored to verbatim transcript sources.

**Output (delivered):**
- [x] [`Workflows/MOL-W01-Coordination-Meeting-Minutes.md`](Workflows/MOL-W01-Coordination-Meeting-Minutes.md)
- [x] [`Workflows/MOL-W02-Consultant-Coordination-and-RFI.md`](Workflows/MOL-W02-Consultant-Coordination-and-RFI.md)
- [x] [`Workflows/MOL-W03-Weekly-Resourcing-and-Profitability.md`](Workflows/MOL-W03-Weekly-Resourcing-and-Profitability.md)
- [x] [`Workflows/MOL-W04-Cashflow-and-Invoice-Release.md`](Workflows/MOL-W04-Cashflow-and-Invoice-Release.md)
- [x] [`Workflows/MOL-W05-Project-Kickoff-and-Brief-Capture.md`](Workflows/MOL-W05-Project-Kickoff-and-Brief-Capture.md)
- [x] [`Workflows/MOL-W06-Fee-Proposal-Assembly.md`](Workflows/MOL-W06-Fee-Proposal-Assembly.md)
- [x] [`Workflows/README.md`](Workflows/README.md) — index + selection rationale + house-style note

**Carried forward to Day 6:** Acquisition Engine and Delivery Engine flow-level mapping was deferred since ALAQEP-002a + ALAQEP-001a + ALAQEP-003a already document them. Where audit value exists in those engines, it's W6 (fee proposal internal build, sits inside ALAQEP-002a) and W5 (kickoff, sits between ALAQEP-002a and ALAQEP-003a) — both captured above.

---

## Day 5 — Fri May 16 | Friction Point Analysis + Client Info Request ✅ DRAFT COMPLETE 2026-05-12 (send pending Fri)

**Output (delivered):**
- [x] [`AL-Friction-Matrix.md`](AL-Friction-Matrix.md) — 22 friction rows, rates applied, totals, classification, gap resolution map
- [x] Guarantee threshold confirmed cleared by ~5× on top 3 rows (97.5 hrs/wk vs 20 required)
- [x] [`AL-Client-Info-Request.md`](AL-Client-Info-Request.md) — 5-question email draft (1. win rate + senior hrs/bid · 2. "10 crucial things" kickoff list · 3. CMap write API · 4. current Operations Director · 5. QA hours per drawing issue)
- [ ] Send email on morning of Fri May 16 — pending user review

**⚠️ Info request items to confirm:**
- Fee proposal hours per bid (Oliver)
- QA process hours per drawing issue (Alahni / Phena)
- Win rate on bids (Jon / Oliver)
- Wayne's CA workflow (if rescheduling happens before Day 6)
- Resourcing meeting decision cycle time (Jon)

---

## Day 6 — Sat May 17 | Opportunity Matrix + Implementation Order

**Objective:** Synthesize the full analysis into a prioritized action map.

**Tasks:**
- [ ] Populate opportunity matrix from all friction points and context/data gaps
- [ ] Score each opportunity: Impact (time × rate × scale) × Effort (complexity, dependencies, data readiness)
- [ ] Classify: Quick Wins / Big Wins / Foundation First / Nice-to-Have
- [ ] Identify critical dependencies: what must be built before something else can work?
- [ ] Build implementation order — sequenced so each phase builds on the last
- [ ] Apply director-first strategic rationale: Jon + Oliver as primary bottleneck → highest-leverage first entry point
- [ ] Map rollout sequence: Directors → Senior team → Full team
- [ ] Confirm Foundation Assessment scores (§9): Context score / Data score with final rationale

**Output:** Opportunity matrix (impact × effort, classified), implementation order, Foundation Assessment scores final

---

## Day 7 — Sun May 18 | Solution Design — Foundation & Intelligence Layer

**Objective:** Design the first two phases of the AIOS Build Plan in client-specific detail.

**Tasks:**

**Phase 1 — Foundation:**
- [ ] Document Track A: what knowledge assets must be built — prioritized by owner risk + automation dependency
  - Which specific policies, registers, templates, standards are missing or undeployed
  - Who builds them, in what format, where they live
- [ ] Document Track B: which tools to connect and in what order
  - Map Tier 1 connections: Pipedrive, Xero, Google Workspace, DocuSign, Zoom/Granola
  - Map Tier 2 connectors: CMap DRS, Egnyte
  - Map Tier 3 custom: ArchiCAD CLI (Biyi's build → deployment path)
- [ ] Link each connection to what it enables (which intelligence or automation it unlocks)

**Phase 2 — Intelligence Layer:**
- [ ] Design daily log structure: what data sources feed it, what gets captured automatically
- [ ] Design daily brief: what a director brief looks like vs. an architect brief
  - Jon/Oliver brief: CMap revenue status, Pipedrive pipeline, project risk flags, cash flow position
  - Architect brief: project task list, outstanding consultant info, BIM issues flagged
- [ ] Design system memory: what gets stored, how it's retrieved, what cross-project patterns it surfaces

**Output:** Phase 1 + Phase 2 build plan (client-specific, tool-specific, role-specific)

---

## Day 8 — Mon May 19 | Automation Plan + Roadmap + Report Build

**Objective:** Complete the solution design and assemble the full report.

**Tasks:**

**Phase 3 — Automation Strategy:**
- [ ] Group friction points into workflow automation sets (not isolated tasks)
- [ ] For each automation group: what it does, what tools it connects, what review gate applies
  - Acquisition group: proposal assembly + CRM update + win/loss log
  - Delivery group: meeting minutes + RFI draft + compliance check + drawing issue schedule
  - Operations group: board pack + resourcing snapshot + invoice tracker
- [ ] Assign automation classification: Full-auto / Augmented (review gate) / Human-only

**Phase 4 — Long-Term Roadmap:**
- [ ] Map 12–18 month roadmap of what follows initial implementation
- [ ] Sequence: Director AIOS → Senior layer → Full team tools
- [ ] Flag Tier 3 tools that become viable once foundation is stable (ArchiCAD firm-wide)
- [ ] Map to strategic ambitions named in interviews: AL Labs, "All Three" partnership, ISO 9001, founder exit from day-to-day

**ROI Projection:**
- [ ] Build ROI table: hrs recovered × rate × 52 × people = annual value per phase
- [ ] Calculate cumulative ROI across all 4 phases
- [ ] Frame against Tier 2 + Tier 3 investment

**Report Assembly:**
- [ ] Build full report skeleton: all 11 sections in order, data slotted in
- [ ] Build visualizations: Opportunity Matrix chart, Foundation Assessment radar, ROI payback curve, workflow maps (visual), tool connectivity diagram
- [ ] Draft executive summary (1 page): core finding, primary recommendation, guarantee confirmation

**Output:** Complete report draft, all visualizations, ROI table

---

## Day 9 — Tue May 20 | Final Polish + Presentation Delivery

**Objective:** Deliver the report and present the findings.

**Tasks:**
- [ ] Final review pass: accuracy, internal consistency, specificity (every claim anchored to a source or confirmed rate)
- [ ] Polish presentation deck: executive summary first, clear visual flow, 1 key finding per section
- [ ] Prepare live demo: identify which skill to run (`/proposal-draft` or equivalent), test against real AL project data
- [ ] Confirm call time with Oliver + Jon
- [ ] Present — sequence: findings → opportunity matrix → build plan → ROI → live demo → Tier 2 conversation
- [ ] Follow up same day: send report PDF + next steps (Tier 2 proposal timeline)

---

## Flags & Blockers Tracker

| Item | Status | Owner | Needed By |
|---|---|---|---|
| Fee proposal hours/bid | MISSING | Oliver | Day 5 request |
| QA process hours | MISSING | Alahni / Phena | Day 5 request |
| Win rate on bids | MISSING | Jon / Oliver | Day 5 request |
| Wayne CA workflow | MISSING (cancelled) | Ellen (scheduling) | Best effort |
| Danny interview | WILL NOT HAPPEN | — | Proceed without |
| CMap API write capability | UNCONFIRMED | Biyi | Day 3 check |
| AL_Fee_Tool + SiteMAXXER detail | NOT EXTRACTED | Oliver | Low priority |

---

## Key Decisions & Constraints

- **Wayne + Danny interviews will not happen.** CA layer inferred as email-based. Proceed without.
- **Blended rates confirmed** from CMap charge-out sheet: £126.82 overall · £181.25 senior · £95.71 team.
- **Guarantee threshold already met** from coordination overhead + information hunting alone across 15 architects.
- **Oliver's constraint:** Audit must provide useful workflows — not repeat what AL already documented.
- **Strategic entry point:** Directors first. Jon + Oliver are 95% of won work + all dispute resolution. Solving their bandwidth has the highest compounding effect.
