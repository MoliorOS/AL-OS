# Hive Brain — Diagram Content Draft

> Content-only pass for the three diagrams specced in `hive-brain-concept-and-meeting-plan.md` §8.
> Purpose: lock exact text before build. Revise this file, then say "build it."

---

## Diagram 1 — The Hive Brain stack (with the data-layer seam)

**Title (on-diagram):** The Hive Brain

**Subtitle:** One stack. Two halves — deterministic and reasoned.

**Top band (umbrella):**
- Label: **HIVE BRAIN**
- Small subtext under it: *"AL's operational world model"*

**Left column — Operational World Model (Molior)**
- Column header: **Operational World Model** — tag: `reasoned`
- Contents (3 stacked chips):
  - Events
  - Knowledge
  - Evidence
- One-line footer under the column: *"What do we know — and why did we decide it?"*

**Right column — Data Layer (Jon + Danny)**
- Column header: **Data Layer** — tag: `deterministic`
- Contents (4 stacked chips):
  - Projects
  - Deliverables
  - Fees
  - Resourcing
- One-line footer under the column: *"What is the current state?"*

**Seam (the connector between the two columns):**
- Seam label (on the line itself): **the seam**
- Seam caption (below or beside it): *"Hive Brain reads deterministic ground truth from the Data Layer."*
- Arrow direction: Data Layer → Operational World Model (one-way read, not a merge)

**Bottom band — Sources (feeding upward into both columns):**
- Band label: **Sources**
- Icons/chips left to right: `Notion` · `Gmail` · `Egnyte` · `ArchiCAD`
- Small arrows pointing up from this band into the stack above

**Legend / callout chips:**
- `reasoned` chip — colour A (memory/graph hue)
- `deterministic` chip — colour B (record/solid hue)

**Framing line (footer of whole diagram, small text):**
*"Data is the moat. The memory of what you did with the data is the deeper moat."*

---

## Diagram 2 — The four-memory-type model (AL's ontology)

**Title:** What lives inside the Hive Brain

**Subtitle:** Not a generic knowledge graph — AL's own ontology, decision-centric.

**Four lanes/quadrants, left to right (or top to bottom):**

**1. Entities** — *what exists*
- Projects (RIBA stage, typology, service tier)
- People (staff + expertise)
- Clients / Companies
- Deliverables

**2. Events** — *what happened*
- Meetings
- Email threads
- Design queries / RFIs
- QA reviews
- Scope variations

**3. Knowledge** — *what we know & why* — **visually emphasized lane (larger, brighter, or bordered)**
- Decisions + rationale
- Standards / Regs
- Lessons-learned by typology
- Expertise
- Micro-callout under this lane, styled as a highlighted note: *"← the part AL is losing"*

**4. Evidence** — *the proof* — dotted border (signals "pointed to, not absorbed")
- Egnyte files
- ArchiCAD models
- Proposals
- Contracts
- Micro-callout: *"pointed to, never dissolved into the graph"*

**Overlay — Permanent vs Project wall:**
- A vertical divider drawn across the whole diagram
- Left/permanent side label: **PERMANENT** — Standards · Templates · Detail library
- Right/project side label: **PROJECT** — Decisions · Drawings · Scope
- Divider caption (small, centered on the line): *"Never mix."*

**Optional per-lane pain-to-object micro-callouts (pick one per lane if space allows):**
- Entities ← *"resourcing done by conversation, not data"*
- Events ← *"meeting minutes broken, unstandardized"*
- Knowledge ← *"no unified decision log today"*
- Evidence ← *"templates recreated because they're filed randomly"*

---

## Diagram 2b — One traced thread (reasoning, not retrieval)

> A small companion to Diagram 2 — inset in the corner, or its own compact panel beside it.
> Purpose: the grouped lanes show *what exists*; this shows *how the nodes connect and reason*.

**Title (small):** How it reasons

**Caption above the chain:** *"The graph doesn't store the answer. It reconstructs it."*

**The chain (left to right, each an arrow with a labelled edge — the edge labels are the point):**

```
[Meeting: fee scoping]  —produced→  [Decision: exclude external landscaping]  —changed→  [Deliverables list]  —references→  [RIBA Scope of Services]
                                          │  approved_by: Oliver
                                    supported by
                                          ▼
                                 [Signed fee proposal]   ← Evidence (dotted node)
```

**Node styling:**
- `Meeting: fee scoping` — **Events** colour (matches Diagram 2's Events lane)
- `Decision: exclude external landscaping` — **Knowledge** colour, emphasized (this is the node AL loses
  today — the exclusion agreed in the room, then forgotten); small tag on it: `approved_by: Oliver`
- `Deliverables list` — **Entities** colour, tagged `Data Layer` (the seam made concrete: the scope/
  deliverables live in Danny's fee tool — the Hive Brain *reads* them, doesn't own them)
- `RIBA Scope of Services` — **Knowledge** colour, tagged `permanent` (firm-wide standard referenced by
  many projects, never copied — the permanent/project split from Diagram 2 in action)
- `Signed fee proposal` — dotted border (**Evidence** — pointed to in Egnyte, not dissolved)

**Edge labels (must be visible — they carry the meaning):** `produced` · `changed` · `references` ·
`supported by`

**Footer line (small):** *"Six months later someone asks 'why aren't we doing the landscaping?' — the
Hive Brain walks this path and answers instantly: excluded at fee scoping, approved by Oliver, in the
signed proposal. The 'you didn't say you wouldn't do X' conversation never happens."*

---

## Diagram 3 — The AL ingestion pipeline (live vs new)

**Title:** You're already feeding it

**Subtitle:** Two tributaries live since July 12. This is the wedge, not a new project.

**Left-to-right flow, five stages:**

**Stage A — Sources** (each a status chip: 🟢 live / 🟡 partial / ⚪ new)
- 🟢 Meetings
- 🟢 CRM
- 🟡 Email
- ⚪ Egnyte
- ⚪ Xero
- ⚪ ArchiCAD

**Stage B — Per-source extraction agents**
- Single note box, not one box per source: *"Each source, its own extraction agent — a PDF, a meeting note, and an ArchiCAD model can't be ingested the same way."*

**Stage C — Extraction contract**
- Box label: **Extraction contract**
- Contents inside the box (small list):
  - Entity
  - Event
  - Knowledge-fact
  - stamped with `[Source: …]` + confidence

**Stage D — Shared graph**
- Box label: **Shared graph + vector index**

**Stage E — Nightly reflection**
- Box label: **Nightly reflection**
- Subtext: *episodic → semantic*
- Example line (small, italic): *"two fee-scoping meetings + the signed proposal → one Decision node ('external landscaping excluded'), with rationale + approver + service tier"*

**Stage F — Reasoning (the payoff, end of the flow)**
- Box label: **Reasoning**
- Example query, styled as a quote: *"Why was external landscaping excluded from the Project X fee?"*

**Highlight overlays (drawn on top of the flow, not separate boxes):**
- A bracket/box around **Meetings + CRM** (Stage A) labelled: **"Stage 1 — already built, just connect the pipes"**
- A separate small tag on **Email**: **"+ turn on the third feed"**

**Colour rule:** live tributaries (Meetings, CRM) in the "live" hue straight through their path; Email in the partial hue; Egnyte / Synergy / ArchiCAD in grey/future hue — so momentum reads at a glance without needing the legend.

---

## Appendix A — Full AL ontology (back-pocket, not for the main deck)

> **Do NOT put this in the screen-shared deck.** It contradicts the "start minimal, grow" thesis if
> shown as the opening picture, and it will trigger schema-bikeshedding with a commercial audience.
> This is the technical deep-dive to pull up **only** if Danny goes technical or the room explicitly
> asks "what are the actual node types and how do they connect?" It speaks Danny's "data as moat /
> schema" language and shows rigor on demand. Diagram 2 is the map; this is the territory.

### A.0 The minimal starting ontology (what we actually build first)

Per the evolutionary-world-model principle in `kb-aec`: **start with 5 node types, grow from there.**
Everything else in this appendix is where it *goes*, not where it *starts*.

```
[Project] ──for──> [Client]
[Person] ──assigned_to──> [Project]
[Meeting] ──about──> [Project]
[Meeting] ──produced──> [Decision]
[Decision] ──approved_by──> [Person]
```

Five nodes (Project, Client, Person, Meeting, Decision), five edges. This alone answers "who decided
what, when, on which project" — the audit's #1 gap — on day one. Everything below is Stage 2+.

### A.1 Node catalog

| Node type | Memory type | Key attributes | Owner | Scope |
|---|---|---|---|---|
| **Project** | Entity | RIBA stage (0–7), typology, service tier (bronze/silver/gold), status | **Data Layer** | project |
| **Deliverable** | Entity | type, RIBA stage, status, owner | **Data Layer** | project |
| **Person** | Entity | role, seniority, expertise domains | Hive Brain | firm |
| **Client / Company** | Entity | type (developer / LA / private), sector | Hive Brain (from CRM) | firm |
| **Meeting** | Event | date, attendees, project | Hive Brain | project |
| **Email thread** | Event | participants, date, project | Hive Brain | project |
| **RFI / Design query** | Event | question, discipline, status | Hive Brain | project |
| **QA review** | Event | reviewer, stage, findings | Hive Brain | project |
| **Scope variation** | Event | change, reason, cost impact | Hive Brain | project |
| **Decision** | Knowledge | rationale, alternatives, approver, date, outcome, confidence | Hive Brain | project |
| **Standard / Regulation** | Knowledge | code, jurisdiction, typology applicability | Hive Brain | **permanent** |
| **Lesson** | Knowledge | statement, source project | Hive Brain | **permanent** (typology) |
| **Expertise** | Knowledge | domain (can be modelled as an edge — see A.2) | Hive Brain | firm |
| **File / Drawing** | Evidence | uri (Egnyte), type, version | pointer only | project |
| **ArchiCAD model** | Evidence | uri, version | pointer only | project |
| **Proposal / Contract** | Evidence | uri, parties, milestones | pointer only | project |

### A.2 Edge catalog (this is where reasoning lives)

| From | edge | To | Reasoning it enables |
|---|---|---|---|
| Meeting | `produced` | Decision | "which meeting decided this?" |
| Decision | `changed` | Deliverable / Drawing | "what did this decision affect?" |
| Decision | `approved_by` | Person | "who signed off?" |
| Decision | `references` | Standard | "what rule drove it?" |
| Decision | `supported_by` | Evidence | "where's the proof?" |
| Decision | `considered` | (alternative) | "what did we reject, and why?" |
| RFI | `resolved_by` | Decision | "how was this query closed?" |
| RFI | `affects` | Deliverable / Drawing | "what does this query touch?" |
| Person | `has_expertise` | Standard / domain | "who knows PassivHaus?" (the expertise graph) |
| Person | `assigned_to` | Project | "who's on this?" (resourcing) |
| Deliverable | `belongs_to` | Project | spine |
| Project | `for` | Client | spine |
| Project | `at_stage` | RIBA stage | pipeline position |
| Meeting / Email | `about` | Project | context routing |
| Lesson | `derived_from` | Project | "where did we learn this?" |
| Lesson | `applies_to` | Typology | "what applies to retrofits?" |
| Standard | `applies_to` | Typology | permanent-knowledge reuse |
| Variation | `changes` | Project (scope) | scope-creep tracking |

**Modelling note:** *Expertise* is best represented as the `Person —has_expertise→ Standard/domain`
edge rather than a standalone node — it keeps the expertise graph queryable without a redundant node
layer. Shown as its own item in Diagram 2 only for legibility.

### A.3 Scoping rules — the Permanent / Project wall

| Scope | Node types | Rule |
|---|---|---|
| **Permanent** (firm-wide, evergreen) | Standard/Regulation, Lesson, Expertise, Templates, Detail library | reusable across all projects; never duplicated per-project |
| **Project** (scoped, disposable-with-project) | Project, Deliverable, Decision, Drawing, RFI, Meeting, Variation | lives and dies with the project |
| **Firm** (entities that span projects) | Person, Client/Company | referenced by both scopes |

The wall is a **hard constraint, not a suggestion**: a Standard is authored once and *referenced* by
many Decisions; it is never copied into a project. This is the structural fix for Alahni's "I recreate
templates that already exist" waste.

### A.4 The ownership seam (Data Layer ↔ Hive Brain)

| Concern | Owned by | Notes |
|---|---|---|
| Project status, RIBA stage | **Data Layer** | Hive Brain *reads* as ground truth, never re-derives |
| Deliverables, fees, resourcing | **Data Layer** | deterministic; Danny's Supabase spine |
| Meetings, emails, RFIs, QA, variations | **Hive Brain** | the episodic event log |
| Decisions, Standards, Lessons, Expertise | **Hive Brain** | the reasoned/semantic layer |
| Evidence (files) | **neither owns** | both point to Egnyte; the file stays the file |

The seam is a **one-way read**: `Data Layer → Hive Brain`. The Hive Brain enriches and reasons; it
does not write back into the deterministic record.

### A.5 Mapping to gbrain (why this is transplant, not invention)

For the technical audience: this ontology maps directly onto gbrain's existing primitives —
`entity` (Project/Person/Client), `temporal`/`event` (Meeting/RFI/Variation), `concept` (Decision/
Standard/Lesson), `annotation` (Evidence pointers), typed links (the edge catalog), and the nightly
`dream` reflection cycle (episodic → semantic promotion). We are not designing a database from scratch;
we are configuring a schema pack on a running engine.
