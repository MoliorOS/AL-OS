---
type: opportunity-matrix
archived: 2026-06-02
date: 2026-05-13
title: "AL Audit — Opportunity Matrix"
archive: true
client: Ackroyd-Lowrie
project: Audit
---

# AL Audit —  Opportunity Matrix

> **Narrative spine:** Revenue-protection ROI (scope-creep prevention) is the dominant story. Scope creep hits >50% of projects; worst case is £100k fee → £200k spend (£100k loss). The report's ROI tables pivot on this, not on visible time-cost savings alone.
>
> **Three strategic loci for implementation sequencing:**
> 1. **W6 Scope Capture** — founder-bottleneck (JA/OL) + highest-ROI intervention (prevent £100k losses)
> 2. **W4 Cashflow Visibility** — founder-bottleneck (Jon) + decision-quality multiplier
> 3. **W5 Brief-to-Delivery Gap** — root cause of scope-creep; Oliver's "it all tracks back to your appointment" (L-02 L312) is the report spine

---

## Implementation Sequencing

### Phase 1: Revenue Protection (Scope Capture & Brief Clarity)
**Rationale:** Hidden ROI (prevent £100k+ losses on 50%+ of projects) dominates visible time-cost savings. These three rows form a unified intervention: get scope right at proposal stage → prevent downstream losses. **Target delivery: May 19–20 (report week).**

| Seq | Friction | Hrs/Wk | Annual Cost (Visible) | ROI Narrative | Phase-In | Dependencies |
|---|---|---|---|---|---|---|
| 1 | **F20 — Scope Definition** (W06 §7) | 4.5 | £52,884 | *Prevent scope creep (>50% endemic, worst case £100k loss).* Tool partially built; fragile state requires rebuild or stabilization decision. | Week 1 of Phase 1 delivery | Oliver's scope-checklist format; decision on AL_Fee_Tool rebuild vs wrap |
| 2 | **F16 — Client Briefing Session** (W05 §2) | 2 | £18,850 | *Anchor brief before design starts. Oliver's "play back" model surfaces hidden client constraints early.* Prevents brief-to-delivery gap. | Week 1–2 of Phase 1 | Oliver's structured Q&A template; Project Director checklist |
| 3 | **F17 — Site Data Verification** (W05 §4) | 5 | £32,973 | *"10 crucial things" — prevent repeat mistakes.* Two-layer checklist (ALAQEP-007 admin + Google Sheet site data) confirmed; needs enforcement discipline. | Week 2–3 of Phase 1 | ALAQEP-007 document (exists); Google Sheet tracker version audit; Project Lead enforcement SOP |

**Phase 1 Total: 11.5 hrs/wk, ~£104,707/yr visible; hidden ROI: prevent 50%+ of projects from £50k–£100k losses (conservative mid-case estimate: £250k–£500k annual prevention on 5–10 active projects if scope-creep halved).**

---

### Phase 2: Founder Bottleneck Relief (Decision Visibility & Recon Automation)
**Rationale:** Jon and Oliver spend 4–5 hours weekly on manual recon (CMap tabs, profitability spot-checks, cashflow spreadsheets) that should be automated or dashboarded. Freeing this bandwidth gives them decision quality and time for strategy. These are full-auto or close-to-full-auto opportunities. **Target delivery: May 20–31.**

| Seq | Friction | Hrs/Wk | Annual Cost (Visible) | ROI Narrative | Phase-In | Dependencies |
|---|---|---|---|---|---|---|
| 4 | **F08 — Revenue Cross-Check** (W03 §3) | 3 | £28,275 | *Automate CMap dual-tab correlation (capacity vs revenue).* Currently manual; Jon must reconcile two views. | Week 1 of Phase 2 | CMap API write capability audit (flagged in Gap Resolution Map); decision on integration vs dashboard pull |
| 5 | **F09 — Profitability Spot-Check** (W03 §5) | 1 | £13,000 | *Build dashboard of at-risk projects (programme slip, over-billed vs progress).* Currently Jon must dig through CMap/Tracker. | Week 2 of Phase 2 | CMap data structure audit; definition of "at-risk" ruleset (Oliver); Futurli integration if available |
| 6 | **F11 — Cashflow Refresh** (W04 §1) | 1.5 | £19,500 | *Automate Jon's "mega spreadsheet" — weekly inputs, annual rebuild.* Highest single-person cost (Jon @ £250/hr). | Week 2–3 of Phase 2 | Data source mapping (CMap, invoice archive, Xero); decision on Futurli vs custom build; weekly schedule automation |

**Phase 2 Total: 5.5 hrs/wk, ~£60,775/yr visible. Impact: Jon/Oliver reclaim ~5 hrs/wk for strategic work; decision quality improves through automated freshness.**

---

### Phase 3: Team Efficiency (High-Confidence, High-Volume Time Sinks)
**Rationale:** Top three rows (F03, F01, F04) represent 97.5 hrs/wk and £485k+ annual cost. These are augmented-automation tasks (AI drafts → human approves). High confidence; transformative impact on available architect bandwidth. **Target delivery: May 24–June 7 (first 2 weeks post-delivery).**

| Seq | Friction | Hrs/Wk | Annual Cost (Visible) | ROI Narrative | Phase-In | Dependencies |
|---|---|---|---|---|---|---|
| 7 | **F03 — Post-Meeting Follow-Up** (W01 §5) | 45 | £223,962 | *Automate action-item email chasing (1 hr/day per project for 15 architects).* Alahni: "it's the worst." | Week 1 of Phase 3 | Meeting notes structured format (F01 output); CRM-like task tracker or Slack bot integration |
| 8 | **F01 — Minutes Production** (W01 §3) | 30 | £149,308 | *Auto-transcribe, structure, format meeting minutes.* Currently "45 min to longer than the meeting itself." High confidence: straightforward transcription + LLM structuring. | Week 1 of Phase 3 | Capture pipeline (Granola/Otter/Zoom API); template for minute structure (Jon+Oliver sign-off); filing location audit (W01 OQ1) |
| 9 | **F04 — Information Hunting** (W02 §1) | 22.5 | £111,981 | *Solve email-as-knowledge-store problem (1.5 hrs/day per 15 architects hunting prior decisions/consultant threads).* Related to F02, F06, F22 — solve together. | Week 2–3 of Phase 3 | Email search standardization (Gmail API rules); prior-decision documentation SOP; change control log for scope changes |

**Phase 3 Total: 97.5 hrs/wk, ~£485,251/yr visible. Impact: Free up ~100 hrs/wk of architect time across the practice (5× guarantee threshold). Enables higher-quality design work and reduces rework.**

---

### Phase 4: Knowledge Management & Information Infrastructure
**Rationale:** F02 (tool selection), F06 (information loss), F22 (email-based decisions), F18 (consultant database), and F10 (tracker decay) form an interconnected knowledge-management system. Solving F01-F04 creates momentum; Phase 4 consolidates the underlying infrastructure. **Target delivery: June 7–28.**

| Seq | Friction | Hrs/Wk | Annual Cost (Visible) | ROI Narrative | Phase-In | Dependencies |
|---|---|---|---|---|---|---|
| 10 | **F02 — Unified Meeting Capture** (W01 §2) | 10 | £65,946 | *Standardize tool selection (Granola/Zoom/etc). Currently per-person choice → no consolidated search index.* Phase-4 infrastructure play. | Week 1 of Phase 4 | Decision on tool (recommend Granola for AEC-native meeting capture); Slack/Gmail API for routing; search index build |
| 11 | **F06 — Information Loss When Away** (W01 §2 + W02 shared) | 5 | £24,885 | *Google Sheet tracker + email standardization prevent knowledge decay when PL absent.* Part of unified capture system. | Week 1–2 of Phase 4 | Standardized capture tool (F02); Google Sheet template audit + versioning (W05 OQ2); escalation SOP |
| 12 | **F22 — Email-Based Decisions** (Composite) | counted in F04/F06 | — | *Decisions stored in email threads can't be audited, contradicted regularly.* Solved by F02 + F06 + change-control log. | Week 2–3 of Phase 4 | Change log template (scope changes, brief edits, approval sign-offs); integration with brief/proposal storage |
| 13 | **F18 — Consultant Database** (W05 §5) | 2.5 | £23,562 | *Maintain relationship database (tribal knowledge in PD heads).* Phase-4 SOP: quarterly updates, searchable by discipline + location. | Week 3 of Phase 4 | Contact import from email history; discipline taxonomy; historical project mapping (CMap integration) |
| 14 | **F10 — Tracker Reconciliation** (W03 §5 + ongoing) | 5 | £47,125 | *Project Tracker.xlsx decay — standardize location, auto-pull from CMap, auto-remind for missing fields.* Augmented: AI checks field completion, flags missing data. | Week 2–3 of Phase 4 | Tracker schema audit (W03 OQ2); CMap API read integration; notification rules (missing fields, overdue items) |

**Phase 4 Total: ~22.5 hrs/wk, ~£161k/yr visible. Impact: Single source of truth for decisions, consultant relationships, and project state. Prevents information loss during absences; enables audit trails.**

---

### Phase 5: Secondary Bottlenecks & Governance
**Rationale:** Remaining 8 rows (F05, F07, F12, F13, F14, F15, F19, F21) have lower individual ROI, more dependencies, or are meeting-based (harder to automate). Phase-5 is a "nice to have" list; decision to execute depends on post-delivery feedback. **Target: Q3 2026 (post-delivery window, if desired).**

| Seq | Friction | Hrs/Wk | Annual Cost | ROI Narrative | Phase-In | Notes |
|---|---|---|---|---|---|---|
| 15 | **F07 — Resourcing Meeting "Talking Not Doing"** (W03 §2) | 10 | £94,250 | *Senior time spent discussing resource allocation.* Solve with capacity dashboard + pre-populated recommendation view. | Post-delivery feedback | Depends on F08-F09 dashboards; augmented (AI suggests allocation → humans approve) |
| 16 | **F12 — Weekly Finance Meeting** (W04 §2) | 4 | £37,700 | *4-person, 1-hr weekly reviewing cashflow + debtors.* Automate report generation; convert to async review + exception-based meeting. | Post-delivery feedback | Depends on F11 automation; augmented (AI flags exceptions → meeting reviews only those) |
| 17 | **F13 — Debt Chasing** (W04 §3) | 1.5 | £16,770 | *Jon + Oliver each ~0.5–1 hr/wk personal outreach for overdue payment.* Augmented: AI drafts outreach email → human approves/personalizes. | Post-delivery feedback | Xero integration; payment history automation; personalization template library |
| 18 | **F14 — Invoice Release Meeting** (W04 §4) | 2.5 | £23,562 | *"Knowledge in heads" decides which invoices release (£150k → £130k routinely).* Automate pre-filtering; meeting reviews exception cases only. | Post-delivery feedback | Depends on F11 + scope-creep prevention (F20); decision rubric audit (acceptable unknown per Gap Map) |
| 19 | **F05 — RFI Triage Severity Misclassification** (W02 §3) | 5 | £24,885 | *Consultant input severity-misclassified → unneeded work OR critical flag ignored.* Augmented: AI scores severity (SLA rule); human confirms. | Post-delivery feedback | RFI log structure audit; SLA definition (Oliver + PDs); integration with tracker/change log |
| 20 | **F15 — Board Pack Assembly** (W04 §6) | 0.7 | £4,617 | *Finance Manager manual assembly (Xero → CMap → Futurli → narrative).* Automate data pulls; augmented narrative (AI drafts observations → FM reviews). | Post-delivery feedback | Lowest individual ROI; solve if dashboard infrastructure (F08-F09) already built |
| 21 | **F19 — Hour Estimation** (W06 §5) | 1.5 | £17,628 | *Manual estimation of days/month per role per stage — no lookup against past projects.* Augmented: AI suggests hours based on comparable projects; human confirms. | Post-delivery feedback | Depends on CMap past-project integration (Phase 1 spec decision); part of F20 proposal-building workflow |
| 22 | **F21 — Per-Bid Senior Burn Tracking** (W06 all) | ~15–30 | ~£161k–£323k (Tier 2 avg) | *Senior burn varies by tier; losses not tracked.* Merged into F20 scope work + F08-F09 dashboards. | Phase 1 + Phase 2 | Monitor as outcome of F16 (better scoping) + F20 (scope tool) + F09 (profitability dashboard). Three-tier model confirmed; track effectiveness in Phase 1 build spec. |

**Phase 5 Total: ~40 hrs/wk, ~£295k/yr visible. Status: Defer to post-delivery feedback loop. These are good-to-have optimizations, not core to the revenue-protection or founder-bottleneck narratives.**

---

## Roadmap Timeline

| Phase | Rows | Timeframe | Visible ROI/Wk | Hidden ROI | Narrative |
|---|---|---|---|---|---|
| **1. Revenue Protection** | F20, F16, F17 | May 19–Jun 7 | ~11.5 hrs / £105k/yr | Prevent £250k–£500k annual scope-creep losses (50%+ of projects) | "Get scope right at proposal stage — that's where it's won or lost" |
| **2. Founder Relief** | F08, F09, F11 | May 20–Jun 14 | ~5.5 hrs / £61k/yr | Jon/Oliver reclaim ~5 hrs/wk for strategy | "Decision-making speed + confidence multiplier" |
| **3. Team Efficiency** | F03, F01, F04 | Jun 10–Jul 4 | ~97.5 hrs / £485k/yr | Free 100 hrs/wk architect bandwidth; reduce rework | "Architects doing architecture, not admin" |
| **4. Knowledge Infrastructure** | F02, F06, F22, F18, F10 | Jun 21–Jul 12 | ~22.5 hrs / £161k/yr | Single source of truth; prevent information loss | "One place to find what you need; one place to record what you decide" |
| **5. Secondary (if time)** | F05, F07, F12, F13, F14, F15, F19, F21 | Q3 2026 (post-feedback) | ~40 hrs / £295k/yr | Incremental improvements to meetings & processes | "Nice to have; execute if post-delivery feedback validates" |

---

## Key Implementation Decisions

### 1. **Scope-Creep Narrative Is the Report Spine**
F20 (Scope Definition) is sequenced first because Oliver's data confirms >50% of projects hit scope creep; worst case is £100k fee → £200k spend (£100k loss). The visible time-cost savings (£52,884/yr) pale next to the hidden ROI (preventing even 2–3 major scope-creep incidents annually covers the entire audit fee multiple times over).

**Decision:** In the report, frame this as "Revenue Protection" not "Cost Saving." The headline number is the prevented loss, not the tool hours.

### 2. **F01-F04 (Team Efficiency) Are Unified, Not Sequential**
These three rows (F03, F01, F04) are interconnected:
- F01 (minutes) feeds F03 (action-item follow-up)
- F02 (meeting capture tool) feeds F01 (transcription)
- F04 (information hunting) is solved by standardized capture + searchable index

**Decision:** Sequence as separate delivery milestones (Week 1: F03+F01, Week 2–3: F04) but design the infrastructure holistically. All three depend on unified meeting capture (F02 in Phase 4), so front-load F02 decision in Phase 1.

### 3. **F08-F09-F11 (Founder Relief) Are the Data Foundation**
These three rows require the same foundational data pipes (CMap API reads, Xero export, invoice archive). Building one enables the other two efficiently.

**Decision:** Sequence as F08 → F09 → F11, but design data architecture once. Phase 2 is the "foundation" phase for Jon/Oliver's operational visibility.

### 4. **F20 (Scope Definition) Requires AL_Fee_Tool.html Decision**
Oliver's prototype is "about two days later one of the bits breaks and it never works again" (L-02, live demo). The audit must decide: rebuild from scratch or wrap the existing prototype with guardrails?

**Decision:** Phase 1 build-spec conversation (May 19–20) must include a 30-min technical audit of AL_Fee_Tool.html. Felipe to inspect; Oliver to decide rebuild vs wrap. This gates F20 delivery.

### 5. **Phase 1 (May 19–20) Deliverables Drive Phase 2 & 3 Timelines**
The report delivery window (May 19–20) means Phase 1 is a 1–2 week "planning phase," not a "build phase." By June 10, all three Phase-1 rows should be in the client's backlog with clear build specs.

**Decision:** Phase 1 == Findings Presentation (May 19) + Phase 1 Build Spec (May 20 call). Phase 2–5 begin after client feedback and prioritization sign-off.

---

## Success Metrics

| Phase | Metric | Target | Measure |
|---|---|---|---|
| 1 | Scope-creep incident reduction | 50% → 25% of projects by month 3 of Phase 1 build | Project post-mortems / monthly tracking |
| 2 | Jon/Oliver time recovered | 5 hrs/wk freed from recon work | Time-tracking snapshots (before/after) |
| 3 | Architect bandwidth freed | 100 hrs/wk recovered; rework rate decline | Capacity analysis; project velocity post-build |
| 4 | Decision audit-ability | All major decisions logged + traceable | Random audit: sample 5 recent scope changes, verify log entry exists |
| 5 | Practice-wide adoption | 80%+ team compliance with standardized processes by month 6 | Audit: random project file checks, tool usage logs |

---

## Notes for Oliver

### Conviction Level Per Phase

**Phase 1 (HIGH conviction):** Scope-creep prevention is the dominant ROI narrative. Your quote ("scope defining is the most expensive mistake you've made") anchors the entire case. F20 + F16 directly solve this.

**Phase 2 (HIGH conviction):** Jon's time-cost (£19,500/yr on cashflow alone) is real and measurable. Automating CMap/Xero pulls is straightforward.

**Phase 3 (VERY HIGH conviction):** Alahni's 45 hrs/week on action-item follow-up is unsustainable. This is the highest individual ROI row and directly frees architect bandwidth for billable work.

**Phase 4 (MEDIUM conviction):** Knowledge infrastructure is necessary but less urgent. Phases 1–3 are the headline story; Phase 4 is the supporting infrastructure.

**Phase 5 (LOW conviction for now):** Good-to-have optimizations. Revisit post-Phase 1 delivery feedback.

### Open Loops for Phase 1 Build Spec

1. **AL_Fee_Tool.html breakage pattern** — Felipe to inspect; decision on rebuild vs wrap by May 19.
2. **Scope-checklist format** — What fields does the F20 tool need? (Start from AL_Fee_Tool.html scope-item structure; Oliver + Wayne input.)
3. **Client briefing template** — Your "play back" model (Oliver L-02 L386) — formalize as structured Q&A + checklist.
4. **CMap API write capability** — Biyi/CMap account manager to confirm; gates F08 integration.
5. **Google Sheet tracker version** — You flagged "may not be most recent"; audit for Phase 1 build spec.

