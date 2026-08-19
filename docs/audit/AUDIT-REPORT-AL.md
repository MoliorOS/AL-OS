---
type: audit-report
archived: 2026-06-02
date: 2026-05-20
title: "AIOS Strategy Audit — Ackroyd Lowrie"
archive: true
client: Ackroyd-Lowrie
project: Audit
---
     # AIOS Strategy Audit — Ackroyd Lowrie

> **Client:** Ackroyd Lowrie — London architecture practice
> **Service:** AIOS Strategy Audit — founding-client rate £1,500
> **Delivery:** 2026-05-20

---

## Section 1: Executive Decision Brief

### 1.1 The Bottom Line

Ackroyd Lowrie does not have an AI problem. It has a structural one, and AI is the instrument to fix it. Three conditions are quietly costing the practice an estimated £700,000 to £900,000 a year: the directors are the single point of failure across the entire revenue cycle, scope creep is endemic and untracked, and the firm's highest-volume knowledge lives in individual email inboxes. None of these is a tooling gap — each is the absence of a system. This audit recommends building that system: an AI Operating System (AIOS), delivered as a Foundation plus three workflow Modules, one decision at a time. The first build pays for itself within six weeks; the full investment and payback are set out in §1.4.

### 1.2 The Three Structural Patterns

Three structural patterns generate every symptom in this report. Section 3 proves them from the evidence; the Build Plan in Section 4 is sequenced to dismantle them in order.

- **The Brief-to-Delivery Gap.** The journey from "client says yes" to "project starts well" is not a reproducible system. Scope is drafted under pressure from Oliver's memory; the brief is never played back; the site-data checklist and Stage QA gate exist but go unused. Scope creep follows on more than 50% of projects — worst case, a £100,000 fee becoming a £200,000 spend.
- **The Founder Bottleneck.** Jon and Oliver are the container for 95% of won work and all dispute resolution. Cashflow logic, scope and DRM judgement, and the institutional memory of the full project lifecycle live in two heads. When one of them is unavailable, the work that depends on them stops.
- **Email-as-Knowledge-Store.** Meeting decisions, action items, consultant threads, and client instructions are stored in individual inboxes, Apple Notes, and Zoom chat — not indexed, not searchable, not retrievable when the person who received them is away. Roughly 97.5 hours per week are spent on the downstream consequences.

### 1.3 Recommended Build Sequence

The audit recommends the AIOS Build — a required Foundation plus three workflow Modules, sequenced by the firm's own ROI logic:

- **Foundation** — the shared brain: the firm's documented knowledge ingested, the plug-and-play tools connected, the memory and intelligence layer live. Built once, makes modules possible. 
- **Module 1 — Foundation + Fee Proposal** (Brief-to-Delivery Gap, upstream). The fee proposal and appointment: scope, DRM, fee calculation, benchmarking against the firm's own past projects.
- **Module 2 — Operations + Project Tracker** (Founder Bottleneck). The project record and the operations layer: kickoff and brief capture, cashflow, portfolio health, the weekly decision cycle.
- **Module 3 — Team Layer + Project Memory** (Email-as-Knowledge-Store). The communication layer, and the sensing layer that keeps every project record true: meeting capture, action distribution, decision retrieval, lessons library.

Foundation + three Modules is a complete AIOS, operated through Claude Cowork, delivered in roughly four months. The firm can also add a Custom Interface, a firm-wide dashboard built from Oliver’s own prototype, as an optional custom software development layer on top. Everything built is owned outright: local files, no SaaS lock-in, no vendor dependency.

### 1.4 Investment and Payback

|                                                               |                                                                    |
| ------------------------------------------------------------- | ------------------------------------------------------------------ |
| **Module 1 — Foundation + Fee Proposal (the decision today)** | **£11,000**                                                       |
| Core roadmap (Foundation + 3 Modules)                         | £24,000                                                           |
| Custom Interface add-on (optional, bespoke)                   | £24,000                                                           |
| Retainer (from Module 1 delivery)                             | £800/month                                                        |
| Conservative Year-1 value (direct hours only)                 | £700,000–£900,000                                                 |
| Year-1 multiple — core roadmap, direct hours only             | 29–37×                                                            |
| Including scope-creep prevention                              | £950,000–£1,400,000                                               |
| Payback period                                                | Module 1 pays back the full £24,000 core roadmap in under 6 weeks |

The audit guarantee, identify at least 20 hours/week of recoverable time or refund the fee, is exceeded by roughly 5× on the three highest-confidence friction rows alone. The question this report answers is not whether there is enough recoverable time. It is in what order to recover it.

### 1.5 Decision Required

This audit asks for one decision:

1. **Approve Module 1** — the Foundation plus the fee-proposal workflow, £11,000.
2. **Confirm the sequence** — Module 2 (Operations + Project Tracker) and Module 3 (Team Layer + Project Memory) to follow in order, with the retainer beginning at Module 1 delivery.
3. **Decide on the Custom Interface** — whether to commission the optional add-on alongside the core build.
4. **Schedule kickoff.**

The reasoning behind that sequence is the rest of this report.

---

## Section 2: Where Ackroyd Lowrie Is Trying To Go

Ackroyd Lowrie is a London architecture practice of approximately 25 people, co-founded by Jon and Oliver, running roughly 40 live projects across regeneration, residential, and commercial sectors. This audit covered six interviews across leadership and team, and three parallel diagnostics (Context, Data, and Workflow) applied against the firm's actual processes, tools, and documents.

Before the evidence, it is worth being clear about where the firm already stands and where it is trying to get to. Ackroyd Lowrie is not a firm being persuaded to adopt AI. It is a firm already building with it, and the audit's job is to turn scattered, individual effort into one coherent system.

### 2.1 The Current AI Reality

The firm has begun experimenting with AI, but those efforts remain fragmented rather than systemic.
-  Jon and Oliver are already mapping firm architecture, workflows, tools & outcomes
- Oliver is actively using Claude for marketing and content workflows,  and has built prototypes for a fee-proposal tool and project management system.
- Jon has wired up a set of Claude connectors and mapped the firm's outputs on a Miro board. And started testing Granola for note taking. 
- Biyi has a working ArchiCAD CLI running four live use cases on his own machine.
These are real yet isolated proofs of concept with no shared system beneath them, no firm context they can draw on, and no way for anyone else to use them. The firm wants to run on AI. What it lacks is the system that makes that possible.

### 2.2 The Target State

Biyi described the ideal end state precisely: 

*"you walk into the office, you log in, everyone has this sort of dashboard, but everyone's dashboard is different depending on what they need... the actual brain of it lives separately."* 

a single shared system beneath role-specific dashboards, where leadership sees firm health and pipeline, designers see project progress and tasks, and no one sees more than they need.

Oliver named the same idea from the operations side: the appointment populating a project board *"so everybody in the team can just see what they need to do."*

 Oliver has begun building the prototype. WorkflowMAXXER mocks up the full target: a studio dashboard, a per-project tracker carrying deliverables directly from the fee proposal, a briefing agent, and background agents reading project mail and notes.

What the prototype lacks is the engine beneath it. A system every role queries through its own view, holding the firm's knowledge so it stops being siloed by person and by tool.

Every decision logged to one place. Every project feeding the system rather than living in the memory of whoever last worked on it. The firm gets sharper with each project it runs, not just the people who happened to be on it.

The prototype illustrates the destination; this audit defines the system architecture, infrastructure, and implementation path required to build the engine that makes that ideal operational.

---

## Section 3: Evidence and Sequencing Logic

Three diagnostics were run against the firm’s actual processes, tools, and documents, one for each foundational layer of the AIOS. Together, they diagnose the firm’s current state and converge on a single build order.
### 3.1 The Knowledge Risk Matrix

The Knowledge Risk Matrix sorts every operating asset at Ackroyd Lowrie on two axes: how well it is documented, and how much damage its loss would do. The result is stark. Half of the firm's operating logic is well documented and ready to use. The other half of institutional knowledge lives in heads.

```
                                  HIGH IMPACT
                                       |
   +-----------------------------------+-----------------------------------+
   |   DANGER ZONE                     |   AI-READY                        |
   |   (captured per Module)           |   (ingest immediately)            |
   |                                   |                                   |
   |   • Project lifecycle knowledge   |   • ALAQEP-001 / -002 / -003      |
   |     (Jon + Oliver, partial        |     (board-approved 2026-04-14)   |
   |     Andrew / Wayne)               |   • Business Plan 2026            |
   |   • Jon's weekly cashflow         |   • Marketing Plan 2026 + Lead-   |
   |     spreadsheet                   |     to-Win Funnel                 |
   |   • Wayne's technical standards   |   • ISO 19650 drawing-numbering   |
   |     / white book                  |     convention (deployed in       |
   |   • Oliver's scope + DRM logic    |     ArchiCAD template)            |
   |     (trapped in AL_Fee_Tool.html) |   • Trowers & Hamlins Standard    |
   |   • Consultant relationship       |     Terms (CMap + DocuSign)       |
   |     history                       |   • BIM Manual + ArchiCAD +       |
   |   • Biyi's ArchiCAD CLI           |     Adobe templates               |
   |     (n=1 deployment)              |   • ALAQEP-007 Project Set-Up     |
   |   • GDPR policy (does not exist)  |     Checklist                     |
   |                                   |   • Steve Smith briefing SOP      |
   |                                   |   • Client Journey workflow (BP   |
   |                                   |     p.30) + Oliver's Miro live    |
   |                                   |     version                       |
LOW+-----------------------------------+-----------------------------------+ HIGH
DOC|   LOW STAKES                      |   FORMALIZE LATER                 | DOC
   |   (defer)                         |                                   |
   |                                   |   • ~14 draft ALAQEPs (HG-era     |
   |   • Superseded ALAQEP versions    |     sign-off, awaiting Jo         |
   |     (-005 V2, -003a V1, etc.)     |     Greenoak review + June town   |
   |   • Older PDF process flows in    |     hall rollout)                 |
   |     /SS folders                   |   • JD set 001–009 (titles +      |
   |   • Apprenticeship liaison        |     content now aligned)          |
   |     materials (New City College)  |   • AL Academy 6-module           |
   |                                   |     curriculum (built for         |
   |                                   |     college-entry, not senior     |
   |                                   |     hires)                        |
   |                                   |   • Progression Matrix +          |
   |                                   |     Culture Guide                 |
   +-----------------------------------+-----------------------------------+
                                       |
                                  LOW IMPACT
```


**AI-Ready** holds twelve assets already documented and structured: ISO HR, QA, project and finance policies and procedures, the Business Plan, the Marketing Plan, the ISO 19650 convention, the Trowers & Hamlins terms, the briefing SOP, and the kickoff checklists. The Foundation ingests them on day one. It does not start from zero; it starts from an operational corpus.

**The Danger Zone** holds the opposite, concentrations of single-person, undocumented knowledge: project-lifecycle knowledge, Jon's cashflow logic, Wayne's technical standards, Oliver's scope and DRM judgement. High in impact, and carried almost entirely by one person each.

These concentrations share a common root cause: no system for capturing institutional knowledge and keeping it current. The ALAQEP rollout demonstrates clear organisational appetite, but today it functions as a document repository, not a living operational layer, no authoring standard, no review cadence, no ownership metadata. Documentation is episodic: it happens when someone has capacity, not when knowledge needs capturing.

 Half the firm's operating logic is documented and ready to use; the other half is not so much missing as uncaptured, there is no system that turns knowledge into a documented, current asset as the work happens. Capture is not a phase that precedes the work. It is the work.

The full asset inventory is in Appendix A.

### 2.3 What the System Is

The AI Operating System has six parts. The first five are the engine. The sixth is how the firm operates it.

**The Repository: the firm's knowledge, owned outright.**  
Plain text files: identity, standards, SOPs, templates, Outcomes, ICP, market, and a map of every tool. This is what the AI reads before it acts. Files the firm owns outright. Update a policy and the whole system reflects it.

**Connections: data stays where it is.**  
The Repository maps what each tool contains; it does not copy data. When a skill runs, it fetches what it needs, uses it, and closes the connection. If an architect cannot see the finance folder, Claude cannot either. The AIOS operates within existing JumpCloud permissions.

**Memory and Intelligence: a log the firm can query.**  
Every action is logged: decisions made, scope agreed, briefs produced. The intelligence layer reads that log back: when Oliver starts a bid it surfaces comparable past projects; when Jon reviews portfolio health it flags patterns the firm would otherwise miss. The memory grows with every project.

**Skills: the work the team runs.**  
Skills are the operational workflows the team triggers daily: /scope-draft, /cashflow-brief, /meeting-minutes. Each workflow pulls context from the Repository, accesses live system data through integrations, references past decisions through memory, and returns outputs in the firm’s own format. Together, they turn repeatable work into structured, embedded processes aligned with how Ackroyd Lowrie already operates.

**Agents: the work that runs in the background.**  
An agent monitors a project inbox, reads a new meeting transcript, or tracks a billing change in CMap, and writes what it finds back into the memory. The agents are what keep the firm's record current without anyone maintaining it by hand.

**Interface: how the firm operates the system.**  
The AIOS is operated through Claude: Directors and team members run skills, query the firm’s memory, and review what the agents have logged through. Claude functions as the operational layer for interacting with the system without requiring a new core platform.

Ackroyd Lowrie wants more than that operational layer: the firm-wide, role-based dashboard, with leadership, project leads, and the design team each logging into their own view. That tool, the AL-Tracker, can be developed as an optional add-on layer on top of the AIOS.

### 2.4 Building The System

The target state only becomes possible once the underlying system exists, so the recommendation has two parts.

**The core is the infrastructure.** The Foundation and three Modules build the engine: the shared brain, the connected data layer, the captured institutional knowledge, the skills and agents. It is operated through Claude Cowork and delivers the entire return set out in this report. This is the recommendation and the decision in front of the firm.

**The custom dashboard interface is an optional add-on.** Ackroyd Lowrie has already gone further than most firms: Oliver has built a prototype of a firm-wide dashboard and project tracker. The audit treats that prototype as the basis for an optional custom interface layer that surfaces the AIOS through a role-scoped dashboard experience. It is developed separately and depends on the infrastructure beneath it.

What the infrastructure consists of, and the order to build it in, is what the evidence below determines.

### 3.2 The Connectivity Matrix

Ackroyd Lowrie runs on more than twenty tools, and almost none of them talk to each other. To answer one cross-functional question, someone opens three, four, or five systems and assembles the answer by hand.

| Business question                                                             | Systems touched                                                                                                                                                      | Hops                   |     |
| ----------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------- | --- |
| "Is this project profitable right now?"                                       | CMap (fee + % complete) → Google Sheets / Egnyte Project Tracker → ArchiCAD (model stage) → email threads (decisions) → Egnyte C Compliance (BREEAM, planning, regs) | **5**                  |     |
| "Can I add a person to this project without tipping us into loss?"            | CMap resourcing tab → CMap finance tab (same tool, two tabs, not linked)                                                                                             | 2 (both manual)        |     |
| "What is our cash position this week, and can we send this month's invoices?" | Jon's Excel cashflow spreadsheet → Xero (actuals) → CMap (revenue forecast) → invoice-release meeting (knowledge in heads)                                           | **4**                  |     |
| "What's our full warm-lead pipeline?"                                         | Pipedrive Monthly Sales board → Eversleigh's Google Sheet (BCB event attendance, not synced) → email (informal leads)                                                | 3                      |     |
| "What did the consultants decide on this RFI?"                                | Email threads → Egnyte D-Team Comms → Zoom project group chats → meeting minutes (scattered)                                                                         | **4**                  |     |
| "What do comparable past projects suggest this fee should be?"                | (Fees Bureau % benchmark + manual rate/programme inputs) → Oliver's memory of comparable past costs → CMap project history                                           | 3 (last hop is memory) |     |
| "Who is available next week, and at what revenue impact?"                     | CMap resourcing (Andrew's entries) → Google Calendar (WFH, leave) → ask Andrew                                                                                       | 3 (last hop is human)  |     |

The median is four hops. Anything above three means the answer is rebuilt from scratch every time it is asked, and the person rebuilding it is, almost always, a director: Jon is the middleware for cashflow, Oliver for the funnel, Andrew for resourcing. The directors cannot step back from operations because the operations run through them.

Three moments from the interviews show the cost at three scales:

- **The team's five-system check.** Answering "where are we on budget and schedule?" means opening CMap, the Egnyte tracker, the ArchiCAD model, a Google Sheet, and recent email, five systems, none of them connected.
- **Jon's Tuesday assembly.** Every week before the sales meeting, Jon reconciles Pipedrive, CMap, and an Excel model by hand to produce a single number: the firm's cash position.
- **The weekly finance hour.** Four people meet for an hour every week to cross-reference Xero, DocuSign, and CMap — 208 person-hours a year to produce a view a dashboard would render in seconds.

```
                                HIGH STRATEGIC VALUE
                                       |
   +-----------------------------------+-----------------------------------+
   |   DEEP EXTRACTION                 |   PLUG-AND-PLAY                   |
   |   (high value, custom build)      |   (high value, connect now)       |
   |                                   |                                   |
   |   • CMap  — REST API; DRS CSV     |   • Xero  (official MCP)          |
   |     confirmed read; write TBC     |   • Google Workspace  (official   |
   |   • Pipedrive  — no official MCP; |     MCP: Gmail, Calendar, Drive)  |
   |     community MCP or REST API     |   • Microsoft 365  (official MCP: |
   |   • ArchiCAD  — no official MCP;  |     Excel, Teams — keep existing  |
   |     productise Biyi's HTTP CLI    |     files; migrate financial data |
   |                        firm-wide  |     to Xero when ready)           |
   |                                   |   • Egnyte  (official MCP;        |
   |                                   |     Co-Pilot add-on required)     |
   |   • 1Password  — official CLI;    |   • Zoom  (official MCP)          |
   |     community MCP wrapper         |   • DocuSign  (official MCP beta) |
   |   • BrightHR  — REST API;         |   • Airtable  (official MCP)      |
   |     active at AL unconfirmed      |   • JumpCloud  (official MCP)     |
   |                                   |   • Granola  (official MCP)       |
HIGH+-----------------------------------+-----------------------------------+ LOW
EFFORT|   DATA SWAMPS                   |   LOW LIFT, LOW VALUE             | EFFORT
   |   (migrate or replace)            |                                   |
   |                                   |   • Miro  (REST API; design +     |
   |                                   |     workshop tool; low data value)|
   |                                   |   • Adobe Suite  (per-architect;  |
   |                                   |     production + rendering)       |
   |                                   |   • Nscape  (rendering)           |
   |                                   |                                   |
   +-----------------------------------+-----------------------------------+
                                       |
                                LOW STRATEGIC VALUE
```

Eight of the firm’s highest-value tools already ship with official MCP servers. The core data spine can therefore be connected in days.

The remaining three core tools (CMap, Pipedrive, and ArchiCAD) form the operational and commercial backbone of the practice and require deeper integration work. 

CMap and Pipedrive both expose REST APIs, making them custom but tractable integrations rather than research problems. 

ArchiCAD is the most engineering-intensive component. The connection path already exists through Biyi’s HTTP CLI. . The work is productizing it: moving it from prototype to a firm-wide service. Because every project at AL ultimately resolves to geometry in ArchiCAD, the investment is structurally justified.

There is no tool here that cannot be reached, and no integration that is a research problem rather than a known piece of work. Connection is not the obstacle in this engagement. It is the head start.

The full tool inventory is in Appendix B.

### 3.3 The Workflow Maps

Five workflows were mapped end-to-end against the firm's processes, tools, and interviews. Each surfaced as friction in at least one interview, crosses multiple tools and people, and carries measurable hours. All five are below: W01 defines the appointment, W02 delivers against it, W03 enforces it financially, W04 carries the team-layer information flow that delivery depends on, and W05 carries the consultant information loop that feeds it.

#### W01 — Fee Proposal and Appointment Assembly

Every paid project at Ackroyd Lowrie begins with a fee proposal, and the most expensive step in that proposal has no system beneath it.

> **[Embed: W01 visual workflow graphic — full-page]**

*The ten-step internal build behind every bid, run in three tiers: lead context → site lookup → parameters → programme → fee calc → benchmark → scope + DRM → sign-off → proposal → handoff.*

**Where it breaks.**

1. **Step 7 — Scope and DRM — is the highest-leverage step in the practice, and it runs on memory.** Sixty-plus scope items per stage live in Oliver's head. Scope creep follows on more than half of all projects, in the worst case turning a £100,000 fee into a £200,000 spend.
2. **The benchmark check is half-built.** Bids are cross-checked against Fees Bureau market rates but never against AL's own past-project actuals in CMap. The firm's most relevant data goes unused.
3. **Sign-off lands too late to shape anything.** Wayne's two days of technical input arrive at Step 5, fee calculation, not Step 7, where his judgement would catch the costliest mistakes. The senior review checks a finished document instead of shaping one.
4. **Losing bids teach the firm nothing.** Losses are dragged forward in Pipedrive rather than logged with a reason, so the reported win rate is overstated and the next bid starts blind.

At two to four Tier-2 bids a month, the firm burns 15 to 30 senior hours a week here before a single project earns a pound. W01 is the upstream half of the Brief-to-Delivery Gap.

#### W02 — Project Kickoff and Brief Capture

The signed appointment becomes a running project here, and the artefacts that should carry it across the seam already exist but remain unused.

> **[Embed: W02 visual workflow graphic — full-page]**

*From "appointment signed" to "ready for Stage 1", across three parallel layers: ALAQEP-007 admin, the Checklists.xlsx RIBA 0–7 design master, and the Google Sheet site-data tracker.*

**Where it breaks.**

1. **The artefacts exist; the discipline does not.** Checklists, ALAQEP-007, and the site-data sheet are all in place, but in Oliver's words they "live in a dark, dead place that nobody checks." The fix is making them load-bearing.
2. **The QA gate is ornamental.** The `2ND CHECK / Qualified person` column sits at the foot of every stage block and is blank across every observed copy. Making one column non-skippable is the most cost-effective intervention in the workflow.
3. **The brief is never played back.** Oliver named the fix precisely — structured questions, captured in a table, played back to the client, locked as the anchor brief. Yet it has no template, no owner, no trigger. The same playback is needed again at Stage 3, so the cost of never building it is paid twice.
4. **The W01-to-W02 seam is invisible.** Fee-proposal scope and the kickoff brief must reconcile, but no artefact forces the comparison. The drift between them is the upstream source of the scope creep that surfaces months later at the invoice gate.

W02 is the downstream half of the Brief-to-Delivery Gap. Every artefact the appointment needs already exists; none of it is load-bearing, and the drift between what was sold and what gets built starts here, unbudgeted, surfacing months later at the invoice gate.

#### W03 — Weekly Operations and Cashflow Cycle

This is the cycle that turns won work into collected cash, and it stops the moment one person is unavailable.

> **[Embed: W03 visual workflow graphic — full-page]**

*An eleven-step weekly cycle closed at month-end with a board pack: CMap inputs → Jon's cashflow refresh → Thursday resourcing → CMap cross-check → profitability spot-check → tracker reconciliation → finance meeting → debt chase → invoice release → forecast reconciliation → board pack.*

**Where it breaks.**

1. **The load-bearing step is one person deep.** Jon's cashflow spreadsheet is the only forward cash view in the practice: sole author, sole maintainer, sole reader, rebuilt from scratch every year. If Jon is out for a month, the cycle stalls and the board pack has nothing to feed it.
2. **CMap describes the same projects twice and never reconciles itself.** Workload sits on one tab, money on another, and the link between them is re-derived by hand every Thursday.
3. **The invoice-release decision has no written rubric.** Each month roughly 15% of issuable invoice value is held on reasoning that exists only in the room, and none of the three live hold reasons is ever recorded against the invoice.
4. **Tracker decay makes the at-risk check unreliable.** Trackers are saved inconsistently with fields left blank, so reported progress is wrong by a structural margin , and the projects that most need surfacing are the ones whose trackers are worst maintained.

W03 is the Founder Bottleneck made operational — the firm's only forward cash view, its profitability checks, and its invoice judgement all routed through one or two people, and stalled the moment either is unavailable.

#### W04 — Meeting Capture and Action Distribution

This is the team-layer information flow that delivery depends on, and the single largest pool of recoverable time in the practice.

> **[Embed: W04 visual workflow graphic — full-page]**

*A five-step loop run after every coordination meeting: capture → parallel note-taking → manual minutes → distribution by email, Egnyte, and Zoom chat → action-item follow-up.*

**Where it breaks.**

1. **The capture step is small; the two loops around it are not.** Tool variance is cheap. The hours vanish in minutes production, roughly 30 a week, "sometimes longer than the meeting itself" and action-item chasing, roughly 45 a week.
2. **Nothing in the loop produces a queryable record.** Minutes end as Word and PDF files in inconsistent Egnyte folders. There is no decision log, no action register, no index. Every historical decision has to be rediscovered manually.
3. **Contradictions are absorbed, not caught.** Whether a meeting contradicts an earlier decision depends entirely on a Project Lead remembering both.
4. **Recording consent has no owner.** Jon flagged the legal exposure directly; the decision is made per meeting and the consent record is stored nowhere. The gap widens with every transcription tool the firm adopts.

W04 is Email-as-Knowledge-Store in its highest-volume form — 97.5 hours a week across 15 architects, spent producing minutes and chasing actions that leave behind no record anyone else can search.

#### W05 — Consultant Coordination and RFI

Every project depends on information that lives outside the practice, and the loop that brings it in has no system holding it.

> **[Embed: W05 visual workflow graphic — full-page]**

*A six-phase loop run per information request: request triggered → outbound RFI → inbound response and triage → integration into the model → distribution to the wider team → closeout and recurrence.*

**Where it breaks.**

1. **Every request starts by hunting for the last one.** Before raising an RFI, the Project Lead searches email and Egnyte by hand for the previous one. No register, no numbering convention: one to two hours a week per architect spent relocating threads the firm already owns.
2. **Incoming consultant input has no severity convention.** Nothing marks whether a consultant response is a directive, a flag, or a warning. A warning gets implemented; a directive gets ignored. The same message lands differently depending on who opens it.
3. **The decision log loses to the inbox.** Decisions are meant to be logged in the Google Sheet tracker; in practice everything stays in email. When someone covers a project during absence, the correspondence does not transfer. The information is lost in the handover.
4. **Model exchange generates rework.** IFC exports from ArchiCAD do not always render correctly on the consultant's side, forcing a re-export after engineering review before the request can proceed.
  
**The cost.** W05 is Email-as-Knowledge-Store at the consultant boundary — 22.5 hours a week of information hunting across 15 architects (F25), with no register, no severity convention, and no decision log that survives one person's absence.

### 3.4 The Opportunity Matrix

The first two matrices show where the firm is exposed and how its tools connect. The Opportunity Matrix puts a cost on that diagnosis — every friction point priced against Ackroyd Lowrie's own charge-out rates, rounded to the nearest £5.

| Segment             | Rate      |
| ------------------- | --------- |
| Leadership / Senior | £180 / hr |
| Standard / Team     | £95 / hr  |
| Practice blended    | £125 / hr |

Twenty-eight friction points surfaced across the five workflows. Each was costed in hours and pounds, then plotted on two axes: annual cost and effort to remove. The matrix below sorts all twenty-eight into four quadrants.

```
                                  HIGH IMPACT
                                       |
   +-----------------------------------+-----------------------------------+
   |   BIG WINS                        |   QUICK WINS                      |
   |   (high impact, higher effort)    |   (high impact, low effort)       |
   |                                   |                                   |
   |   • F04 Scope Definition          |   • F24 Post-Meeting Follow-Up    |
   |   • F25 Information Hunting       |   • F23 Minutes Production        |
   |   • F22 Unified Meeting Capture   |   • F13 Cashflow Refresh          |
   |   • F10 Site-Data Verification    |   • F16 Profitability Spot-Check  |
   |   • F15 Revenue Cross-Check       |   • F08 Client Briefing Session   |
   |   • F07 Per-Bid Senior Burn       |   • F17 Tracker Reconciliation    |
   |                                   |   • F09 QA Gate (2ND CHECK)       |
HIGH+-----------------------------------+-----------------------------------+ LOW
EFFORT|   LONG SHOTS                    |   MINOR GAINS                     | EFFORT
   |   (defer or redesign)             |   (defer)                         |
   |                                   |                                   |
   |   • F14 Resourcing-meeting        |   • F21 Board Pack assembly       |
   |     "talking not doing"           |   • F19 Debt-chasing outreach     |
   |   • F20 Invoice-release rubric    |   • F02 Hour Estimation           |
   |   • F27 RFI severity triage       |   • F11 Consultant Database       |
   |   • F05 DRM dead PDF              |   • F28 Info-loss-when-away       |
   |   • F12 Timesheet looseness       |   • F01 Planning scrape rebuild   |
   |   • F03 Past-project benchmark    |   • F06 CMap manual entry         |
   |                                   |   • F18 Weekly finance meeting    |
   |                                   |   • F26 IFC export rework         |
   +-----------------------------------+-----------------------------------+
                                       |
                                  LOW IMPACT
```

 **Quick Wins** deliver early proof: high impact, low effort, visible within weeks.
  **Big Wins** compound on the Foundation and deliver the largest recovery: high impact, higher effort. The lower quadrants are deferred 
  **Minor Gains** too small to sequence early,
  **Long Shots** too costly relative to their return. 
  
  Quick and Big Wins are costed below:

| #       | Friction point                                                                          | Workflow    | Who it affects          | Hrs/wk       | Annual cost        |
| ------- | --------------------------------------------------------------------------------------- | ----------- | ----------------------- | ------------ | ------------------ |
| F24     | Chasing meeting action items through follow-up emails                                   | W04 §5      | 15 architects (PL tier) | 45           | £222,300           |
| F23     | Writing up meeting minutes by hand                                                      | W04 §3      | 15 architects           | 30           | £148,200           |
| F25     | Searching for past decisions and consultant replies buried in email and Egnyte          | W05 §1      | 15 architects           | 22.5         | £111,150           |
| F22     | Each person picks their own meeting-capture tool, so no shared searchable record exists | W04 §1      | 20 staff                | 10           | £65,000            |
| F04     | Drafting project scope and exclusions by hand for every bid                             | W01 §7      | 3 senior                | 4.5          | £47,970 *(direct)* |
| F17     | Project trackers saved in inconsistent places with progress fields left blank           | W03 §6      | 5 PDs                   | 5            | £46,800            |
| F15     | Cross-checking the CMap revenue and resourcing tabs by hand each week                   | W03 §4      | 2 (Jon + Oliver)        | 3            | £33,540            |
| F10     | Re-verifying site data because the existing checklists and tracker go unused            | W02 §4      | 5 PLs                   | 5            | £32,500            |
| F11     | Rebuilding the consultant invitation list each project with no shared database          | W02 §5      | 5 PDs                   | 2.5          | £23,400            |
| F13     | Jon maintaining the cashflow spreadsheet as its only author                             | W03 §2      | 1 (Jon)                 | 1.5          | £19,500            |
| F08     | Client briefing not consistently run or played back to the client                       | W02 §2      | 5 PDs                   | 2            | £18,720            |
| F09     | Stage QA gate left unsigned; the `2ND CHECK` row is blank on observed checklists        | W02 §3      | 5 PLs + QP              | 2.5          | £16,250            |
| F16     | Jon checking projects one by one to find the ones at risk                               | W03 §5      | 1 (Jon)                 | 1            | £13,000            |
| **F07** | **Senior time assembling every Tier 2 bid (2 to 4 bids a month)**                       | **W01 all** | **3 senior**            | **15 to 30** | **£160k to £320k** |
|         |                                                                                         |             |                         |              |                    |
|         | **Upper-bound total (direct effort, all 28 rows)**                                      |             |                         | **~163**     | **~£1.12M**        |
|         | **Conservative deduplicated estimate** *(F28 composite removed; F07 mid-band)*          |             |                         | **~120**     | **£700k to £900k** |

The conservative figure carries forward into Section 5: roughly 120 recoverable hours a week, worth £700,000 to £900,000 a year. The audit guarantee asks for 20 hours. The top three rows alone clear 97.5. 

> **The largest number is not in the table.** Scope creep is not a recoverable-hours line, it is lost fee. Oliver's own data confirms it hits more than half of all projects, in the worst case turning a £100,000 fee into a £200,000 spend. Preventing two or three of those a year through sharper scoping and brief capture is worth £250,000 to £500,000 a year. It dwarfs every hour in the table above.

---

### 3.5 The Three Structural Patterns
Every friction point in this report traces to one structural condition. Fix the symptoms without fixing the patterns and the symptoms grow back. The Build Plan in Section 4 is sequenced to dismantle them in order.

**The Brief-to-Delivery Gap** runs through W01 and W02. 

The journey from "client says yes" to "project starts well" is not a reproducible system, scope drafted from memory, the brief never played back, checklists and the QA gate unused. Scope creep follows on >50% of projects. 
It is the costliest pattern: substantial recoverable friction across the bid and the kickoff, plus £250,000 to £500,000 a year in preventable scope creep. 
The Build Plan answers it with **Module 1 — Foundation + Fee Proposal** and **Module 2 — Operations + Project Tracker**, the upstream bid and the downstream project record.

**The Founder Bottleneck** runs through W01 and W03. 
Jon and Oliver are the container for 95% of operational decisions: won-work intelligence, cashflow logic, scope and DRM expertise, finance and legal sign-off. The firm's operational floor rests on two people.
Oliver named _"the harmful thing that we do to the business."_ Costed conservatively: £275,000 to £440,000 a year. 
The Build Plan answers it with **Module 2 — Operations + Project Tracker**.

**Email-as-Knowledge-Store** runs through W04 and W05. 
Decisions, RFIs, approvals, consultant correspondence, and action items live in Gmail threads and personal notes, indexed only by recipient memory.
is the highest-volume pattern — roughly £430,000 a year, generated by 15 people running a loop that produces no record anyone else can search.
The Build Plan answers it with **Module 3 — Team Layer + Project Memory**.

### 3.6 The Sequencing Logic

The three matrices are one firm seen through three lenses: where the operating logic lives, which tools hold the data it depends on, and what each gap costs. Read together, they dictate a build order.

- **Foundation first.** Every Module draws on the same shared brain, so the brain is built once before anything else. Twelve assets sit ready in the AI-Ready quadrant, eight tools connect through official MCP servers. The Foundation is the lowest-risk step in the plan and the precondition for all three Modules.
- **Module 1, Foundation + Fee Proposal, first.** The Brief-to-Delivery Gap is the upstream cause of nearly every downstream cost. Fixing the bid and scope step first protects fee before it is lost, and the scope logic it captures is context the later Modules also draw on.
- **Module 2, Operations + Project Tracker, second.** Its cross-tool skills only work once the Foundation has connected Xero, CMap, Google Workspace, Egnyte, and Excel. The Founder Bottleneck is what keeps the directors from stepping back at all.
- **Module 3, Team Layer + Project Memory, third.** The broadest rollout and highest return , 15 architects across W04 and W05  placed last by adoption logic, not by cost. A team that has watched the fee proposal and the cashflow layer run on the directors' own work will trust the system when it reaches them.

---

## Section 4: The AIOS Build Plan

*Figure 4.1 — The AIOS Build Roadmap. The Foundation is built once; three Modules follow, each a vertical slice through Knowledge, Data and Workflow, sequenced by the firm's own ROI logic. Every Module traces back to a structural pattern (§3.5) and a costed friction set (§3.4).*

This section converts our patterns and sequencing logic into one sequenced plan. It moves along two axes at once: 
**what gets built** — the Foundation, then one Module at a time 
**who operates it** — a deliberate path from the two directors outward to the full practice. 

### 4.1 System Architecture

*Figure 4.2 — How the AIOS works. The Vault holds the firm's own knowledge as plain files; data stays in its source tools and is fetched live; the Memory grows with every decision the system helps make.*

**Step 1 — Build the Foundation.** The Foundation is the firm’s core operational layer: a shared system of context, knowledge, and connected data that every workflow depends on. It is established once, centrally, and extended over time. Everything else builds on top of it. It has three parts:

- **1.1 — Ingest the ready knowledge.** The firm's already-documented assets (the AI-Ready quadrant of the Knowledge Risk Matrix) are imported into a structured folder system: identity, standards, templates, policies, registers, templates. This is fast: the audit already named exactly what is ready. The Foundation does not start from zero and does not try to document everything.
- **1.2 — Connect the data.** The Plug-and-Play tools (from the Connectivity Matrix) are wired in via their official MCP servers in a matter of days. The Deep-Extraction tools that need custom connectors are deferred and implemented only alongside the specific Modules that require them.
- **1.3 — Stand up the base intelligence layer and memory.** The memory system is initialized: persistent firm memory plus daily logs. This is the company-wide record the north star depends on: the substrate every Module reads and writes.

**Step 2 — Build the first Module.** With the Foundation live, the highest-priority workflow is built as a complete vertical slice through every layer. 

One Module, five steps:
(1) **map the granular tasks** — re-walk the workflow with the people who run it; 
(2) **capture the tribal knowledge** — extract the Danger Zone knowledge this workflow depends on, into structured, retrievable form; 
(3) **connect the Deep-Extraction tools** this Module needs; 
(4) **write the skills and agents** that run the workflow — skills the team triggers, agents that watch and update the record, each tested on real project data; 
(5) **train the team** that runs it, on real work.

**Step 3 — Repeat, in priority order** Each remaining workflow becomes one Module, built the same way, reusing the Foundation at no further cost. The start order is fixed based on priority but the builds are not strictly serial

### 4.2 Required Foundation

The Foundation is the firm-wide operating layer the rest of the roadmap depends on. It centralizes identity, knowledge, and system connectivity into a reusable substrate that subsequent Modules extend rather than rebuild. It is the foundational infrastructure that makes future automation possible.

**What gets ingested (from the AI-Ready quadrant of the Knowledge Risk Matrix):**

The audit identified twelve assets ready for immediate ingestion — the firm's documented operating spine, no further work required to capture:

- ALAQEP-001 (Design Review and QA Policy) · ALAQEP-002 (Fee Proposal and Appointment) · ALAQEP-003 (Project Resourcing Policy) — board-approved April 2026
- Business Plan 2026 + Marketing Plan 2026 (sector targets, ICP, Lead-to-Win funnel, BCB events cadence)
- ISO 19650 drawing-numbering convention (deployed in ArchiCAD template, Business Plan p.47)
- Trowers & Hamlins Standard Terms (live in CMap, auto-issued via DocuSign)
- BIM Manual + ArchiCAD template + Adobe template
- ALAQEP-007 Project Set-Up Checklist + Checklists.xlsx (RIBA 0–7 design checks)
- Steve Smith briefing SOP (travels inside every fee proposal)
- Client Journey workflow (Business Plan p.30 + Oliver's live Miro version)


**What gets connected (from the Plug-and-Play quadrant):**

Eight of Ackroyd Lowrie's highest-value tools have official MCP servers available today. The data spine can be stood up before any custom engineering begins:

- Xero (official MCP) — real-time cash position, P&L, aged debt
- Google Workspace (official MCP) — Gmail, Calendar, Drive
- Egnyte (official MCP, Co-Pilot add-on required) — all project files, D-Team Comms, Compliance folder
- Zoom (official MCP) — project group chats, meeting recordings
- DocuSign (official MCP beta) — appointment status and signed terms
- Airtable (official MCP) — maintenance compliance records
- JumpCloud (official MCP) — SSO access management for agents
- Granola (official MCP) — AI meeting notes, once the firm adopts a transcription standard
- Microsoft 365 (Graph MCP) — Jon's cashflow Excel, AL BUDGET.xlsx, Teams


**What gets built:**

- **The repository structure and `CLAUDE.md`**— the firm's AI operating instructions, holding identity, rules, and session protocols. On top of that sit two pieces that turn a folder of files into a system the firm can run on:

- **The base memory system.** A persistent firm record plus a daily log. Every action the AIOS takes is written down: decisions made, scope agreed, briefs produced, RFIs answered. The memory system makes it a single company-wide log the firm can query. It starts close to empty and grows with every project the firm's institutional memory, accumulating instead of walking out the door.

- **The base intelligence layer.** The reading half of that memory. Where the log records what happened, the intelligence layer surfaces what it means: comparable past projects when Oliver starts a bid, recurring patterns when Jon reviews portfolio health, friction the firm would otherwise miss. 

Together these are the substrate every Module reads and writes. They are stood up once, before any Module, so that the first workflow built has somewhere to record its decisions and somewhere to read precedent from.

### 4.3 Module 1 — Foundation + Fee Proposal

> **Workflow:** W01 Fee Proposal and Appointment Assembly
> **Pattern addressed:** Brief-to-Delivery Gap (upstream half)
> **Friction rows:** F04 · F07 · F03
> **Founding-client investment:** Foundation + Module 1 — **£11,000**

**What gets built.**

Module 1 carries the Foundation — the shared brain, the plug-and-play data connections, the memory and intelligence substrate — and on top of it the firm's first workflow: the fee proposal and appointment.

Oliver has already proven this workflow's logic through the AL Fee Tool prototype, three years of iteration distilled into a working tool. What the prototype cannot do is read historical project data from CMap, run reliably across the wider team, or connect into a shared system. Module 1 is the production version: the same logic rebuilt as Foundation-connected skills, integrated with the live data layer.

*Capture (Danger Zone items from §3.1):*
- **Oliver's scope and DRM logic:** the 60+ scope items by stage, the tier logic, the HRB/D&B/retrofit decision rules, and the Fees Bureau benchmarking workflow. The prototype already encodes this knowledge; Module 1 extracts it into the Vault where it becomes documented, retrievable, and no longer dependent on Oliver.

*Connect (Deep-Extraction tools this workflow reads):*
- **CMap:** fee history per project type and comparable-project actuals for Oliver's benchmark step. No official MCP — a custom REST API connector is built: authentication, the confirmed DRS CSV read path, and a write-capability spike.
- **Pipedrive:** the live bid pipeline, and win/loss history with loss reasons captured for the first time. No official MCP — a community MCP or a custom REST API connector.

*Build (example skills for this workflow):*
- `/scope-draft` reads the client brief and past comparable projects from CMap; produces a scoped deliverables-and-responsibilities table in AL format. The draft Oliver currently builds from memory in 4.5 hrs/wk across all bids.
- `/fee-calc` runs the stage-by-stage scope, per-role day allocation, and fee calculation the prototype already performs, now against live charge-out rates.
- `/drm` generates the Design Responsibility Matrix from the agreed scope, replacing the dead PDF.
- `/benchmark` cross-checks the draft fee against AL's own past-project actuals in CMap, not just Fees Bureau market rates.

The Brief-to-Delivery Gap is the upstream cause of nearly every downstream cost, and Oliver already knows the solution. The Foundation makes his prototype's logic production-ready: the scoping process becomes delegable, and every downstream scope dispute gets a documented anchor.

The ROI case for Module 1 has two parts. The direct hours recovered from F04, F07 and F03 are worth **~£210,000–370,000/year**, most of it the senior time burned assembling every bid. The hidden part is scope-creep prevention: a sharper, anchored scope prevents two or three worst-case incidents a year, worth **£250,000–£500,000 annually**, the largest single financial exposure in the practice.

**Demo at delivery:** `/scope-draft` run live in Claude Cowork against an active AL bid — Oliver's scope logic, extracted and running in the firm's own voice and format. The moment the AIOS becomes something the firm can feel.

### 4.4 Module 2 — Operations + Project Tracker

> **Workflow:** W02 Project Kickoff and Brief Capture · W03 Weekly Operations and Cashflow Cycle
> **Pattern addressed:** Founder Bottleneck · Brief-to-Delivery Gap (downstream half)
> **Friction rows:** F08 · F09 · F10 · F11 · F13 · F15 · F16 · F17
> **Founding-client investment:** **£7,000**

**What gets built.**

Module 2 builds the project as a tracked object and the operations layer that runs the practice around it. A won appointment is turned into a seeded project record — the deliverables, stages, and compliance items the fee proposal already defined, carried across the W01-to-W02 seam instead of drifting. On top of that record sit the firm's cashflow visibility, portfolio health, and weekly decision rhythm, no longer routed manually through Jon.

*Capture (Danger Zone items from §3.1):*
- **Client briefing framework:** Oliver named the fix precisely ("structured questions → table → played back → captured as anchor brief"). Written once as an SOP, it becomes the Briefer that runs at every kickoff and again at Stage 3.
- **Consultant relationship history:** project leads, performance notes, specialist tier, last engagement date. Built once into a maintained register. The blank column in the scope checklist gets a data source.
- **Jon's cashflow logic:** the annual rebuild, the £150k→£7k June dip the firm navigates on instinct, the invoice-hold categories and their decision rules. Documented, reproducible, not dependent on one person.
- **Invoice-release rubric:** the three hold-reason categories (work not delivered / client dispute / director-personal) that currently exist only "in the room."

*Connect (tools this workflow reads):*
- **CMap:** the resourcing and finance tabs, read and cross-checked automatically. The two-tab manual reconciliation Jon and Oliver do every Thursday disappears. Read through the custom connector built in Module 1.
- **Xero:** actuals through the official MCP — the one live API connection the firm already has.
- **Microsoft 365 / Excel:** Jon's cashflow spreadsheet read via MCP. No forced migration; the file continues to exist; the AIOS reads from it.

*Build (example skills for this workflow):*
- `/brief-playback` — the Briefer. Structures the client briefing session, generates a playback table, locks the anchor brief, flags open items against the ALAQEP-002 checklist. The artefact Oliver described and said doesn't exist.
- `/site-data-check` — reads the Google Sheet tracker against the Checklists.xlsx site-data items; surfaces missing fields before kickoff. The "lives in a dark, dead place" intervention.
- `/stage-qa-gate` — reads the Checklists `2ND CHECK / Qualified person` column; flags unsigned rows before stage submission. Makes the ornamental gate non-skippable.
- `/cashflow-brief` — reads Xero actuals + CMap forecast + Excel model; produces the weekly cash position Jon assembles by hand. Sole-maintainer risk neutralized.
- `/portfolio-health` — reads the project tracker + CMap workload; surfaces at-risk projects before Jon has to dig. The reactive Tuesday hunt becomes a proactive Monday alert.
- `/resource-check` — reads CMap resourcing + Google Calendar; answers "can we add a person without tipping into loss?" without convening a meeting.
- `/invoice-ready` — applies the rubric: reads Xero aged debt + DocuSign status + CMap project state; returns the month's issuable invoices with hold flags and reasons.

*Agents (running in the background):*
- **Status Updater** — tracks CMap billing and hours and writes them onto the project record continuously, so the billing side of every project is live rather than reconciled by hand.

The friction rows Module 2 recovers are worth **~£200,000/year**, and they sit inside the Founder Bottleneck pattern that costs the practice **£275,000–£440,000/year**. Module 2 cannot be built first: its cross-tool skills only work once the Foundation connections are live and the CMap connector from Module 1 is tested.

**What it enables.**

A won appointment becomes a tracked project with its deliverables visible to the team. Jon can be away for a month and the cashflow view doesn't stop. The Thursday resourcing meeting uses information the system assembled. The firm's operational floor stops resting on two people. One note on honesty: the project record's *billing* side is live the day Module 2 ships; its *progress* side is still entered by hand until Module 3 makes it automatic. Module 2 makes the picture visible; Module 3 makes it true.

### 4.5 Module 3 — Team Layer + Project Memory

> **Workflow:** W04 Meeting Capture and Action Distribution · W05 Consultant Coordination and RFI
> **Pattern addressed:** Email-as-Knowledge-Store
> **Friction rows:** F22 · F23 · F24 · F25
> **Founding-client investment:** **£6,000**

**What gets built.**

Module 3 builds the team's communication layer and, with it, the project memory. The firm's meeting and consultant-coordination friction — minutes production (30 hrs/wk), action-item chase (45 hrs/wk), information hunting (22.5 hrs/wk) — is automated at the source across 15 architects. As it runs, it does something larger: it reads the firm's project correspondence and notes and turns them into a live record of where each project actually stands.

This is the sensing layer. Modules 1 and 2 produce a structured project record; until Module 3, that record's progress side is entered by hand and decays (friction row F17). Module 3 derives progress from ground-floor reality — the decisions, RFIs, and meeting outcomes the team generates anyway — so the tracker, and the dashboard built on it, become true.

*Capture (Danger Zone items from §3.1):*
- **Recording consent SOP:** the legal exposure Jon flagged (*"I would like it to be very explicit"*). Written once, applied to every transcription tool the firm adopts.
- **Meeting classification rules:** which meetings are coordination records, design decisions, or client instructions. The categories that determine where minutes file.
- **RFI register convention:** a numbering scheme and a severity convention (directive / flag / warning) for consultant correspondence, so every request is raised against a number instead of a hunt for the last one.

*Connect (tools this workflow reads):*
- **Google Workspace (Gmail + Drive)** — project email threads, correspondence, consultant RFIs. Connected from the Foundation; read here for decision retrieval.
- **Zoom** — project group chats and recordings. Requires compliance archiving enabled at account level; confirm at kickoff.
- **Granola** — the recommended firm transcription standard; the MCP provides structured transcript data for every logged meeting.
- **CMap resourcing** — read through the Module 1 connector and surfaced down to each person, so an architect sees what they are booked on.

*Build (example skills for this workflow):*
- `/meeting-minutes` — reads the Granola transcript or Zoom recording, produces minutes in AL format, files to the correct Egnyte sub-folder, logs the decisions to the project record.
- `/action-brief` — extracts action items, assigns them against named owners, distributes via Gmail. The 45 hrs/wk of "did you get my email" follow-up.
- `/rfi-log` — raises a consultant RFI against the next register number, applies the severity tag, logs it to the project record.
- `/decision-search` — indexes all minutes, emails, RFIs, and Zoom chat across every active project; answers "what did we decide on this RFI?" from natural language.
- `/capture-standard` — routes the Project Lead to the right capture tool, applies the consent SOP, drops the output into the right pipeline.

*Agents (running in the background):*
- **Email Scanner** — watches project inboxes, flags decisions and instructions, writes them to the project memory.
- **Calendar Watcher** — tracks project meetings and keeps the record of what was scheduled and what followed.
- **Minutes Reader** — picks up new transcripts as they appear and runs them through `/meeting-minutes` without anyone asking.
- **Lesson Spotter** — flags reusable lessons from project correspondence and routes them to the Lessons Library, where they feed back into the Module 1 fee templates.

The Email-as-Knowledge-Store pattern costs **~£430,000/year** and affects 15 architects, the highest-volume rows in the entire friction set. Module 3 is built last by adoption logic: a team that has watched `/scope-draft` produce Oliver's scoping logic and `/cashflow-brief` replace Jon's spreadsheet will trust the meeting layer when it reaches them.

**What it enables.**

Project Leads stop spending an hour a day on minutes and chase. Prior decisions become retrievable in seconds. Because the agents keep the project memory current, the tracker stops being a reactive after-the-fact record and becomes proactive: it knows what is done, what is outstanding, and — through surfaced resourcing — what each person should work on next. This is also what closes the loop for Modules 1 and 2: the dashboard's progress numbers become trustworthy, and the lessons captured here sharpen the next fee proposal.

### 4.6 The Custom Interface Add-On

The Foundation and three Modules are a complete AI Operating System, operated through Claude Cowork. That is the core recommendation and it stands on its own. Ackroyd Lowrie, though, has a specific and well-developed picture of how the firm should *see* that system, and Oliver has already built a prototype of it. The audit takes that prototype seriously and proposes it as an add-on.

**What it is.** The firm-wide interface: a role-scoped tool every member logs into. Leadership sees the studio overview, billing against tracked progress, flagged projects, and compliance gaps. The design team sees their projects, their tasks, and the agent activity on each. It is the dashboard Biyi described — "everyone has this dashboard, but everyone's is different depending on what they need" — rendered on top of the engine the Modules build.

**How it relates to the core.** The interface has no value without the engine beneath it; Oliver's prototype is "prone to breaking" today precisely because it has a UI and no system underneath. The add-on is built on the infrastructure, not instead of it. It is bounded to the prototype's scope, developed as one workstream alongside the Modules, and completed after Module 3, when all three data layers are live.

**How it is built and owned.** The prototype is the design specification; the interface is rebuilt properly on the engine. It is firm-hosted, owned code running on the firm's own infrastructure.

The add-on is priced as a separate line. It is the one part of this engagement that is bespoke to Ackroyd Lowrie rather than core AIOS infrastructure.

### 4.7 What Comes Next

Once the Foundation is live and the team is working inside the system, the cost of every further capability drops: a workflow that would have needed months of custom engineering is now a skill on top of infrastructure that already knows the firm. The audit names four candidates already visible:

- **ArchiCAD, firm-wide.** Biyi's HTTP CLI runs four BIM use cases on one machine. Productizing it into a firm-wide service makes every architect able to query the model the way Biyi already can.
- **The guided project-creation wizard.** Module 2 builds the capability to create and seed a tracked project; a polished step-by-step onboarding flow on top of it is a later refinement.
- **Automated planning-constraint search.** The site-analysis step runs on manual input and cheap lookups in the core build. Full automated scraping of planning portals is brittle and authority-specific, and is scoped as a defined later enhancement rather than absorbed into Module 1.
- **The client portal.** A view that lets clients see their deliverables once an invoice is paid. It adds external-facing access and is a natural extension of the interface add-on.


### 4.8 Adoption Path — From the Directors Outward

Getting the firm inside the system is itself a sequenced decision. The Modules are ordered by ROI; the rollout of _who runs them_ is ordered for adoption. The first two are executive-level: they give the directors their highest-stakes time back and make the proof visible to everyone else. The third is operations-level: it changes how the whole practice works. An AIOS earns firm-wide adoption only after the people at the top have proven it on their own work. The rollout runs in three phases.

**Phase A — The directors and the champion.** Jon and Oliver are the firm's highest-impact users; they already use Claude daily. When their own bottleneck visibly breaks, the rest of the firm has proof rather than a promise. Biyi is embedded from the first day of the Foundation: the internal champion who will maintain and extend the system, with the knowledge transferred as it is created. _(Biyi's ArchiCAD CLI is itself a future Module — productizing it firm-wide is the highest-engineering item in the build.).

**Phase B — The senior team.** Senior architects and project directors are trained as operators of Modules 1 and 2. Wayne's technical judgement lands earlier in the bid; Andrew's resourcing reads from connected data. The directors stop being the only people who can run the appointment spine, the structural shift Jon asked for.

**Phase C — The full practice.** Module 3 reaches all 15 architects. Biyi runs it first on his own projects, the firm's AI champion, embedded since the Foundation, already fluent in the system. Once the meeting and RFI loop visibly works on his projects, it widens to the full practice. This is the scaling unlock: every project lead now logs decisions into the shared nucleus, and the company-wide record becomes real.

Across all three phases, each group operates one shared nucleus through role-scoped skills: leadership reads portfolio and cashflow, senior runs scope and bids, team runs meetings and decisions.
### 4.9 Investment

The recommendation has two parts: the core AIOS infrastructure, and the optional Custom Interface add-on.

**The core** is the Foundation plus three Modules. Module 1 is the only decision on the table today — it delivers the Foundation and the fee-proposal workflow together. Modules 2 and 3 follow in the order below, each with its own scope, timeline, and payment. The Foundation is not sold separately; it is built inside Module 1, because without it no Module can run. The Module order is the audit's recommendation, sequenced by ROI and technical dependency as argued in Section 3. The retainer starts at Module 1 delivery and keeps the connections live, the knowledge current, and the team supported.

| Stage          | Scope                                | Timeline     | Investment  |
| -------------- | ------------------------------------ | ------------ | ----------- |
| **Module 1**   | Foundation + Fee Proposal            | 6 weeks      | £11,000     |
| Module 2       | Operations + Project Tracker         | 4 weeks      | £7,000      |
| Module 3       | Team Layer + Project Memory          | 4 weeks      | £6,000      |
| Retainer       | Infrastructure upkeep + team support | —            | £800/mo     |
| **Core total** | **Foundation + 3 Modules**           | **14 weeks** | **£24,000** |

**The add-on** is the Custom Interface — Oliver's AL-Tracker prototype, made real and wired to the engine (§4.6). It is optional, depends on the core, and is developed as a parallel workstream that completes after Module 3.

| Line                 | Scope                                                             | Timeline     | Investment  |
| -------------------- | ----------------------------------------------------------------- | ------------ | ----------- |
| Custom Interface     | The AL-Tracker — firm-wide role-scoped dashboard and project tool | 6 weeks      | £24,000     |
| **Total engagement** | **Core + add-on**                                                 | **20 weeks** | **£48,000** |

*All prices are founding-client rates. Payment: 50% on signature, 50% on delivery, per Module and per add-on milestone. 30-day warranty per build.*

At the end of the core build, the firm owns a permanent asset: operational knowledge documented and retrievable, every major tool connected to one shared brain, and the three highest-cost workflows automated with a team already fluent in the system. The add-on turns that asset into something the whole firm can see and operate. All of it owned outright. That asset compounds with every project the firm runs on it.

---

## Section 5: ROI and Payback

The numbers below are conservative. They use the lower band on every contested row, exclude the high-end of any range. T

### 5.1 Build-by-Build Return

```
Formula: hrs/wk × blended rate × 52 × people affected = annual cost of friction
Rates: £126 blended · £180 senior · £95 team 
```

| Build / Module | Pattern                                           | Hrs/wk recovered | Annual value                 | Investment      | Payback  |
| -------------- | ------------------------------------------------- | ---------------- | ---------------------------- | --------------- | -------- |
| **Foundation** | Data spine connected                              | ~8–10            | £52,000–£66,000              | inside Module 1 | —        |
| **Module 1**   | Brief-to-Delivery Gap (upstream)                  | ~20–35           | **£210,000–£370,000** direct | £11,000         | ~3 weeks |
| **Module 2**   | Founder Bottleneck · downstream Brief-to-Delivery | ~22.5            | **~£204,000** direct         | £7,000          | ~2 weeks |
| **Module 3**   | Email-as-Knowledge-Store                          | ~97.5            | **£430,000**                 | £6,000          | ~1 week  |

### 5.2 Hidden ROI — Scope-Creep Prevention

The table above captures the visible friction cost,  hours recovered from named rows. It does not capture the largest single financial exposure in the practice.

**Scope-creep prevention.** Oliver confirmed: more than 50% of AL projects experience scope creep. The worst case is a £100,000 fee becoming a £200,000 spend, a £100,000 loss on a single project. 
Modules 1 and 2 build the scoping and brief-capture system that prevents it. Preventing two or three worst-case incidents per year is worth **£250,000–£500,000 annually**, before any hours are recovered. This ROI is excluded from the conservative totals below because it depends on the quality of execution and the firm's own project flow.

### 5.3 Year-1 Value

| Component                                               | Conservative Year-1 Value | When realized                         |
| ------------------------------------------------------- | ------------------------- | ------------------------------------- |
| Data spine: cross-tool assembly eliminated (Foundation) | £52,000–£66,000           | Module 1 delivery                     |
| Fee-proposal friction rows (Module 1)                   | £210,000–£370,000         | Module 1 delivery                     |
| Scope-creep prevention (hidden ROI)                     | £250,000–£500,000         | From first bid run through the system |
| Operations + tracker friction rows (Module 2)           | ~£204,000                 | Module 2 delivery                     |
| Team-layer friction rows (Module 3)                     | £430,000                  | Module 3 delivery                     |
| **Conservative Year-1 total (direct hours only)**       | **£700,000–£900,000**     |                                       |
| **Including scope-creep prevention**                    | **£950,000–£1,400,000**   |                                       |

### 5.4 Payback Period

> **Core investment (Foundation + 3 Modules):** £24,000
> **Custom Interface add-on (optional):** £24,000
> **Retainer:** £800/mo from Module 1 delivery
> **Conservative Year-1 ROI (direct hours):** £700,000–£900,000
> **Year-1 multiple (core roadmap, direct hours only):** 29–37×
> **Including scope-creep prevention:** 40–58×
> **Payback period:** Module 1 alone pays back the full £24,000 core roadmap in under 6 weeks

The 20 hrs/week recovery guarantee — the threshold for a full refund — is exceeded by roughly 5× on the three highest-confidence rows alone (F24 + F23 + F25 = 97.5 hrs/week). The argument for proceeding to the build is not whether there is enough recoverable time. It is in what order to recover it.

### 5.5 What Ackroyd Lowrie Owns

At the end of Module 3 the firm has a permanent asset. Documented institutional knowledge — no longer at risk from one person leaving. A connected data spine across nine tools — no more human assembly. Three automated workflows, each demoable, each running on real project data. A system that gets smarter with every project the firm runs on it. All of it owned outright: local files, no SaaS dependency, no lock-in. Stop working with Molior tomorrow and keep everything.

---

## Section 6: Decision

### 6.1 Proposed Start

Module 1, the Foundation plus the fee-proposal workflow, runs roughly four to six weeks. Payment is 50% on signature, 50% on delivery, with a 30-day warranty. The retainer begins at Module 1 delivery.

### 6.2 Decision Options

The decision in front of Ackroyd Lowrie is narrow and concrete:

1. **Approve Module 1** — Foundation + Fee Proposal, £11,000.
2. **Confirm the sequence** — Module 2 (Operations + Project Tracker) and Module 3 (Team Layer + Project Memory) to follow in order, retainer from Module 1 delivery.
3. **Decide on the Custom Interface** — whether to commission the optional add-on (§4.6) alongside the core build.
4. **Schedule kickoff.**

The Foundation is required and the Module order is the audit's recommendation, argued from the evidence in Section 3. The sequence can be discussed, but Module 1 is where it starts. The Custom Interface is the one genuine option: the core AIOS is complete and fully operational without it. 

---

## Appendix

The two inventories below are the full evidence base behind the matrices in Section 3. They are reference tables, not part of the argument — consult them when a specific asset or tool is in question.

### Appendix A — Knowledge Asset Inventory

The complete asset list behind the Knowledge Risk Matrix (§3.1): every item, the quadrant it sits in, who carries it, and what breaks without it.

| Item                                                                                                        | Quadrant        | Who carries it                                          | What breaks without it                                                                                                                                                                                                                                                                                                                                          |
| ----------------------------------------------------------------------------------------------------------- | --------------- | ------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Project lifecycle knowledge (marketing → bid → feasibility → planning → technical → dispute)                | Danger Zone     | Jon + Oliver (primary); Andrew, Wayne (partial)         | New work doesn't get won; disputes can't be resolved; mid-flight handovers stall (proven by Marta's month-long absence)                                                                                                                                                                                                                                         |
| Jon's weekly cashflow spreadsheet                                                                           | Danger Zone     | Jon (sole builder + sole maintainer)                    | Weekly cashflow visibility disappears; the £150k → £7k June dip the firm currently manages on Jon's instinct becomes invisible                                                                                                                                                                                                                                  |
| Wayne's technical standards & "white book"                                                                  | Danger Zone     | Wayne (assumed — interview did not happen)              | Stage 4 technical design quality varies project-to-project; new hires have no reference; Wayne's PI/BSA judgement leaves with him                                                                                                                                                                                                                               |
| Oliver's scope and DRM expertise                                                                            | Danger Zone     | Oliver (embedded in fragile AL_Fee_Tool.html prototype) | Proposals lose the scope discipline that prevents £100k-fee → £200k-spend scope creep                                                                                                                                                                                                                                                                           |
| Consultant relationship history                                                                             | Danger Zone     | Project Leads (in heads + email)                        | Repeat-engagement value lost; bad-actor list lives nowhere; each project starts cold on consultant selection                                                                                                                                                                                                                                                    |
| Biyi's ArchiCAD HTTP CLI                                                                                    | Danger Zone     | Biyi (n=1 deployment)                                   | Four live BIM extraction use cases (apartment layouts, compliance checks, schedules, minute-to-task) revert to manual when Biyi is unavailable                                                                                                                                                                                                                  |
| GDPR policy                                                                                                 | Danger Zone     | Nobody — the named file contains QA text instead        | Pinsent Masons retainer is paying for AI/data counsel against a baseline that doesn't exist on paper                                                                                                                                                                                                                                                            |
| ALAQEP-001 Design Review & QA Policy                                                                        | AI-Ready        | Firm-wide (board-approved 2026-04-14)                   | — Ready for immediate ingestion: defines Author/Checker/Approver model, RIBA 0–7 alignment                                                                                                                                                                                                                                                                      |
| ALAQEP-002 Fee Proposal & Appointment                                                                       | AI-Ready        | Firm-wide (board-approved)                              | — Anchors §6.12 (CMap activation), §6.13 (DocuSign required), §6.14 (no work without signed appointment)                                                                                                                                                                                                                                                        |
| ALAQEP-003 Project Resourcing Policy                                                                        | AI-Ready        | Firm-wide (board-approved)                              | — Names CMap Resource Schedule as the canonical record                                                                                                                                                                                                                                                                                                          |
| ISO 19650 drawing-numbering convention                                                                      | AI-Ready        | Firm-wide (deployed in ArchiCAD template)               | — Full package convention documented in Business Plan p.47; ingestion enables AI-generated drawing schedules in firm format                                                                                                                                                                                                                                     |
| Trowers & Hamlins Standard Terms                                                                            | AI-Ready        | Firm-wide (CMap template, DocuSign-issued)              | — Live contract spine; auto-issued; fire/basement/payment-term clauses negotiated by named counsel                                                                                                                                                                                                                                                              |
| Business Plan 2026 + Marketing Plan 2026                                                                    | AI-Ready        | Jon + Oliver                                            | — Strategic spine the firm sends to insurers annually; ICP segmentation; sector targets; partnership map                                                                                                                                                                                                                                                        |
| ALAQEP-007 Project Set-Up Checklist + Checklists.xlsx (design-side master) + Google Sheet site-data tracker | AI-Ready        | Project Leads · Qualified Person (QA gate)              | — Three-layer kickoff capture now confirmed: ALAQEP-007 (admin), Checklists.xlsx (RIBA 0–7 design checks with a `2ND CHECK / Qualified person` QA gate at every stage), Google Sheet (site data). Ready to drive an automated project-init agent. Open question: whether the QA gate is enforced or ornamental — the column is largely blank in observed copies |
| ~14 draft ALAQEPs (Onboarding, Offboarding, Maintenance, -010 Invoicing, -011 Pre-Appointment, -012 Audit)  | Formalize Later | Operations Director (Jo Greenoak)                       | — Sign-off chain now has a holder; awaiting board review + June town hall                                                                                                                                                                                                                                                                                       |
| AL Academy 6-module curriculum + Progression Matrix                                                         | Formalize Later | Joe (Academy lead)                                      | — Built for college-entry cohort, not senior hires; needs a parallel senior-onboarding SOP                                                                                                                                                                                                                                                                      |
| Superseded ALAQEP versions in /SS folders                                                                   | Low Stakes      | —                                                       | — Historical only; flag-and-archive                                                                                                                                                                                                                                                                                                                             |

### Appendix B — Tool Connectivity Inventory

The complete tool list behind the Connectivity Matrix (§3.2): every system, the quadrant it sits in, what it holds, and what connecting it unlocks.

| Tool | Quadrant | What it holds | What connecting it unlocks |
|---|---|---|---|
| **Xero** | Plug-and-Play | P&L, VAT, payroll, aged debt; pushes invoices to CMap | Real-time cash position; ends Jon's manual weekly assembly; board analytics direct from source |
| **Google Workspace** | Plug-and-Play | All project decisions, RFIs, consultant threads, approvals; Calendar; Drive | Decision log mined from email threads; auto-classified RFIs by severity; meeting → action-item pipeline |
| **Egnyte** | Plug-and-Play | Per-project A–G structure; C Compliance C00–C06; Project Tracker.xlsx nested three folders deep | Semantic indexing of drawings, specs, and D-Team Comms; 40+ project folders become a queryable knowledge graph. Requires Co-Pilot add-on; confirm AL plan tier |
| **Zoom** | Plug-and-Play | Project group chats; meeting recordings | Per-project messaging memory recovered; chat archive requires compliance archiving enabled at account level |
| **Airtable** | Plug-and-Play | Maintenance compliance system of record | Compliance state visible without switching tools |
| **JumpCloud** | Plug-and-Play | SSO for 20 portal apps: manage access for humans and agents | Clean leaver workflow; project-scoped access provisioning |
| **Granola** | Plug-and-Play | AI meeting notes (tested by Jon, not deployed firm-wide) | Connect once the firm adopts a transcription standard; official MCP launched Feb 2026 |
| **DocuSign** | Plug-and-Play | Fee proposal sign-off and contract execution | Appointment status and signed terms tracking; official MCP beta |
| **Microsoft 365 / Excel** | Plug-and-Play | Excel files (cashflow, budget, project tracker); Teams comms. Three key files: Jon's weekly cashflow (sole author, annual rebuild), AL BUDGET.xlsx (Anita's manual Xero bridge), Project Tracker.xlsx | Microsoft Graph MCP reads and writes existing files without workflow disruption. Financial files are the migration target; live Xero dashboards replace them when AL is ready; no forced cutover required |
| **CMap** | Deep Extraction | Fees, timesheets, resourcing, invoicing, project stage; the operational spine | Cross-tab profitability view; portfolio dashboard for Jon; comparable-project benchmarking for Oliver's fee tool; write API scope TBC |
| **Pipedrive** | Deep Extraction | Sales pipeline (active board only); deal history; BCB attendance in separate Google Sheet | Live pipeline visibility; win/loss capture; lead-scoring against ICP. No official MCP, community MCP or REST API |
| **ArchiCAD** | Deep Extraction | Primary BIM authoring tool; drawings, models, schedules, compliance geometry across all live projects | Biyi's HTTP CLI; 4 live use cases already running on his machine. Productizing it firm-wide is the highest-engineering item in the build and the one with the clearest existing proof of concept |
| **1Password** | Deep Extraction | Credentials for 20+ tools | Clean onboarding/offboarding alongside JumpCloud. Official CLI mature; community MCP wraps it |
| **BrightHR** | Deep Extraction | HR records, H&S compliance | REST API available; integrate if confirmed active |
| **Miro** | Low Lift, Low Value | Design workshop boards, concept diagrams, client presentation canvases | REST API available; low data value for the AIOS build; not a project-record system |
| **Adobe Suite** | Low Lift, Low Value | InDesign (documents + presentation packs), Photoshop/Illustrator (visuals), Acrobat (PDFs) — per-architect production tools | Not an integration target; outputs (PDFs, rendered images) stored and indexed in Egnyte |
