# Hive Brain — Concept, AL Object Model, Ingestion Pipeline & Meeting Plan

> **Status:** Draft for the Jon/Oli/Felipe meeting — 2026-07-23
> **Author:** Felipe (Molior), with CLAUDIO
> **Purpose:** Introduce the *Hive Brain* — AL's operational world model / knowledge base — and
> position it as the reasoning layer that sits on top of the deterministic data layer being built
> with Jon and Danny. This document is both the internal thinking record and the meeting plan.
> **Companion research:** `./kb-aec` (the world-model design exploration this builds on).

---

## 0. TL;DR (the one-paragraph version)

AL is a ~25-person RIBA design practice whose biggest operational problem — named repeatedly in the
May audit — is that its knowledge is **trapped in four heads** (Jon, Ollie, Wayne, Andrew) and
**scattered across emails, Egnyte folders, and informal channels**. We are building two complementary
systems to fix this. The **Data Layer** (with Jon + Danny) is the deterministic system of
record: fees, deliverables, project status — things that must be *exact*. The **Hive Brain** (Molior)
is the reasoning layer on top: it ingests everything the practice says, decides, and produces —
meetings, emails, CRM, files — and turns it into a living memory the whole firm can query. The data
layer answers *"what is the current state?"*; the Hive Brain answers *"what do we know, and why did we
decide it?"* Neither replaces the other. We are already feeding the Hive Brain — the meeting-notes
automation (live since Jul 12) and the CRM are its first two ingestion tributaries. The proposal is to
name it, connect the pipes we already built, and add email as the third feed.

---

## 1. The name: Hive Brain

"Hive Brain" is not decoration — it names the disease the audit diagnosed.

- The audit's #1 finding: only Jon and Ollie understand the full project lifecycle (marketing →
  post-occupancy); Wayne and Andrew are a second tier; when someone is on leave, "handover notes are
  the only backup." The practice's operational memory **walks out the door every evening.**
- A *hive* brain is the antidote: the colony knows what no single bee holds.
- **Framing line for the room:** *"Right now the practice's memory walks out the door every evening.
  The Hive Brain is where it stays."*

Naming discipline — nest the concepts, don't collapse them:
- **Hive Brain** — the whole vision (the complete node system we've referred to loosely before).
- Inside it, two complementary systems:
  - **Data Layer** — deterministic system of record (Jon + Danny).
  - **Operational World Model** — the graph memory that reasons on top (Molior). "Knowledge base" is
    the accessible *door* to this idea; "operational world model" is the room.
- Bridge sentence: *"We're building AL's knowledge base — but not the kind you're picturing. Not a
  place to store documents. A living model of how the firm actually operates."*

---

## 2. The two-system thesis (why AEC needs both)

AEC uniquely demands **two different kinds of truth**, and conflating them is why most "AI knowledge
graph" projects fail.

| | **Data Layer** (Jon + Danny) | **Hive Brain** (Molior) |
|---|---|---|
| Question | "What *is* the current state?" | "What do we *know* — and *why* did we decide it?" |
| Nature | Deterministic, structured, authoritative | Interpretive, reasoned, evolving |
| Truth type | Exact lookup (the fee *is* £X; revision *is* C) | Reasoned reconstruction (why we changed C→D) |
| Content | Fees, deliverables, project status, resourcing | Decisions + rationale, lessons, expertise, standards |
| Tech | Supabase / Postgres / Vercel | Graph + vector + reflection (gbrain-class) |
| System type | System of **record** | System of **understanding / memory** |
| AIOS layer | Layer 2 (Data) | Memory System + Layer 3 (Intelligence) |

**The fusion argument (this is the key political + technical point):**
You cannot build the world model on sand. The Hive Brain *reasons over* the data layer's ground truth.
If the deterministic layer is wrong or missing, the Hive Brain hallucinates. So the data layer is not
a rival to what we propose — it is the **foundation of trust** for it. Danny's work makes the Hive
Brain *possible*. Agree loudly with "data is the moat," then extend it: *"data is the moat — and the
memory of what you did with the data is the deeper moat."*

Note from the workshop (Jun 2): the team already agreed *"the majority of fee-proposal logic is
deterministic, not AI-driven."* That is the same instinct — deterministic where it must be exact,
reasoned where it must be contextual. The Hive Brain is that principle applied to the *unstructured*
half of the practice.

---

## 3. The AL-specific object model

### 3.1 Why the generic model is wrong for AL

The companion research (`kb-aec`) lands on a four-object world model — Objects / Evidence / Events /
Beliefs — but its hero entities are **built-asset-centric**: Rooms, AHU-03, ducts, equipment with
maintenance histories. That is correct for a large MEP / construction / facilities firm. **It is wrong
for AL.** AL is a ~25-person *design* practice. It does not track equipment maintenance. It loses money
and knowledge somewhere completely different, and the audit says exactly where.

### 3.2 The model, driven by audit findings

Keep the four *memory types* as the top-level frame (it is sound, and it is literally how gbrain
already works). **Rename them for legibility and repopulate them with AL's ontology:**

| Memory type | "what it means" | **AL Hive Brain node types** (from the audit) |
|---|---|---|
| **Entities** | what exists | **Projects** (RIBA stage, typology, service tier), **People** (staff + expertise), **Clients/Companies**, **Deliverables** |
| **Events** | what happened | **Meetings** ✓ live, **Email threads**, **Design queries / RFIs**, **QA reviews**, **Scope variations** |
| **Knowledge** | what we know & *why* | **Decisions + rationale**, **Standards / Regs**, **Lessons-learned by typology**, **Expertise** ← *the part AL is losing* |
| **Evidence** | the proof | **Egnyte files**, **ArchiCAD models**, **proposals**, **contracts** — pointed to, never dissolved into the graph |

### 3.3 The two AL-specific design rules

1. **Decision-centric, not asset-centric.** The graph's gravity is **Decisions** and **Expertise**,
   because that is what AL loses. (Audit: "no unified decision log — decisions live in email threads
   and project files"; "only Jon and Ollie understand the full lifecycle.")
2. **A hard wall between Permanent and Project knowledge** — the research's single strongest
   recommendation, and it maps exactly onto AL's filing pain (Alahni: planning vs technical phases use
   two folder schemas; "I recreate templates that already exist but are filed randomly"). Standards,
   detail library, and templates are **firm-permanent**; drawings and decisions are **project-scoped**.
   They never mix.

### 3.4 Which audit pain each object fixes (the receipts)

| AL pain (audit, May 2026) | Hive Brain object that addresses it |
|---|---|
| No unified decision log; decisions in email threads | **Decision** (crown jewel) |
| Tacit lifecycle knowledge trapped in Jon/Ollie/Wayne/Andrew | **Expertise** graph (person → domain) |
| Compliance regs cross-referenced *fresh every project* | **Standard/Regulation** (permanent, reusable) |
| Filing chaos; templates recreated | **Permanent vs Project** separation |
| Resourcing done entirely by conversation ("just talking, not doing") | **Person ↔ capacity ↔ Project** |
| Skill-switching across 4+ typologies, each different codes | **Typology** as a first-class dimension |
| Meeting minutes broken, unstandardized | **Meeting** (already being captured) |

### 3.5 The data-layer seam (clean division of ownership)

- **Data Layer owns:** the Entities / Deliverables / Fees spine as deterministic ground truth.
- **Hive Brain owns:** Events + Knowledge + Evidence, and **reads** the entity spine from the data
  layer rather than re-deriving it.

---

## 4. The ingestion pipeline — built on AL's actual stack

AL's real source systems (audit + company page): **Notion** (CRM + meeting notes — *already wired*),
**Egnyte** (file store — the "server folders" everyone digs through), **Total Synergy** (project
management), **Xero / QuickBooks** (finance), **ArchiCAD / Graphisoft** (BIM), **Gmail / Google
Workspace** (email), **Mailchimp + Squarespace** (marketing / inbound). Each needs its *own* extraction
agent — a PDF and an ArchiCAD model cannot be ingested the same way.

| Source | Status | What the Hive Brain extracts | Fixes |
|---|---|---|---|
| **Meetings** (Notion + Meet/Gemini) | ✅ live | Decisions, action items, attendees, risks → Events + Knowledge + People | broken minutes; lost decisions |
| **CRM** (Notion People/Cos/Deals) | ✅ live | Clients, companies, contacts, ICP → Entities | the entity spine |
| **Email** (Gmail via `gws`) | ◑ partial | Decisions-in-threads, commitments, client sentiment | "decisions live in email threads" |
| **Egnyte** | ✗ new | Proposals, contracts, QA checklists, drawing metadata | filing fragmentation; duplicate work |
| **Synergy / Xero** | ✗ new | Project status, fees, resourcing, deliverables — *deterministic* | **the data-layer seam** |
| **ArchiCAD / BIM** | ✗ later | Structured design objects (BIM is already a graph) | QA, coordination |
| **Squarespace / Mailchimp** | ◑ via Gigil | Inbound leads, engagement → CRM | pipeline capture |

### 4.1 The first step — in detail

The first step is **not** "build an ingestion platform." It is: *turn the two things already running
into the first tributaries, and stand up the shared graph they feed.* Minimal new surface area, maximal
conceptual leap — the meeting and CRM pipelines already exist; today their outputs sit in **separate
Notion databases** instead of one graph.

1. **Define one extraction contract.** Every source emits the same primitives — Entity / Event /
   Knowledge-fact — each stamped with `[Source: …]` + confidence. (This is exactly gbrain's
   `extract_facts` + timeline model — transplanted, not invented.)
2. **Fork the meeting pipeline.** After it writes the Notion/Drive doc, add an extraction pass → emit
   Decisions, People, Projects, action-items as graph nodes. Already deployed on Render; one added
   step, not a rebuild.
3. **Map the CRM in.** People/Companies/Deals are already structured — mostly a field-mapping job into
   the Entity spine.
4. **Wire Gmail** (we already have `gws`) → nightly extraction of decisions/commitments from AL
   threads. This is where the lost decisions actually live.
5. **Stand up the graph + nightly reflection job** — episodic → semantic (e.g., three meetings + one
   email referencing the glulam switch → auto-create one Decision node with rationale, approver,
   alternatives). gbrain's `dream` cycle is the working reference.
6. **Prove it with one reasoning query:** *"Why did we switch to glulam on Project X?"* → reconstruct
   the chain across meeting + email + decision. Reasoning, not retrieval.

**Story for Jon:** *"You're already feeding it. Every meeting since July 12 has flowed through
tributary one. The first step isn't a new project — it's connecting the pipes you already paid for
into a shared memory, and turning on Gmail as the third feed."*

### 4.2 Staged rollout

- **Stage 0 (today):** two live tributaries (Meetings, CRM) — but siloed in separate Notion DBs.
- **Stage 1 (propose now):** shared graph + extraction contract; fork meeting pipeline; map CRM; wire
  Gmail; nightly reflection; one reasoning demo.
- **Stage 2:** Egnyte (file/decision fragmentation) + data-layer seam (read ground truth from Danny's
  Supabase).
- **Stage 3:** ArchiCAD/BIM structured ingestion; permanent Standards/compliance library; QA support.

---

## 5. Sequencing with the data layer

Not "data layer first, then Hive Brain." **Parallel tracks meeting at a defined seam:**
- Danny builds the deterministic spine on its own track.
- The Hive Brain's ingestion starts **now** — meetings, email, CRM don't depend on the data layer
  being finished, so there is nothing to wait for.
- The seam is the named deliverable: the Hive Brain consumes the data layer's outputs as authoritative,
  deterministic facts (project status, fees) instead of re-deriving them.
- One-liner for Jon: *"Neither blocks the other. The data layer is the deterministic backbone; the Hive
  Brain starts today with the sources we already have and plugs into that backbone as it comes online."*

---

## 6. gbrain as proof (not as the pitch)

Use gbrain as *evidence the architecture is real and running a firm* — then step back to AL's
architecture. Do **not** turn the meeting into a gbrain demo.
- One live reasoning example (~90 seconds): a "why did we decide X" query traversing memory — shows
  reasoning-not-retrieval in a way no slide can.
- Be clear-eyed internally: gbrain today is single-firm, single-operator scale (~335 pages). AL is 25
  people / 40+ live projects. We propose the **architecture and memory disciplines**, staged — not
  "gbrain as-is, dropped in." The multi-user / permissions / project-scoping layer is real work.

---

## 7. Meeting plan (2026-07-23)

**Attendees:** Jon (organizer, commercial), Oli (day-to-day, CRM owner), Felipe; Danny optional.
**This meeting's brief (from Jul 16 notes):** everyone brings a roadmap sketch; review individual
sketches; align on one holistic plan. Danny's feedback to be folded in. CRM status catch-up with Oli.

### 7.1 What to share, in order

1. **Open on the roadmap ask** (Jon's deliverable). Frame today as "aligning the sketches."
2. **The unifying idea: Hive Brain.** Name it; give the "memory walks out the door" line. (§1)
3. **Two-system thesis.** Data layer (Jon+Danny) vs Hive Brain (Molior) — deterministic vs reasoned;
   the fusion argument ("data is the moat, memory of what you did with it is the deeper moat"). (§2)
   → *This is where you pre-empt any sense of overlap with Danny — position as one stack, two halves.*
4. **The AL-specific object model.** Lead with "the generic AI-knowledge-graph model is wrong for a
   design practice" — then the four memory types repopulated with AL's ontology, decision-centric,
   permanent-vs-project wall. Show the "which pain each object fixes" table — these are *their* audit
   findings, in their words. (§3)
5. **The ingestion pipeline.** "You're already feeding it." The source table with live-vs-new; the
   first step in detail; the wedge (meeting automation = tributary one). (§4)
6. **90-second gbrain glimpse.** One reasoning query. Then back to AL. (§6)
7. **Sequencing + the seam with Danny.** Parallel, non-blocking. (§5)
8. **Close on decisions to land** (below).

### 7.2 What we want OUT of the meeting (decisions to land)

- [ ] Agreement that "Hive Brain" (reasoning layer) and "Data Layer" (record layer) are **one stack**,
      built in parallel — not competing initiatives.
- [ ] Green light for **Stage 1**: connect the two live tributaries + Gmail into a shared graph.
- [ ] Danny alignment on the **seam** (Hive Brain reads ground truth from the data layer).
- [ ] Confirm **CRM status** with Oli and fold it in as tributary #2 (see §7.3).
- [ ] Agree the retainer / commercial framing is a *live* discussion (leave open — Jon's to react to).

### 7.3 CRM catch-up with Oli (fold into the meeting)

Status from the brain (as of Jul 13–14):
- Notion 4-DB CRM is **live in production**. CO-LIV white-paper batch (23 contacts) ingested + ICP-
  scored: 5 hot ICP matches, 6 hunting-partner candidates.
- New People-DB property `WP Engagement Type` (Comment+Email / Comment-Only / Download) + `White Paper
  (CO-LIV)` segment — keeps Oliver's three lead types from collapsing into one "LinkedIn" bucket.
  Documented as reusable "Workflow E."
- **Open loops to raise with Oli:** (a) Chris Baker / Gigil still owes white-paper-download contacts;
  (b) the "Comment-Only (No Email)" LinkedIn cohort has no name list yet; (c) newsletter platform
  (Substack vs Beehiiv) still undecided since Jul 2.
- **Reframe for the meeting:** the CRM isn't a side-project — it's **ingestion tributary #2** of the
  Hive Brain (Clients/Companies/People entity spine). This ties Oli's workstream into the unified story.

### 7.4 Landmines / things to handle carefully

- **Don't step on Danny.** Every mention of the data layer is complementary and load-bearing. If Danny
  is on the call, invite him into the seam discussion explicitly.
- **Don't let it become a gbrain demo.** 90 seconds, then back to AL.
- **Don't over-promise scale.** Architecture + disciplines now; multi-user hardening is real work.
- **Jon RSVP was "declined" on the recurring instance** (also organizer — likely a stale artifact).
  Confirm the meeting is on before dialing in.

### 7.5 Open threads to have answers ready for

- "Research Howy" (Jul 16 action) — have a one-line read if asked.
- Two invoices outstanding (meeting-notes £1,615 sent Jul 13; audit 2nd installment £750) — decide
  whether to raise.
- Notion sync quirk Jon flagged (DB on phone, not desktop) — check if resolved.

---

## 8. Diagram plan (SPEC ONLY — do not build yet)

Deliverable: a single **screen-shareable HTML one-pager**, three diagrams, theme-aware, no external
assets. Planned below; to be built on a separate pass.

### Diagram 1 — The Hive Brain stack (with the data-layer seam)
- **Purpose:** show the two-system thesis at a glance; establish Hive Brain as the umbrella.
- **Layout:** vertical stack.
  - Top band: **Hive Brain** (umbrella label across the whole).
  - Middle: two columns side by side —
    - Left column **Operational World Model (Molior)**: Events · Knowledge · Evidence.
    - Right column **Data Layer (Jon + Danny)**: Projects · Deliverables · Fees · Resourcing.
  - A labelled **seam** line between them: *"Hive Brain reads deterministic ground truth from the Data
    Layer."*
  - Bottom band: **Sources** feeding upward (thumbnails: Notion, Gmail, Egnyte, Synergy, ArchiCAD).
- **Callouts:** "deterministic" tag on the right, "reasoned" tag on the left.
- **Colour:** Data Layer in one hue (solid = record), Hive Brain in a second hue (graph = memory).

### Diagram 2 — The four-memory-type model, repopulated with AL's ontology
- **Purpose:** show what actually lives inside the Hive Brain, in AL's language.
- **Layout:** four quadrants (or four stacked lanes):
  - **Entities** — Projects, People, Clients, Deliverables.
  - **Events** — Meetings ✓, Emails, RFIs, QA reviews, Variations.
  - **Knowledge** — Decisions+rationale, Standards/Regs, Lessons, Expertise. **Visually emphasized**
    (this is the differentiator / the part AL loses).
  - **Evidence** — Egnyte files, ArchiCAD, proposals, contracts (shown as "pointed to," dotted border).
- **Overlay:** the **Permanent vs Project** wall — a vertical divider showing Standards/Templates
  (permanent) vs Decisions/Drawings (project), never mixing.
- **Optional micro-callout:** one "pain → object" pairing per quadrant (e.g., Knowledge ← "no decision
  log today").

### Diagram 3 — The AL ingestion pipeline (live vs new)
- **Purpose:** "you're already feeding it" — show momentum + the first step.
- **Layout:** left-to-right flow.
  - **Sources** column: Meetings ✅, CRM ✅, Email ◑, Egnyte ✗, Synergy/Xero ✗, ArchiCAD ✗ (status
    icons: green=live, amber=partial, grey=new).
  - → **Per-source extraction agents** (note: "each source, its own agent").
  - → **Extraction contract** (Entity / Event / Knowledge-fact + Source + confidence).
  - → **Shared graph** + **vector index**.
  - → **Nightly reflection** (episodic → semantic).
  - → **Reasoning** (the "why did we switch to glulam" query).
- **Highlight:** draw a box around Meetings + CRM labelled **"Stage 1 — already built, just connect the
  pipes,"** and Gmail as **"+ turn on the third feed."**
- **Colour:** green for live tributaries, grey for future — makes the momentum visually obvious.

---

## 9. Open questions for Felipe (before finalizing)

1. Confirm "Hive Brain" as the name to use in the room (vs. keeping "knowledge base" as the softer
   entry term and revealing "operational world model" underneath).
2. Is Danny on the call? If yes, decide whether to pre-align on the seam before, or let it emerge live.
3. How much of the CRM catch-up is status vs. re-framing it as tributary #2 — how much meeting time.
4. Build the HTML diagram deck before the meeting, or walk it conceptually and send the deck as
   follow-up?
