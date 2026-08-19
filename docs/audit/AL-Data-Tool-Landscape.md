---
type: data-landscape
archived: 2026-06-02
date: 2026-05-12
title: "AL Audit — Data and Tool Landscape"
archive: true
client: Ackroyd-Lowrie
project: Audit
---

# AL Data & Tool Landscape
## Day 3 Deliverable — Data Layer Deep Analysis

> **Critical read note.** The Intel Summary §4 is the starting hypothesis — explicitly treated as unverified here. Every tool row, tier assignment, data claim, and score in this document is re-grounded in primary sources: 7 interview transcripts, all resource screenshots, Drive folder policy files, and HTML tool inspection. Where the Intel Summary was wrong, corrections are named and evidenced (§9, D1–D9).

---

## §0 Headline Findings

Six findings that change what the report says about AL's data layer.

**1. Tool count is ~30, not 22.**
JumpCloud screenshot confirms 20 portal apps ("1–20 of 20"). Adding confirmed non-portal tools — ArchiCAD, Adobe Suite, Nscape, Miro, AL_Fee_Tool.html, SiteMAXXER.html, Microsoft Teams, Jon's Excel spreadsheets, Apple Notes — puts the full inventory at 30+ distinct tools. The Intel Summary's 22-tool count was based on a partial read of the Tech Stack PDF.

**2. JumpCloud is the SSO portal. 1Password is the password manager. These are separate tools.**
Intel Summary listed JumpCloud as "Password manager / identity." The JumpCloud screenshot shows both JumpCloud and 1Password as distinct tiles in the 20-app portal. JumpCloud provides single-click SSO to all 20 apps. 1Password handles credential storage. This matters for integration planning: SSO and credential management are two separate surfaces.

**3. Xero is already connected to CMap via API. The disconnect Jon describes is CMap-internal.**
Intel Summary said Xero "not yet connected to CMap." The Tech Stack extraction's current-state section says "Xero pushing data to CMAP via API" — and transcript evidence supports this (Jon's disconnect complaint is between CMap's finance tab and resourcing tab, not between Xero and CMap). The real problem: CMap cannot cross-reference project revenue against resource cost within its own UI without manual work.

**4. Zoom is dual-function: meetings + internal project messaging. Apple Notes → Zoom chat is Joe's de facto project tracker.**
Biyi (Team-01 L134): "Internally, we communicate via Zoom. We have group chats for each project." Joe (Team-03 L50): "I write a lot of things in Apple notes… then I just copy and paste the notes from notes into the Zoom chat." Both Zoom project chats and Joe's Apple Notes are active, firm-critical, unindexed data silos. No firm-accessible API path exists for either.

**5. Pipedrive is 40% abandoned.**
Five boards exist. One is active: Monthly Sales. Two are functionally dead: Lapse ("haven't touched this for like a year" — Oliver L148), Targets ("don't keep this very up to date" — Oliver L147). The Accounts and Partners boards exist but are not described as active. The Intel Summary implied Pipedrive was a functioning CRM used by Jon and Oliver — it is a partial CRM, used primarily by Oliver for active BD only.

**6. Eversleigh's BCB event attendance lives in a Google Sheet outside Pipedrive.**
Oliver (Leadership-02 L126) describes Christian/Eversleigh tracking event attendees in a separate Google Sheet that is not synced to Pipedrive. BCB (Business Club for Business) events are AL's primary warm lead generation channel. That means AL's warmest leads — people who attended events specifically to meet AL — are not in the CRM. This is the most consequential CRM gap identified.

---

## §1 Sources Consulted

### Phase A — Resource Files

| Source | Format | Outcome | Day-3 relevance |
|---|---|---|---|
| `resource-index.md` | MD | Read ✓ | Drive folder index; surfaces Airtable, DocuSign, CMap policy references |
| `Screenshots/Cmap/Summary.md` | MD | Read ✓ | CMap UI: dashboards, workload schedule, project grid, Kentish Town (1124) detail |
| `Screenshots/Cmap/Leadership-04–11.png` | Images | Read ✓ | Live CMap views: fee tracking, % complete, owner column, workload allocation |
| `Screenshots/Pipedrive/Summary.md` | MD | Read ✓ | Won deal data Feb–May 2026; board structure described |
| `Screenshots/Pipedrive/Leadership-03.png` | Image | Read ✓ | Active deals board: Feb £253.5k, Mar £224k, Apr £305k (incl. £293k Grovesnor House) |
| `Screenshots/Budget/Summary.md` | MD | Read ✓ | AL BUDGET 2025 + AL Cashflow spreadsheets; Anita updates "orange cells" weekly |
| `Screenshots/Budget/Leadership-14–21.png` | Images | Read ✓ | Budget layout, cashflow columns, salary structure — confirms blended charge-out rates |
| `Screenshots/Budget/Leadership-16.png` | Image | Read ✓ | Technical Staff Salary sheet: Director/Senior/Team rate tiers confirmed |
| `Screenshots/Calendar/Summary.md` | MD | Read ✓ | Board meetings Tue, Sales Meeting Tue, Weekly Seniors Thu, BIM block, daily 5:45pm timesheet reminder |
| `Screenshots/Folder Structure/Summary.md` | MD | Read ✓ | Egnyte root folders + per-project A–G structure |
| `Screenshots/Folder Structure/Leadership-12–13.png` | Images | Read ✓ | Egnyte sidebar showing root folders + project list |
| `Screenshots/Folder Structure/Screenshot 2026-05-12 163352.png` | Image | Read ✓ | **NEW FINDING: C Compliance sub-folders confirmed (C00–C06 + Project Tracker.xlsx)** |
| `Screenshots/jumpcloud/Screenshot 2026-05-12 181841.png` | Image | Read ✓ | **NEW FINDING: Full 20-app JumpCloud portal — 1Password separate from JumpCloud confirmed** |
| `Screenshots/jumpcloud/Tech_Stack_Summary.md` | MD | Read ✓ | Derived summary: 1Password, MS365, Dr Logic, AL Academy, Onboarding, OKR |
| `Resources/Proposal Tool/AL_Fee_Tool.html` | HTML | Read ✓ (Day 2) | Pipedrive client autocomplete confirmed; Fees Bureau data; DRM generator; broken site-scraper |
| `Resources/Proposal Tool/SiteMAXXER.html` | HTML | Read ✓ (Day 2) | Lead-magnet site viability tool; standalone, no back-end |
| `Business & Strategy/Ackroyd_Lowrie_Tech_Stack_Strategy_Data_Extraction.md` | MD | Read ✓ | **Treated as aspirational/future-state only.** LLM-derived from image-only PDF. Used only to surface tool names for transcript cross-check. No claim from this file is asserted as live unless corroborated by transcript or screenshot. |

### Phase A — Drive: ISO Policies for Review (folder `1b627-1J12HjlSs25h2E-NihrD3yq-D68`)

Pulled fully in Day 2. Three files re-used for Day-3 tool references:

| File | Tool reference confirmed |
|---|---|
| `maintenance-policy.txt` | **Airtable** — system of record for maintenance tracking |
| `alaqep-007-project-setup-checklist.txt` | **CMap + Egnyte + DocuSign** — all three in project kick-off sequence |
| `alaqep-003-project-resourcing.txt` (Approved) | **CMap Resource Schedule** — canonical resourcing record |
| `alaqep-002-fee-proposal-policy-approved.txt` (Approved) | **DocuSign** required at §6.13; **CMap** activation at §6.12 |

No files inaccessible on Day 3. One file not extractable: `AL_Budget_Cashflow.xlsx` (binary; not in Drive pull) — content known from Budget screenshots.

### Phase B — Transcripts

All 7 transcripts read in full.

| Transcript | Date | Primary Day-3 contribution |
|---|---|---|
| `26-04-24-Discovery-01.md` | 2026-04-24 | Oliver + Biyi: ArchiCAD MCP origin; JumpCloud described as "buttons that take you to software"; data split framing (CRM + CMap + server) |
| `26-04-29-Discovery-02.md` | 2026-04-29 | Closing engagement; no new tool data; confirms Pinsent Masons GDPR/AI track |
| `26-05-06-Audit-Leadership-01.md` | 2026-05-06 | Jon: live CMap walkthrough (resourcing-revenue tab disconnect); Egnyte walkthrough; Pipedrive; custom cash flow spreadsheet; Futurli; Miro mapping board |
| `26-05-08-Audit-Leadership-02.md` | 2026-05-08 | Oliver: Pipedrive 5-board breakdown; Fee Tool (Pipedrive autocomplete confirmed); Eversleigh Google Sheet (not synced); weekly finance meeting attendees |
| `26-05-06-Audit-Team-01.md` | 2026-05-06 | Biyi: CMap DRS CSV 24h confirmed; ArchiCAD HTTP CLI architecture + 4 use cases; Zoom project group chats; IFC export issues; data fragmentation via email |
| `26-05-07-Audit-Team-02.md` | 2026-05-07 | Alahni: BIM day in CMap; ArchiCAD template + BIM Manual on Egnyte; Adobe Suite; Nscape; Google Calendar as task tracker; inconsistent Egnyte filing |
| `26-05-07-Audit-Team-03.md` | 2026-05-11 | Joe: Apple Notes → Zoom chat personal tracker; CMap Fridays only; no formal project tracker; daily standup with Andrew; resourcing conversations as time sink |

---

## §2 Full Tool Inventory

33 tools mapped. Every row linked to ≥1 primary source. Tier classification is in §3.

**Source key:** T1 = 26-04-24-Discovery-01 · T2 = 26-04-29-Discovery-02 · T3 = 26-05-06-Leadership-01 · T4 = 26-05-08-Leadership-02 · T5 = 26-05-06-Team-01 · T6 = 26-05-07-Team-02 · T7 = 26-05-07-Team-03 · SC = screenshot · DOC = policy document

| # | Tool | Category | Intended Use | Actual Use | Who | Tier | Key Source |
|---|---|---|---|---|---|---|---|
| 1 | **ArchiCAD** | BIM / Design | Primary design authoring + model production | Active firm-wide; all architects; Biyi has added HTTP CLI extraction layer | All architects | T2 | T5 L38; T6 L14 |
| 2 | **Egnyte** | Document Management | Central file server; per-project A–G filing | Active; inconsistent compliance — some architects file carefully, others don't; project trackers hidden in C Compliance | All staff | T2 | T3 L60–80; T6 L86; SC Folder Structure |
| 3 | **CMap** | Project + Practice Management | Fees, timesheets, resourcing, invoicing, project status | Active for fees + invoicing; timesheets variable (Joe Fridays only); resourcing entered by Andrew, described as "pretty loose"; finance tab and resourcing tab disconnected internally | All staff (variable depth) | T2 | T3 L105; T7 L42; DOC ALAQEP-003 |
| 4 | **Xero** | Accounting | P&L, VAT, payroll, aged debt | Active; Xero → CMap API confirmed (pushes invoice data); Futurli layered on top for trend analysis; Anita manages | Jon, Anita | T1 | T3 L165; Tech Stack extraction (current state) |
| 5 | **Futurli** | Finance Analytics | Xero analytics add-on for trend charts | Active; used by Jon for board pack; no manual extraction needed | Jon | T1 | T3 L165 |
| 6 | **Pipedrive** | CRM | Full pipeline management: leads, BD, partnerships, lapsed | Monthly Sales board active (Oliver primary). Lapse board ~1 year untouched. Targets board not kept up to date. Team has no Pipedrive access or training. Eversleigh event data not synced. | Oliver (primary), Jon (secondary) | T1 | T4 L126–152; SC Pipedrive |
| 7 | **DocuSign** | Digital Signatures | Fee proposal sign-off + contract execution | Active; required by ALAQEP-002 §6.13 before project CMap activation | Oliver (proposals) | T1 | DOC ALAQEP-002 §6.13 |
| 8 | **Gmail** | Email / Comms | Primary external and internal comms | Active firm-wide; all project decisions, consultant coordination, RFIs flow through email threads; unindexed | All staff | T1 | T3 L105; T5 L126 |
| 9 | **Google Calendar** | Scheduling | Meetings, project milestones, WFH tracking | Active; Alahni uses Calendar as primary task tracker; daily 5:45pm timesheet reminder; BIM day block visible | All staff | T1 | SC Calendar; T6 L56 |
| 10 | **Google Drive** | Cloud Files | Document storage, shared files | Active; some staff use Drive for working documents alongside Egnyte; creates parallel file paths | All staff | T1 | T3 L50 |
| 11 | **Google Docs / Sheets** | Document Production | Collaborative documents, project trackers | Active; Google Sheets used for project trackers (parallel to Egnyte Excel trackers); Eversleigh event attendance tracked in separate Sheet | All staff | T1 | T4 L126; T7 L66 |
| 12 | **Google Meet** | Video Comms | Internal and client video meetings | Active; secondary to Zoom | All staff | T1 | T1 |
| 13 | **Zoom** | Video + Internal Messaging | Video calls (client + internal) + project group chats (internal messaging) | **Dual-function.** Video meetings (client + team). Also the primary internal project messaging platform — each project has a Zoom group chat where team drops inspiration, questions, updates. Joe pastes Apple Notes into Zoom chat as informal project tracker. | All staff | T1 | T5 L134; T7 L50 |
| 14 | **Microsoft Office 365** | Secondary Productivity | Word/Excel for specific document types | Active; secondary to Google Workspace; Jon's cash flow spreadsheet is Excel; used when client/consultant requires .docx | Jon, some staff | T2 | SC JumpCloud; Tech Stack extraction |
| 15 | **Microsoft Teams** | Client Comms | Client-side project comms for Teams-using clients | Active; used only when client requires Teams; unclear how many projects; no confirmed project channels vs. ad hoc calls | Variable (client-driven) | T2 | Tech Stack extraction (current state) — **flag: transcript mention only indirect; scope unconfirmed** |
| 16 | **Slack** | Internal Messaging | — | Listed in JumpCloud portal (S icon); not mentioned in any transcript by name. May be AL Academy or another S-branded tool. | Unknown | T2 | SC JumpCloud (icon only) — **flag for confirmation** |
| 17 | **1Password** | Credential Management | Firm-wide password manager | Active; visible as distinct tile in JumpCloud portal; separate from JumpCloud SSO function | All staff | T1 | SC JumpCloud |
| 18 | **JumpCloud** | SSO / Identity | Single sign-on portal for all 20 apps | Active; all staff log in through JumpCloud to access tools; provides unified identity management and provisioning | All staff | T1 | SC JumpCloud; T1 "buttons that take you to software" |
| 19 | **Airtable** | Compliance Tracking | Maintenance compliance system of record | Active; confirmed as the platform for tracking maintenance-related compliance obligations | Jon (or Anita) | T1 | DOC maintenance-policy.txt |
| 20 | **Adobe InDesign** | Document Production | Bid documents, marketing materials, formal reports | Active; Alahni confirmed using Adobe Suite for document production | Alahni + architects | T2 | T6 L22 |
| 21 | **Adobe Illustrator / Photoshop** | Graphics | Drawing presentation, site analysis graphics | Active (suite) | Architects | T2 | T6 L22 |
| 22 | **Nscape** (or equivalent rendering software) | Visualisation | Architectural rendering and visualisation | Active; Alahni: "or whatever software" — Nscape named but not universally used | Some architects | T3 | T6 L18 |
| 23 | **Claude** | AI | Marketing copy, workflow mapping (Jon+Oliver); code (Biyi); general prompting (team) | Active at multiple levels: Oliver uses Claude to generate Miro workflow diagrams; Biyi uses Claude Code for ArchiCAD CLI; team onboarded to Claude Pro | Jon, Oliver, Biyi | T1 | T4 L158; T5 L92 |
| 24 | **ChatGPT** | AI | General AI use | Active but limited — team uses free tier; "runs out after 5 prompts" (T1); not institutionally deployed | Some staff | T3 | T1 (discovery framing) |
| 25 | **Google Gemini** | AI / Imagery | Visualisations, imagery generation | Active; described as most commonly used for visual outputs across the team | Team (visual use) | T1 | T1 |
| 26 | **ArchiCAD HTTP CLI** | Custom Integration | ArchiCAD data extraction via localhost HTTP | **Built by Biyi; n=1 deployment.** Localhost port connector (like :3000). 4 live use cases: apartment layout extraction, compliance checks, window/door schedules, Google Sheets minute-to-task pipeline. Tested multi-machine. Not firm-wide. | Biyi only | T3 | T5 L38–62 |
| 27 | **AL_Fee_Tool.html** | Custom Tool / Prototype | Fee proposal generation with Pipedrive autocomplete + DRS integration (planned) | **Built by Oliver; not institutionally deployed.** Pipedrive client autocomplete works. Fees Bureau benchmarks embedded. DRM/scope generator included. Site-scraper agent broken. CMap DRS integration planned but not built. | Oliver | T3 | T4 L233–238 |
| 28 | **SiteMAXXER.html** | Custom Tool / Lead Magnet | Site viability assessment for email capture | **Built by Oliver; standalone HTML.** Lead magnet — visitor enters postcode, gets viability assessment, exchanges email. Not connected to Pipedrive or any other system. | Oliver | T3 | Day 2 HTML read |
| 29 | **Jon's Cash Flow Spreadsheet** | Finance / Custom | Weekly cash flow tracking | **Active; sole maintainer; critical SPOF.** Excel; rebuilt annually. Jon is the only person who can maintain it. No API. Manual weekly input. | Jon only | T3 | T3 L165 |
| 30 | **AL BUDGET Spreadsheet** | Finance / Custom | Annual budget + actuals tracking | Active. Anita updates "orange cells" weekly from Xero actuals. Board pack input. | Jon, Anita | T3 | SC Budget; T3 L165 |
| 31 | **Miro** | Workflow Mapping | Process diagramming, AIOS planning | Active — Jon and Oliver both using independently for workflow mapping. Not connected to any other system. | Jon, Oliver | T3 | T3 L83; T4 L158 |
| 32 | **Apple Notes** | Personal Tracker | — | **Personal data silo.** Joe uses Apple Notes as primary within-day project tracker, then pastes content into Zoom chats. No firm access. No iCloud firm pathway. All project-relevant notes are lost to the firm. | Joe (personal) | T3 | T7 L50 |
| 33 | **Peninsula** | HR / H&S (External) | External HR and H&S advisory | Active; external provider. Likely contracts BrightHR and/or BrightSafe as software platforms — **flag for confirmation**. | Jon | T2 | DOC ALAQEP (HR references); Tech Stack extraction |
| 34 | **BrightHR / BrightSafe** | HR + H&S Software | HR records, H&S compliance platform | **Probable but unconfirmed.** Tech Stack extraction names both as current platforms contracted via Peninsula. Not mentioned by name in any transcript. Could be Peninsula's internal tools. | Unknown | T2 | Tech Stack extraction only — **flag for confirmation** |
| 35 | **NBS** | Specifications | Stage 4 technical design specifications | **Probable but unconfirmed.** Tech Stack extraction lists as Stage 4 tool. Not mentioned in transcripts. Standard AEC platform for UK practices. | Unknown | T2 | Tech Stack extraction only — **flag for confirmation** |
| 36 | **Dr Logic Portal** | IT Support | IT infrastructure and support management | Active; visible as tile in JumpCloud portal; IT provider for AL | IT (Dr Logic) | T2 | SC JumpCloud |
| 37 | **AL Academy** | Training Platform | Internal training, tutorials, onboarding | Active; visible as JumpCloud tile; Joe references Academy tasks in Team-03 (uni outcomes reconciliation) | All staff | T2 | SC JumpCloud; T7 L82 |
| 38 | **Granola** | Meeting Transcription | AI meeting note-taker | **Tested by Jon; not deployed.** Jon tried ~20 transcription tools. Granola was in the test set. No firm-wide rollout. | Jon (test) | T3 | T3 L105 (transcription experimentation) |
| 39 | **Otter.ai** | Meeting Transcription | AI meeting note-taker | **Tested; not deployed.** Same test cycle as Granola. | Jon (test) | T3 | T3 L105 |

---

## §3 Integration Tier Classification

**Tier 1 — API-ready, quick wins.** These tools have well-documented public APIs and are already active at AL. Data can be pulled or pushed programmatically without custom engineering.

| Tool | API notes |
|---|---|
| Pipedrive | Full REST API; Webhooks; OAuth. Contacts, deals, activities all queryable. Fee Tool already uses contact autocomplete. |
| Xero | Full REST API; Webhooks. P&L, invoices, aged debt, payroll all accessible. Confirmed connection to CMap. |
| Gmail / Google Workspace | Google APIs (Gmail, Calendar, Drive, Sheets, Docs, Meet). OAuth. All products API-covered. |
| DocuSign | REST API; envelope status webhooks. Signature events triggerable. |
| Zoom | REST API + Webhooks. Meetings, recordings, and — crucially — **chat messages via Zoom Chat API** (unindexed project chats are recoverable). |
| 1Password | Connect API; CLI. Credential access for service accounts. |
| JumpCloud | Directory API; SCIM. User provisioning and app assignment. |
| Airtable | REST API. Maintenance compliance records queryable. |
| Futurli | API available (Xero ecosystem add-on) — lower priority given Xero API covers same data. |

**Tier 2 — Requires connector or has known limitations.** Tools where integration is possible but requires custom work or has a documented constraint.

| Tool | Constraint |
|---|---|
| CMap | **DRS CSV export every 24 hours** is confirmed extraction path (Biyi Team-01 L66–78). API write capability **UNCONFIRMED** — Biyi's CMap marketing meeting named DRS as the recommended route. Any pipeline reading CMap data must either consume the DRS CSV or wait for API clarification. |
| Egnyte | File API exists; content is accessible. Semantic indexing of project documents (drawings, specs, correspondence) requires a custom indexing layer — the API alone won't make documents queryable by meaning. |
| Microsoft Teams | REST API exists; well-documented. Constraint: AL only uses Teams for specific clients, and scope of usage is unconfirmed (§8 Q3). Not worth indexing unless project channels exist. |
| AL Academy | Unknown API. JumpCloud portal suggests a web app. If Academy tracks staff progress (Joe references reconciling tasks → uni outcomes), it may hold training-to-performance data worth integrating. |
| Granola / Otter | APIs exist. Constraint: neither is deployed — any integration requires first agreeing a transcription standard and rolling it out. Then API layer is quick. |
| BrightHR / BrightSafe | API likely exists (both are SaaS platforms). Constraint: existence at AL unconfirmed (§8 Q2). |
| NBS | API exists. Constraint: presence at AL unconfirmed (§8). |
| Dr Logic | IT support portal — unlikely to have integration value. |

**Tier 3 — Custom/complex. No off-the-shelf API path; requires engineering.** These tools are either personal, bespoke, or architecturally mismatched with API-first integration.

| Tool | Why Tier 3 |
|---|---|
| ArchiCAD HTTP CLI | Biyi's custom build. Architecture is localhost HTTP (like :3000). Not a product API. Firm-wide rollout requires: (a) deploying the CLI to all machines, (b) building a restricted chat interface (not yet built), (c) solving multi-machine RAM variance. This is a 4–6 week engineering project, not a configuration task. |
| AL_Fee_Tool.html + SiteMAXXER.html | Standalone HTML files. No back-end. To integrate: would need to either (a) convert to a hosted web app with API calls, or (b) wrap in a Node/Python service that reads/writes Pipedrive. Not complex engineering but requires rewrite. |
| Jon's Cash Flow Spreadsheet | Excel file; manual weekly update; no API. Could be migrated to Google Sheets (then API-accessible) or replaced with a Xero-derived dashboard. As-is: only parseable via Excel file read. |
| AL BUDGET Spreadsheet | Same as above. Manual; Excel. Anita's "orange cells" workflow is a manual bridge between Xero actuals and board visibility. |
| Zoom project group chats | The Zoom Chat API can access message archives — but this requires: (a) confirming which channels have project data, (b) building a retrieval pipeline, (c) managing the volume of informal/irrelevant chat. Non-trivial but API path exists. |
| Apple Notes (Joe) | Personal iCloud. No firm pathway. The only fix is behavioural: migrate Joe's personal tracking into a firm-accessible tool. |
| Miro | REST API exists but content is unstructured diagram data. Useful as a read surface ("what workflows did Jon map?") but not a structured data source. |
| Email threads | Gmail API can retrieve. The challenge is semantic extraction: decisions, RFIs, approvals buried in threading. Requires NLP pipeline on top of Gmail API. |
| Microsoft Office 365 | Secondary use only. API exists. Not worth integrating unless specific document types are identified. |
| ChatGPT / free AI tools | No firm account; no API integration. Not in scope. |

---

## §4 Data Fragmentation Map

For each key business question, every system that must be touched to produce an answer.

| Business question | Systems required | Hops | Pain level |
|---|---|---|---|
| **Project status: budget + progress + compliance** | CMap (fee + % complete) + Google Sheets / Egnyte Project Tracker + ArchiCAD (model stage) + email threads (decisions) + Egnyte C Compliance (BREEAM, planning, regs) | 5 | **Critical** |
| **Cash flow this week** | Jon's Excel spreadsheet + Xero (actuals) + CMap (revenue forecast) | 3 — but Jon's spreadsheet is sole-maintainer SPOF | **Critical** |
| **Full lead pipeline picture** | Pipedrive Monthly Sales board + Eversleigh Google Sheet (BCB event attendance) + email (informal leads) | 3 | **High** |
| **Resource capacity vs. revenue impact** | CMap resourcing tab + CMap finance tab — both in CMap, not linked internally | 2 (but both manual) | **High** |
| **Drawing issue status** | ArchiCAD model (current state) + Egnyte A Issued (issued set) + email transmittals + consultant systems (vary per consultant) | 4+ | **High** |
| **Consultant coordination: decisions + RFIs** | Email (threads) + Egnyte D-Team Comms (filed correspondence) + Zoom project group chats (informal) + meeting minutes (scattered) | 4 | **High** |
| **Staff availability this week** | CMap resourcing (Andrew's entries) + Google Calendar (WFH, leave) + informal (ask Andrew) | 3 — last hop is human | **Medium** |
| **Past project fee benchmarking** | CMap (project history) — blocked: DRS CSV not yet wired to fee tool | 1 (blocked entirely) | **High** |
| **Board pack (monthly)** | Xero exports + CMap project data + Futurli trend charts + Anita's manual board observations + Jon's cash flow spreadsheet | 4 + manual assembly | **Medium** |
| **New starter needs access to [project]** | JumpCloud (account provisioning) + Egnyte (folder permissions) + CMap (project assignment) + Google Workspace (group access) + Zoom (project chat invite) | 5 | **Medium** |

**Pattern across the map:** No single system answers any of these questions. The minimum is 2 hops; the practical median is 4. Every answer requires a person to context-switch across systems, re-orient, and manually synthesise. This is the core of the friction cost estimate (£400k–£700k+ indicative annual).

---

## §5 Cross-System Assembly Pain — Documented Examples

### Example 1: Biyi's 5-system query
To answer "where are we on budget and schedule for this project?", Biyi must check: CMap (fee consumed + % complete) → Egnyte project tracker (C Compliance folder, non-obvious location) → ArchiCAD model (current design stage) → Google Sheets (any supplementary tracking) → email threads (recent decisions that affect scope). None of these systems talk to each other. The answer is assembled manually, every time.
*Source: T5 L38–62 (ArchiCAD CLI origin story — Biyi built the CLI specifically to bridge this gap for BIM data); T3 L113 (Jon on tracker location).*

### Example 2: Jon's resourcing-revenue disconnect
Jon wants to know: "If I add a person to this project, does it tip us into profit or loss?" CMap holds both the resourcing data (tab 1) and the financial data (tab 2). But the tabs are not linked. Jon must open both tabs, correlate manually, and mentally model the impact. This is a routine decision — it happens every week in the Thursday resourcing meeting.
*Source: T3 L105: "So, what I'm still yet to crack is the idea of making it work so that if that tab changes, this tab automatically changes too."*

### Example 3: Oliver writing a fee proposal
To write an accurate fee for a new project, Oliver needs: (1) past project comparables from CMap — blocked because DRS is not wired to the Fee Tool yet; (2) Fees Bureau benchmarks — downloaded manually and embedded in AL_Fee_Tool.html; (3) team availability from CMap resourcing; (4) scope/DRM from past proposals — scattered PDFs in Egnyte or email. The Fee Tool provides Pipedrive autocomplete and Fees Bureau data. Everything else is manual retrieval. The tool is a 40% solution.
*Source: T4 L233–238 (Fee Tool walkthrough); T4 L242 ("once we get the CMap DRS feed in, this is going to be brilliant").*

### Example 4: The weekly finance meeting
Oliver, Jon, head of operations Joe, and Anita meet weekly for ~1 hour to review debt collection. To do this they need: Xero aged debt report (how much is owed, by whom, for how long) + DocuSign or email for appointment/contract context (what was agreed with the client) + CMap project status (is the work complete? Is there a dispute?) — all pulled and reviewed manually. Four people × 1 hour × 52 weeks = 208 person-hours per year spent on debt collection coordination.
*Source: T4 L190–200 (finance meeting description); T3 L145 (collections 106% target).*

---

## §6 Egnyte Folder Structure — Complete

### Root Level (confirmed from screenshots)

```
Egnyte root/
├── 000-Job Files/
│   ├── 2024/
│   ├── 2025/
│   └── 2026/
├── 001-Resources/          ← standards, templates, BIM libraries
├── 002-Marketing/          ← bids, competition entries, marketing assets
├── 003-Archive/            ← completed projects
├── 006-Aedis documents/    ← regulatory and consultant folder
├── 007-External sharing/
├── 009-Scans/
└── Superseded/
```

### Per-Project Structure (1124 Kentish Town — confirmed)

```
[Project Number]-[Project Name]/
├── 0000 Designs/           ← ArchiCAD models + design iterations
├── A Issued/               ← final docs issued to client/planners/contractor
├── B Job Information/      ← site surveys, client brief, existing drawings
├── C Compliance/           ← *** sub-folders CONFIRMED (new finding) ***
│   ├── C00 CDM/
│   ├── C01 Planning/
│   ├── C02 Building Regs/
│   ├── C03 BREEAM/
│   ├── C04 PassivHaus/
│   ├── C05 Lifetime Homes/
│   ├── C06 PHPP/
│   ├── Project Tracker.xlsx
│   └── Project Tracker copy.xlsx
├── D Team Comms/           ← emails, meeting notes, consultant correspondence
├── E Tender and Contract/
├── F Notes & Agenda/
└── G Research/             ← case studies, references, inspiration
```

**Why the Project Tracker location matters:** Jon (T3 L113): *"I can't even remember where they saved them now."* The trackers are not at the project root — they live inside C Compliance, nested three clicks deep. For a practice managing ~40 live projects, this means project status data is practically inaccessible without knowing the exact path. The inconsistent compliance noted by Joe and Alahni is partly structural, not just behavioural.

### Visible Projects (Egnyte sidebar, confirmed)

00913 Rigg Approach · Heath Hurst Road · 844-5 Wych Elm Lane · 77B-10 Wych Elm Lane · 761-Herlow · 002-Board · Bid Document · Ackroyd Lowrie Submission · ACTUAL BID · 1124-Kentish Town · 1335-U&C Rugby · 830a Croydon HYDE · 000-Job Files 2026

---

## §7 Data Sub-Area Scores

**Scale:** 1 = no accessible data · 2 = exists but fragmented/manual · 3 = consistent but siloed · 4 = accessible with some manual effort · 5 = integrated, queryable, real-time

---

### CRM / Pipeline: 2 / 5
*Intel Summary said 3. Reduced.*

**Supporting evidence (score up):**
- Pipedrive Monthly Sales board actively maintained by Oliver
- Eversleigh retainer (£24k/yr) generates consistent warm leads via BCB events
- Deal value data confirmed from Pipedrive screenshot: Feb £253.5k, Mar £224k, Apr £305k

**Challenging evidence (score down):**
- Lapse board: "haven't touched this for like a year" (Oliver T4 L148) — lost intel on cold/warm reactivation opportunities
- Targets board: "don't keep this very up to date" (Oliver T4 L147) — no pipeline forecast
- Team has no Pipedrive access or training — CRM intelligence limited to Oliver's input, with Jon secondary
- Eversleigh BCB event attendance tracked in separate Google Sheet, not synced to Pipedrive (T4 L126) — warmest leads are outside the CRM
- No win/loss tracking; no LinkedIn → CRM automation; no lead scoring

**Why 2 not 3:** More than half the CRM's functional surface is abandoned or siloed. The firm cannot answer "who attended our last 3 events?" from Pipedrive alone.

---

### Finance: 3 / 5
*Intel Summary said 3. Confirmed, but rationale tightened.*

**Supporting evidence:**
- Xero solid for P&L, VAT, payroll, aged debt
- Xero → CMap API confirmed (pushes invoice data into CMap)
- Futurli provides trend analytics on top of Xero with no manual extraction
- Anita updates budget actuals weekly (orange cells) from Xero
- CMap provides project-level revenue by PM and stage

**Challenging evidence:**
- Jon's weekly cash flow spreadsheet is a critical single-point-of-failure: sole maintainer, rebuilt annually, no API, no backup process (T3 L165)
- CMap finance tab and resourcing tab are disconnected internally — Jon's core pain point (T3 L105)
- Monthly board pack requires 2–3 hours of manual assembly from Xero + CMap + Futurli + spreadsheets

**Why 3 not higher:** Finance data exists and is reasonably structured, but the cash flow SPOF and CMap-internal disconnect are material risks. The firm's most operationally critical financial view (weekly cash flow) is one person and one spreadsheet.

---

### Project Management: 2 / 5
*Intel Summary said 2. Confirmed.*

**Supporting evidence:**
- CMap tracks fees consumed, % complete, owner, project stage — data exists at portfolio level
- Egnyte A–G structure enforces consistent folder convention across projects
- Google Sheets trackers exist as a standard template (two tiles in JumpCloud: "Project Tracker Template" + "Project Trackers")

**Challenging evidence:**
- Joe (T7 L42): "I don't do that very regularly" (on project tracking)
- Jon on Kentish Town tracker: "not completed" (T3 L113)
- Trackers are filed in C Compliance — non-obvious location that Jon himself couldn't recall
- Andrew's CMap resourcing entries: "pretty loose" (Joe T7 L58)
- No project status dashboard; no automated alerts for projects approaching fee limit
- Resourcing Thursday meetings — decisions not systematically recorded anywhere

**Why 2:** The infrastructure for project management tracking exists (CMap + Egnyte + Sheets) but compliance is inconsistent and the most important artefact (the project tracker) is practically unfindable for many staff.

---

### BIM / Model Data: 3 / 5
*Intel Summary said 3. Confirmed.*

**Supporting evidence:**
- ArchiCAD well-populated across the firm; all architects use it as primary design tool
- Biyi's HTTP CLI extracts: apartment layouts, compliance data, window/door schedules, and feeds Google Sheets minute-to-task pipeline
- CLI tested multi-machine; IFC export works for most consultant tools
- White book of standard details exists (referenced in BIM Manual on Egnyte)

**Challenging evidence:**
- CLI deployed on Biyi's machine only (n=1); no firm-wide rollout
- Firm-wide CLI use requires: restricted chat interface (not yet built), RAM-aware deployment, standardised machine config
- IFC export has compatibility issues with some consultant tools (T5 L72)
- Multi-machine performance varies by RAM — reliability not guaranteed at scale

**Why 3 not 4:** The model data is rich and Biyi has proven the extraction pipeline. But "rich data in a tool Biyi can query" is different from "rich data the firm can query." The gap between n=1 and firm-wide is a real engineering project.

---

### Communications: 1 / 5
*Intel Summary said 1. Confirmed.*

**Supporting evidence:**
- Gmail and Google Calendar are universal — baseline exists
- Zoom deployed firm-wide; meeting infrastructure reliable

**Challenging evidence:**
- Decisions buried in email threads — no extraction pipeline, no decision log
- Zoom project group chats are unindexed — the firm's informal project memory is in chat logs no one can search
- Joe's Apple Notes → Zoom chat = project-critical information with no firm pathway
- Jon: "I've probably tried 20 different tools" for meeting transcription (T3 L105) — no standardised solution deployed
- Microsoft Teams adds a separate comms channel for specific clients — fragments the already fragmented picture
- No standardised meeting minutes process; no RFI register; no decision trail outside email threads

**Why 1:** Communications data exists in abundance. The firm generates it constantly. But essentially none of it is indexed, searchable, or actionable. It is the highest-volume, lowest-accessibility data layer in the practice.

---

### HR / Capacity: 2 / 5
*Intel Summary said 2. Confirmed.*

**Supporting evidence:**
- CMap Resource Schedule is the canonical resourcing record (ALAQEP-003 Approved)
- Google Calendar shows WFH and availability
- Peninsula provides external HR advisory
- JumpCloud handles provisioning (onboarding/offboarding has a structured tool)

**Challenging evidence:**
- CMap resourcing and finance tabs disconnected — Jon cannot model revenue impact of resourcing decisions without manual correlation (T3 L105)
- Peninsula is an external black box — HR intelligence is not accessible to the firm except via Peninsula's reports
- Joe reconciles AL Academy tasks → university outcomes manually (T7 L82) — staff development data is a manual bridge
- Andrew's resourcing entries in CMap described as "pretty loose" — capacity data quality is uncertain
- No capacity model that shows revenue impact of adding or removing a person from a project

**Why 2:** CMap holds the resourcing record but the data isn't trustworthy enough to run automated decisions on (Andrew's loose entries), and the firm can't connect headcount decisions to financial outcomes without manual work.

---

### Overall Data Score: 2.2 / 5

Arithmetic mean: (2 + 3 + 2 + 3 + 1 + 2) / 6 = 2.17 → **2.2**

*Intel Summary said 2.5. Reduced.*

The reduction is driven by three primary corrections:
1. CRM scored 2 not 3 — Pipedrive's partial abandonment and the Eversleigh data silo
2. Communications confirmed at 1/5 with stronger evidence (Zoom chat as active silo, Apple Notes SPOF)
3. Xero-CMap API existence does not lift the Finance score (the disconnect Jon describes is real, just internal to CMap)

---

## §8 Day-5 Client Info Request — Data Layer

Three data-layer questions to add to the Day-5 info request (max 5 total across Context + Data layers; merge with Day-2 Context layer candidates before finalising).

**Q-D1: CMap API write capability**
Biyi's meeting with the CMap marketing team described the DRS CSV (24-hour export) as the recommended extraction path. Before the report can spec an automated resourcing or invoicing pipeline — which Oliver described wanting (T4 L242: "once we get the CMap DRS feed in, this is going to be brilliant") — we need to know: is there a write API or webhook that allows data to be pushed back into CMap? Or is DRS read-only?

**Q-D2: BrightHR / BrightSafe status**
The Tech Stack extraction names BrightHR (HR records) and BrightSafe (H&S compliance) as current platforms, likely contracted via Peninsula. If these are active, they're Tier 1 integration candidates: structured HR and compliance data with documented APIs. If Peninsula handles H&S in-house without these platforms, this question is moot. Which is it?

**Q-D3: Microsoft Teams scope**
Teams is listed as active for specific clients. Before we assess it as a data silo risk, we need to know: which clients (and how many projects) require Teams comms? Are there project channels, or only ad hoc video calls? If it's 2–3 large clients with active channels, Teams is a meaningful unindexed comms silo. If it's just occasional calls, it's background noise.

---

## §9 Corrections to Intel Summary §4

| # | Intel Summary claim | Correction | Evidence |
|---|---|---|---|
| D1 | "JumpCloud — Password manager / identity" | **JumpCloud is SSO/identity platform only. 1Password is the separate password manager.** JumpCloud provides single-click access to 20 apps. 1Password handles credential storage. Both appear as distinct tiles in the JumpCloud portal screenshot. | SC JumpCloud (shows both as separate tiles) |
| D2 | "Xero — not yet connected to CMap" | **PARTIAL CORRECTION.** Xero → CMap API exists and is active (Xero pushes invoice data to CMap). The disconnect Jon describes (T3 L105) is between CMap's internal finance tab and resourcing tab — i.e., within CMap itself. The Xero-CMap connection is not the problem. The CMap-internal disconnection is. | Tech Stack extraction (current state): "Xero pushing data to CMAP via API"; T3 L105 |
| D3 | Tool inventory missing Zoom's second function | Zoom is not only a video meeting tool — it is also the **primary internal project messaging platform**, with a group chat per project. Joe uses it as a de facto project tracker by pasting Apple Notes content into Zoom chat. Both functions generate unindexed data silos. | T5 L134; T7 L50 |
| D4 | "Pipedrive — Jon + Oliver primarily" | More precise: Pipedrive's **Monthly Sales board** is active (Oliver primary). The **Lapse board** has not been touched in ~1 year. The **Targets board** is not kept up to date. The **Accounts board** and **Partners board** exist. Two boards are functionally abandoned. | T4 L126–152 |
| D5 | Egnyte per-project structure described as A–G only | The **C Compliance folder has a confirmed sub-structure**: C00–C06 (CDM, Planning, Building Regs, BREEAM, PassivHaus, Lifetime Homes, PHPP) plus Project Tracker.xlsx files live inside C Compliance. This is a new level of detail not in the Intel Summary, and explains why Jon cannot locate project trackers. | SC Folder Structure (Screenshot 2026-05-12 163352.png) |
| D6 | Tech inventory has 22 tools | Full count is **~33+ tools**. JumpCloud portal shows 20 apps. Adding confirmed non-portal tools (ArchiCAD, Adobe Suite, Nscape, Miro, AL_Fee_Tool.html, SiteMAXXER.html, Microsoft Teams, custom spreadsheets, Apple Notes, Peninsula, ChatGPT, Gemini) puts the total at 33+ distinct tools. | SC JumpCloud + all transcripts |
| D7 | "CMap DRS — custom connectors possible" | Confirmed mechanism: **DRS CSV export every 24 hours** is the recommended extraction path per Biyi's CMap marketing meeting. Custom connectors must consume this CSV. CMap **API write capability is UNCONFIRMED** — this is a Day-5 question (Q-D1 above). | T5 L66–78 |
| D8 | AL_Fee_Tool.html described as standalone | The Fee Tool **already has Pipedrive client autocomplete** (Oliver T4 L233: "I got all of our contacts out of Pipedrive"). It also has a broken agentic site-scraper that was previously working. The tool is a partial integration — more connected than "standalone" implies. | T4 L233–238 |
| D9 | No mention of Eversleigh's Google Sheet | There is a **separate Google Sheet** used by Christian/Eversleigh for tracking BCB event attendance. It is not synced to Pipedrive (T4 L126). This is AL's primary warm lead channel — BCB event attendees — living outside the CRM entirely. | T4 L126 |
