---
type: workshop-prep
archived: 2026-06-02
date: 2026-06-02
title: "Workshop Prep — 2026-06-02"
archive: true
client: Ackroyd-Lowrie
project: Workshop
---
# Workshop Prep — 2026-06-03
**Ackroyd Lowrie AIOS · Fee Proposal Build Workshop**
*Read before entering the room. 5 minutes.*

---

## What This Workshop Is For

Not a presentation. Not a status update. A working session.

Leave with four things:
1. **Shared vision** — everyone in the room agrees on what done looks like
2. **Validated workflow** — the fee proposal flow is agreed step by step
3. **Agreed architecture** — stack decisions made, gaps named, risks acknowledged
4. **A backlog** — specific tasks assigned, first sprint scoped, next date set

If the meeting ends without those four things, it wasn't a workshop — it was a conversation. Drive toward decisions.

---

## Who Is In The Room

**Oliver Lowrie** — Domain expert, product visionary, AL director.
He cares about: the fee proposal tool working, scope creep finally solved, this turning into a commercial product. He built the prototype — he has emotional ownership of the vision. Let him correct and expand the workflow diagram. That's his moment and it builds buy-in.
Watch for: going broad too fast. He will want to talk about Phase 3 and the forward-deployed model before Phase 1 is spec'd. Bring him back to the first slice.

**John Lowrie** — Operations and finance director.
He cares about: invoice clarity, cash flow enforcement, resourcing visibility, what this costs to build and what it delivers. He is the financial gatekeeper of the partnership. The ROI has to land with him — not as a vague promise but as a specific number against a specific problem (the 4-senior, 1-hour weekly finance meeting × 52 weeks × their day rates = a real number).
Watch for: risk aversion on the migration decisions (CMap, Pipedrive). He may want to slow down. Frame migrations as a Phase 2 decision — not today's problem.

**Danny Ivatt** — Enterprise software architect. 20 years in tech, specialist in data and AI at scale.
He cares about: structured data layer, not building on sand, MCP governance, blast radius of autonomous agents, system resilience. His core contribution to this project is the Supabase middle layer and the discipline of structured schemas. He will interrogate Diagram 3 (Technical Design). Let him. Don't defend — facilitate.
Watch for: scope expansion into enterprise-grade infrastructure that isn't needed for Phase 1. Danny's instinct is to build it right from the start (correct). Your instinct is to ship the first slice fast (also correct). Both are right — the resolution is "target architecture in place, first slice executed."

**You (Felipe / Molior)** — AI architect, AEC industry expert, builder, and facilitator.
Your job in this room: prove you can build, not just audit. Come with the documents and diagrams. Show the Supabase schema. Know the sprint breakdown. When Danny asks a technical question, answer it specifically. When Oliver goes broad, anchor to the workflow. When John asks about cost, have a range.
What you want to walk out with: a three-way co-founder agreement in principle (or at minimum, a clear next step toward one), and your name on the first sprint.

---

## Agenda — How to Sequence It

### Opening (10 min)
Brief, no formalities. One sentence on why you're here:
> *"We've done the audit, we know the workflow, we know the architecture. Today we agree what we're building, how, and together."*

Show Diagram 1 (Vision). Don't narrate it — let them read it. Then ask: *"Is this the problem we're solving?"* Get Oliver and John to confirm. Move on.

### Section 1 — Vision Alignment (15 min)
Walk Diagram 1 briefly. The pain column → the system spine → the done column.

One number to land with John:
> *"4–5 senior person-days per bid × 2–4 bids per month = up to 20 director-days per month on a process that can be systematised."*

One sentence to land with Oliver:
> *"Phase 1 ends when: director opens the tool, 90 minutes later the proposal is sent and the project is seeded in Notion."*

One sentence to land with Danny:
> *"The scope is narrow and the architecture is real. Let's agree it today."*

Transition: *"Let's walk the workflow so everyone is on the same page before we get into the build."*

### Section 2 — Workflow Walk (25 min)
Show Diagram 2. Walk phase by phase. At each phase:
1. State the trigger and the output (you)
2. Ask Oliver: *"Is this right? What's missing?"*
3. Note corrections in real time

Critical moments to watch:
- **Phase 3 (Programme + Fee):** Oliver will want to talk about CMap actuals. Agree: Phase 1 stretch goal — if CMap CSV is available, we load it. If not, Phase 2. Don't let this become a blocker.
- **Phase 4 (Scope Definition):** This is the highest-leverage step. Spend time here. Ask Oliver specifically: *"What are the 5 most commonly forgotten exclusions?"* Write them down — they become the default bespoke exclusions in the tool.
- **Phase 5 sign-off paths:** Confirm Path A/B/C thresholds with John. He will know if the numbers are right.

Transition: *"The workflow is agreed. Now let's look at what the system needs to do at each step — and then what we need to build."*

### Section 3 — Technical Design (20 min)
Show Diagram 3. Introduce it to the room:
> *"This is the same workflow, but with the technical layers shown for each phase. Danny — this is yours. Tell us what's right, what's missing, and what's a risk."*

Then step back. Let Danny run. Your job: take notes, ask clarifying questions, flag where your current thinking differs.

Expected Danny contributions:
- Pushback or refinement on the Intelligence Layer (Row 4) — specifically the planning context agent reliability
- Questions on the Supabase schema for ScopeRecord (immutability, versioning)
- MCP gateway timing — when does it become necessary?
- The CMap ETL: does it need to be a scheduled pipeline or can it be manual for Phase 1?

For each of Danny's points: note it, categorise as (a) changes the architecture, (b) changes the sprint order, or (c) adds to the backlog but doesn't block Phase 1.

Transition: *"Good. Let's look at the full capability architecture and then we build the backlog together."*

### Section 4 — Architecture + Backlog (30 min)
Show Diagram 4. Walk the seven layers, 30 seconds each. Then stop at Layer 5 (Data) and make the distinction explicit:
> *"Notion is where the firm works. Supabase is where the agents think. These are two different things and they serve two different masters."*

Key decisions to drive in this section:

**Decision 1: Rebuild or reengineer Oliver's prototype?**
*Recommended: Rebuild.* The prototype is a workflow reference, not a code base. Frame it as: "Oliver, your prototype is the spec — we extract every rule from it and build it correctly. Nothing is lost."

**Decision 2: CMap → Notion migration — commit or defer?**
*Recommended: Commit to migration, execute in Phase 2.* Start the data mapping now so Phase 2 isn't delayed by migration planning. John's call — he controls the financial system.

**Decision 3: Pipedrive → Notion CRM — same question.**
*Recommended: Import Pipedrive clients to Notion in Sprint 0. New leads enter Notion directly. Full migration when Phase 1 is live.*

**Decision 4: First sprint — what, who, when?**
Sprint 0 is foundation: Supabase setup, Notion databases, scope templates extracted from Oliver's prototype, Pipedrive client import, static data loaded (Fees Bureau rates). This is the lowest-risk sprint and can start immediately.

Once Diagram 4 is walked and decisions are noted, open the backlog:
> *"Let's go task by task through Sprint 0 and Sprint 1. Who owns what?"*

Build the list. Assign owners. Set a date for Sprint 0 completion.

### Section 5 — Partnership Structure (15 min)
This section must happen. Do not let it get pushed to "a follow-up."

Frame it clearly:
> *"Before we leave, we need to agree in principle how this collaboration is structured. We're three people building a product together — Oliver brings the domain and the use case, Danny brings the enterprise architecture, I bring the AI vision and the build. That's a co-founding structure, not a client engagement. Let's agree that today so we know what we're doing when we start Sprint 0."*

The three questions to answer:
1. **What is each person contributing?** (Time, capital, IP, distribution)
2. **What does each person get?** (Equity split, revenue share, or hybrid)
3. **When do we formalise?** (MOU before Sprint 0 starts)

Your position going in:
- You are a builder and a technical co-founder — not a forward-deployed contractor
- You will contribute the AI architecture, the build, and the AEC industry expertise
- You want equity in the product, not just a day rate
- You are open to doing forward deployment at the start (proves the model, generates revenue) but it is not the end state — the end state is you as a partner in the product company
- You need this formalized before significant build work begins

If it's not possible to finalize in the room: agree the three questions above in principle and set a date (within one week) for a 30-minute call with just Oliver to settle the structure.

---

## Decisions Tracker — Take This Into The Room

Print or open this and check each one off during Section 4 / Section 5.

| # | Decision | Options | Who decides | Status |
|---|---|---|---|---|
| D1 | Rebuild or reengineer Oliver's prototype? | Rebuild / Reengineer | Oliver + Danny | ☐ |
| D2 | CMap → Notion migration: commit? | Commit Phase 2 / Defer | John | ☐ |
| D3 | Pipedrive → Notion CRM: when? | Sprint 0 import / Keep Pipedrive | Oliver + John | ☐ |
| D4 | CMap ETL for Phase 1: scheduled pipeline or manual? | Scheduled / Manual first | Danny + Felipe | ☐ |
| D5 | MCP gateway: Phase 1 or Phase 2? | Phase 2 / Earlier | Danny | ☐ |
| D6 | Sprint 0 start date | Date to agree | All | ☐ |
| D7 | Sprint 0 owner per task | Split across Danny / Felipe | All | ☐ |
| D8 | Partnership structure: principle agreed? | Three-way co-founder / Other | Oliver + Danny + Felipe | ☐ |
| D9 | Partnership formalisation: MOU by when? | Before Sprint 0 / Other date | Oliver + Danny + Felipe | ☐ |

---

## If The Meeting Goes Off Track

**If Oliver goes broad (talks about Phase 3, forward deployment, fundraising):**
> *"That's the end state and it's the right one. Let's lock Phase 1 so we have something to sell with. What do we need to decide in the next 10 minutes to start Sprint 0?"*

**If Danny expands the architecture beyond Phase 1:**
> *"Noted — that's a Phase 2 consideration. Does it change any Phase 1 decisions? If not, let's park it in the backlog and move on."*

**If John raises cost concerns about the build:**
> *"The Phase 1 build is a three-person collaboration. The cost is time, not infrastructure — Vercel and Supabase are both free tier for Phase 1. The question is whose time and on what terms — which is what we're about to agree."*

**If the partnership conversation gets avoided:**
Name it directly: *"I want to make sure we don't leave without agreeing the partnership structure. Can we take 15 minutes at the end?"* Do not let it be deferred again.

---

## What You Need From This Workshop

Minimum viable outcome:
- [ ] Workflow agreed and corrected (Oliver's corrections noted)
- [ ] Architecture decisions D1–D7 made
- [ ] Sprint 0 scoped with owners and start date
- [ ] Partnership in principle agreed (D8) with formalisation timeline (D9)

Ideal outcome:
- All of the above, plus Oliver's top 5 forgotten exclusions captured, plus a draft MOU term sheet initiated within the week.

If you get the minimum, the workshop was a success. If you get the ideal, you're building.

---

## Numbers to Know Cold

Have these in your head before walking in — John and Danny will test them.

| Fact | Number |
|---|---|
| Senior person-days per bid (Tier 2) | 4–5 days (Oliver 2, Wayne 2, Andrew 1) |
| Bids per month (Tier 2) | 2–4 |
| Director day rate | £960 |
| Scope creep frequency | >50% of projects |
| Weekly finance meeting cost (4 people × 1 hr × 52 weeks × approx. blended rate) | ~£25–30k/year in senior time |
| CMap API status | Unstable, not on their plan — daily CSV workaround |
| HRB threshold | Residential >18m or 7+ storeys |
| Service level fee multipliers | Bronze ×0.85 / Silver ×1.0 / Gold ×1.20 |
| Phase 1 infrastructure cost | £0 (Vercel free, Supabase free tier for Phase 1) |
| RICS Fees Bureau: residential fee at £5M CV | 6.0% |

---

*Companion documents: Fee Proposal Workflow · AIOS Architecture Overview · Workshop Diagrams Spec*
