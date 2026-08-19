---
archive: true
archived: 2026-06-02
project: Audit
interviews: [Leadership, Biyi, Alahni, Wayne, Joe, Danny]
title: "AL Audit — Interview Guide"
client: Ackroyd-Lowrie
type: interview-guide
date: 2026-05-05
---

# AL Interview Guide — Audit Delivery

> **Purpose:** Live reference for every audit interview. Every question maps to a deliverable section. Every section maps to an interview. Nothing is surface-level.
> **Methodology:** [[AUDIT]] · **Deliverable spec:** [[AUDIT-DELIVERABLE]] · **Schedule:** [[AL-Audit-Interviews]]

---

## Interview Strategy

### The Depth Mandate

We already know a lot about Ackroyd Lowrie from two calls (discovery 04-24, close 04-29) and extensive public research. These interviews are not about confirming what we know. They exist to extract the **operational detail** that populates the audit deliverable — hours, workflows, knowledge gaps, tool friction, quantified costs.

**Rules:**
1. Never re-ask what we learned in discovery/closing calls (marked per interview below)
2. Every question must feed a specific deliverable section (tagged `[§N]`)
3. Quantify everything — "how long?" and "how often?" follow every workflow question
4. Listen for the gap between leadership's perception and the team's reality — that gap IS the audit insight

### What We Already Know (Firm-Wide — Do Not Re-Ask)

- Firm size: ~25 people. Founded 2016. London E2.
- Core sectors: residential, commercial, educational, masterplanning, retrofit
- Oliver built a fee proposal tool solo last weekend — runs on his memory, no institutional deployment
- Biyi built an ArchiCAD-to-Claude MCP integration in 3 days — live but no deployment plan
- Jon coined "hive brain" — AI absorbing company knowledge to produce documents
- Both founders: "AI for admin, human for design"
- Data fragmented across: CRM (unnamed), CMap (finance/timesheets/billing), server (3D models/policy docs), Archicad (BIM), email, JumpCloud
- GDPR is a live concern — Pinsent Masons advising in parallel
- Oliver: "if insurance is your only moat, our days are numbered"
- Danny (external advisor, mountup.ai) independently arrived at output→outcome mapping
- Internal AI hackathon was run (tracks: planning/bids, technical, operations)
- VR sign-off on every project (Innovation Prize)
- iPad-first practice, BIM-driven

---

## Deliverable ↔ Interview Matrix

| Deliverable Section | What It Needs | Primary Interview | Secondary |
|---|---|---|---|
| **§2** Firm Context | Strategic priorities, growth plans, bandwidth trap, risk tolerance | Leadership | — |
| **§3** Knowledge Risk Matrix | Knowledge inventory, documentation levels, owner risk, Danger Zone assets | Leadership + All Team | — |
| **§4** Connectivity Matrix | Tool inventory, data locations, API/MCP readiness, integration effort | Biyi + Wayne/Joe | Leadership |
| **§5** Acquisition Engine | Lead → go/no-go → proposal → submission → win/loss workflow | Leadership + Joe | Wayne |
| **§5** Delivery Engine | Kickoff → design → coordination → CA → closeout workflow | Wayne + Joe | Biyi |
| **§5** Operations Engine | Finance/billing → doc management → reporting → HR/Academy | Wayne + Joe | Leadership |
| **§5** Opportunity Matrix | Friction points with hrs/wk, cost, AI opportunity, Impact × Effort | ALL | — |
| **§6** Build Plan calibration | Technical depth, current builds, priorities, governance | Biyi + Leadership | Danny |
| **§7** ROI Projection | Blended rate, hours per friction point, people affected, annual cost | Leadership (rates) + Team (hours) | — |
| **§8** Foundation Assessment | Context score evidence (1–5), Data score evidence (1–5) | ALL | — |

---

## Interview 1: Leadership — Jon Ackroyd + Oliver Lowrie

**Wed May 6 · 2:00–3:00 PM London · 60 min · [Google Meet](https://meet.google.com/asq-jafm-uuh)**

---

### Person Profiles

**Oliver Lowrie — Co-Founder & Director**
- Business strategist who happens to design buildings. Systems thinker, not design-first.
- 10 years at Architype (modular timber construction). Sheffield → Oxford Brookes (Distinction) → Westminster (Part 3, 2012).
- Hosts Urban Forecast Podcast (52+ episodes since 2019). BD columnist on sales strategy and fee models.
- Co-founded Breakfast Club Briefings (policy forums at MIPIM, Labour Conference). Co-Living Handbook author.
- Teaches sustainable design at Nottingham University. Artist — exhibited at Royal Academy.
- Recent LinkedIn: posted "Claude won't eat Revit in 2026" — understands AI complexity in BIM. Built a Figma plugin for AI-agent readiness auditing.
- Key projects: Camberwell Magistrates' Court retrofit (landmark — 4,593t CO₂ saved), Bermondsey Co-Living, Alva Coachworks, Highgate School (£24m).
- **Drives:** practice economics, operational leverage, structured sales, existential urgency about architects owning the AI layer.
- **Rapport opener:** Reference the BD column on fee strategy — "I read your piece on structured sales processes. The audit maps directly to that logic — the fee proposal workflow is one of the first things we'll map."

**Jon Ackroyd — Co-Founder & Managing Director**
- Measurement-first architect. Rigorous, systems-oriented, research-driven.
- Architype alum. City & Guilds in carpentry and joinery (2012) — deliberate epistemology: architects should understand how buildings are actually built.
- Led 3-year Innovate UK post-occupancy evaluation study: measured building quality, environmental performance, and user satisfaction in schools (Bessemer Grange, Staunton on Wye). Architype schools ranked amongst the best performers nationwide.
- RIBA London Awards 2014 judging panel (sustainability expert). RIBA Best Building Award 2014/15 (Robert FitzRoy Academy).
- Drives AL Academy — school-leavers to architects pipeline (NCC campuses, London South Bank University pathway, zero tuition, paid throughout, full RIBA registration by 25).
- Appeared on Coaches on the Couch podcast (2022): "As soon as you start to build a team, you realise the power of the team." Uses Step Up mentorship, 360s, external leadership coaches.
- Working with Pinsent Masons on AI data governance.
- **Drives:** measurement, accountability, knowledge transfer at scale, inclusive profession, craft.
- **Rapport opener:** Reference his POE research — "Your Innovate UK study on school buildings is exactly the measurement mindset we build into the AIOS — the system improves because it measures, not just because it runs."

### Opening

"Thanks for making time — both of you. Before we go into the questions, 

let me be clear about what this session is about. On our previous calls we've already covered the strategic picture of your stance on AI, I'm not going to re-ask any of that. 

What I need today is what's underneath all of it: the operational detail that actually informs the audit. Actual hours, actual workflows, where knowledge lives.

Because the audit deliverable is only as good as the specificity of what I walk out with, 

so for this session i would ask no averages, no polished versions. Be specific,
tell me how it actually works, not how it should work. 

Sound good?

### Questions

## **Block 1: Strategic Context [§2] — 10 min**


1. Where is the firm going in the next 12–24 months? New sectors, growth targets, hiring plans? `[§2]`
   - *Follow-up:* What would need to change operationally to support that growth? What's the single biggest operational bottleneck? `[§2 + §5]
   -    - *Quantify:* How many hours/week does that cost each of you?`

*"You're simultaneously running a podcast, co-chairing Breakfast Club, running the Academy. and some other projects"*

2. If all the admin work disappeared tomorrow, what would you spend your time building? `[§2 → §6 Phase 5]`


## **Block 2: Knowledge Landscape [§3] — 20 min**


*"You have Academy apprentices working in the office, which assumes 'the AL way' can be taught. I want to understand how much of that is written down versus demonstrated in person."*

7.  does the firm have written procedures for recurring processes — SOPs, onboarding new projects, submitting planning applications, running CA, issuing drawings? `[§3]`

8. how does a new hire learn "the AL way"? Is there a written manual? Mentorship? Shadow period? `[§3 + §6 Phase 1]

"what knowledge does a person hold that the firm hasn't captured yet?"*

9. If a senior project architect left tomorrow, what knowledge walks out the door? `[§3]`
    - *Follow-up:* Has that happened before? What broke?

*I need to understand what the firm has actually documented about itself."*

7.  Walk me through your firm identity documents — pitch decks, capability statements, project sheets. Where do they live? Who maintains them? How current are they? `[§3]`
   - *Follow-up:* If someone needed the latest version right now, where would they go?

> *If time:*

7. Standards and codes: how does the team access relevant building regulations, planning guidance, British Standards? Central library or per-person? `[§3]`

8. Subcontractor and consultant relationships: is there a maintained list with contact details, past project history, performance notes? Or does it live in project leads' heads? `[§3]`

## **Block 3: Tools & Data Architecture [§4] — 27 min**


13. From a general sense, Let's inventory every tool the practice uses. Start with project delivery, then finance, then comms. For each: who uses it, what data sits there? `[§4]`

14. How much institutional knowledge lives in email threads that isn't documented anywhere else? `[§3 + §4]`
    - *Follow-up:* When someone needs context on a past project decision, where do they look first — email, server, or someone's head?

> *If time:

15. The server: what's on it? How is it organized? Is there a naming convention? Can people find things 6 months after a project closes? `[§4]`

## **Block 4: Fee Proposal Workflow [§5 Acquisition] — 40 min**

*"Before we go deep on any one workflow — I want to map the whole picture first."*

 Walk me through the 3–4 main workflows that run this practice — how you win work, how you deliver it, how the firm runs itself. For each one, just give me the name and two sentences on how it works. We'll go deep on each after. `[§5]`

   *"For example: 'We have a proposal process that starts when a lead comes in, goes through a go/no-go, and ends with a submission.' That level — not the detail yet."*

   - *Listen for:* which engines they naturally describe — Acquisition (pitches, proposals, BD), Delivery (design, coordination, CA, site), Operations (finance, reporting, admin, Academy). Note any they skip entirely.
   - *Follow-up if needed:* What about [the engine they skipped]? How does that run?

*"Oliver, you've written a BD column that's literally about structuring the sales process. And as we have talked before, you have already built a tool to support proposals. I want to understand the human process that tool is trying to serve, what is it compensating for."*

9. walk me through a fee proposal end-to-end. Not the tool you built — the full human process from "we hear about an opportunity" to "proposal goes out the door." `[§5]`
    - Steps: how does an opportunity arrive? Who evaluates it?

19. Go/no-go decision: who makes it? What criteria? How long between "we heard about it" and "we're pursuing"? `[§5]`

> *If time:*

20. Information gathering: when assembling a proposal, where do you pull project history, comparable fees, team availability, relevant past work? How many sources do you touch? `[§5]`

21. Who writes the proposal narrative? How long does a typical proposal take start to finish? What's the review cycle? `[§5]`
    - *Quantify:* hours per proposal × proposals per month

22. Win/loss tracking: do you track outcomes? Is there a feedback loop after you win or lose? `[§5]`
    - *Quantify:* What's the rough win rate? How many proposals go out per month?

23. *Quantify:* Across the practice, how many total hours/week go into BD and proposals? `[§5 + §7]`
## **Block 5: ROI Calibration [§7] — 48 min**

30. **Critical for all ROI calculations:** What's the firm's blended hourly rate? `[§7]`

> *If time:*  

31. Walk me through last week — where did the hours actually go? `[§5]`
    - *Listen for:* time spent on status updates, reporting, coordination meetings, chasing information

32. What does a typical Monday morning look like for each of you? `[§5]`

33. What reporting or status updates do you produce manually — for clients, for the team, for yourselves? `[§5]`
    - *Quantify:* hours/week on reporting 

34. Urban Forecast, Breakfast Club, BD column, Co-Living Handbook, BESA partnership — who handles the operational side of all this? `[§5 Operations Engine]`
    - *Quantify:* hours/week on content and event operations across the practice

Generatig leads. 
FInance assembly


## **Block 6: Close — 5 min**

31. What would make this audit worth 10x the fee to you?

32. What am I not seeing about the practice that I should be asking about?
  
33. Can you send the output mapping wall photo before our next session? That's free discovery data.

---

## Interview 2: Biyi Sogbesan — Technical

**Wed May 6 · 3:00–3:45 PM London · 45 min · [Google Meet](https://meet.google.com/kru-afsw-gjr)**

---

### Person Profile

**Olubiyi Oluwatosin Sogbesan — Architectural Designer & Internal AI Champion**
- Bartlett School of Architecture (UCL), completed Year 4 in 2022. Unit PG18 "Rites of Passage" — digital interfaces and social tensions in architectural form.
- Thesis: earth-based additive manufacturing / 3D printing for resilient, equitable communities. User-driven personalization of dwellings. Blends sustainability, fabrication tech, and social equity.
- Master's thesis involved neural networks + GANs applied to architecture.
- Built ArchiCAD-to-Claude MCP integration in 3 days (confirmed discovery call 04-24). Led internal AI hackathon / platform development.
- Portfolio: Issuu (2021, updated 2023). Active on X (@biyialo).
- **Drives:** intersection of digital fabrication + sustainability + AI. Ships working code, not just concepts.
- **Treat as peer.** Win Biyi. He's the internal champion post-audit — the person who makes the AIOS actually run day-to-day.
- **Rapport opener:** "Your Bartlett work on additive manufacturing and your MCP build sit on the same continuum — computational tools that serve design outcomes. I want to understand the MCP in depth so the audit builds on what you've already proven, not around it."

### What We Already Know (Do Not Re-Ask)

- Built BIM-to-Claude MCP in 3 days
- Tracks MCPs independently
- Access control concern (raised 04-24 — sub-brain answer given)
- He's the internal AI driver

### Opening

"Biyi — I want to be direct about what I think your role in this engagement actually is. 

You're not just an interviewee. You're the person who, after the audit deliverable lands, has to make this system actually run at AL. 

The AIOS only works if the internal champion understands it deeply enough to maintain it, extend it, and explain it to the team when things break.

So this session isn't me extracting information from you — it's me building your model of the system. I'm going to ask you to go deep on what you've built, what you've seen. 

Push back where my framing is wrong. If you think I'm asking the wrong question, tell me what the right one is. 

### Questions

## **Block 1: Current Builds — Show and Tell [§4 + §8] — 15 min**

2. The ArchiCAD MCP — deep dive: `[§4]`
   - What data does it expose? Read-only or read-write?
   - What queries can it handle today? (e.g., "list all doors on Level 2" — that level of specificity)
   - What model data goes beyond geometry? Schedules, specifications, cost data, zones?
   - What was the first wall you hit when trying to scale it?
   - Is anyone else using it, or is it just you?

2. What's your deployment plan for the CLI? What would need to happen for it to go from "Biyi's tool" to "the practice's tool"? `[§6 Phase 2 + 4]`

3. Walk me through every AI tool or integration you've built or tested at AL. Not just the ArchiCAD CLI — everything. connections to CMap, the file server, email, project management tools? . `[§4 + §8]`

4. What AI tools is the broader team using day-to-day — ChatGPT, Claude, Copilot, Midjourney, anything else? What for? `[§4 + §8]`
   - *Listen for:* ad-hoc usage vs. structured adoption. Ad-hoc = low Foundation Assessment score


> *If time:*


4. Data classification: have you thought about what data should and shouldn't flow through AI systems? Where do you draw the line? `[§6 Governance]`
   - *Listen for:* whether this aligns with or diverges from Jon's Pinsent Masons track
   - *Follow-up:* Beyond access control — what should the system record about its own actions? If an agent reads a contract or touches a project file, should there be a log of that stored outside the agent itself? `[§6 Governance]`

## **Block 2: Data Architecture [§4 Connectivity Matrix] — 27 min**

8. Draw me the data map. Where does project data live at each RIBA stage? Start from Stage 0 and walk me through. `[§4]`
   - *Follow-up:* At which stage does information start fragmenting across tools?

9. When you need to answer a cross-system question — "what's the budget status of Project X and are we on schedule?" — how many tools do you have to touch? Walk me through the sequence. `[§4 + §5]`
   - *Quantify:* How long does that cross-system assembly take?
   - *Follow-up:* If CMap marks a project as 'active,' the server has a folder for it, and ArchiCAD has a model — are those always the same project? Does the practice have a shared definition of what a project, a document stage, or a client handoff means across systems, or does each tool use its own vocabulary? `[§4]`

> *If time:*

10. File server structure: is there a project template? Is it consistent across projects? Where does it break down? `[§4]`

11. Version control for drawings: is there a single source of truth, or do multiple versions circulate? How do you know which is current? `[§4 + §5 Delivery]`

## **Block 3: Delivery Engine [§5] — skip unless time**

> *If time:*

*"You're an architectural designer doing real delivery work, not just building tools in the background. I want your actual workflow — Stage 2 through Stage 4, as it actually runs."*

12. Walk me through a project from RIBA Stage 2 to Stage 4. What's the actual sequence of work you do? `[§5]`

13. Where do coordination bottlenecks happen? Engineers, consultants, client sign-offs — what slows things down? `[§5]`
    - *Quantify:* hours/week lost to coordination friction

14. RFIs during CA: how are they received, tracked, answered, and closed? `[§5]`

15. Drawing issue management: who controls the issue schedule? How are transmittals handled? `[§5]`

16. Quality review: is there a standard review process before drawings go out, or does it depend on the project lead? `[§5 + §3]`
    - *Quantify:* What's the most time-consuming non-design task in project delivery?

## **Block 4: Vision & Gaps [§6 Build Plan] — 37 min**

20. What would a "Business Brain" for AL look like to you — if you could design the ideal system? `[§6]`
    - *Listen for:* his mental model. Does it align with AIOS layers? Where does it diverge?

17. If you had unlimited time and system access, what would you build next? `[§6]`
    - *Follow-up:* Is the goal to make those tasks faster for the team, or to remove the human step entirely? Where does AL draw that line?

18. What's the single biggest blocker to scaling what you've prototyped into something the whole practice runs on? `[§6]`
    - *Listen for:* technical barriers vs. cultural barriers vs. knowledge barriers

> *If time:*

19. Where does institutional knowledge get lost between projects at AL? `[§3]`

---

## Interview 3: Alahni Brown — Delivery Ground Level

**Thu May 7 · 11:15 AM–12:00 PM Chicago / 5:15–6:00 PM London · 45 min · [Google Meet](https://meet.google.com/ywh-cxts-smd)**

---

### Person Profile

**Alahni Brown — Part 2 Architectural Assistant**
- University of Queensland (Australia). 3+ years of experience across Australia and UK.
- Works on commercial and education projects at AL — likely spanning RIBA Stages 1–5: design development, technical documentation, drawing production, consultant coordination.
- Part 2 AA = post-graduate, pre-registration. Not a junior — 3+ years means she runs real delivery work. But not yet responsible for setting standards — she works *within* them.
- **She is the most important ground-level voice in this audit.** Leadership sees intent; Biyi sees the technical layer; Wayne sets standards. Alahni is the person who lives inside the actual workflow every day — where the friction is worst, where knowledge is hardest to find, where time actually goes.
- Her Australian practice background gives her an implicit comparison point: what does AL do differently from what she was used to? That gap often reveals firm-specific friction that insiders have stopped noticing.
- **Rapport opener:** "You've worked across two countries' practice cultures — Australia and the UK. That gives you a comparison most people on the team don't have. I want to use that: what do you notice AL does differently from what you were used to, good or bad?"

### What We Already Know (Do Not Re-Ask)

- She is on commercial and education projects
- She is not Biyi — no known AI builds or tool prototypes
- Her interview was scheduled same-day (Wayne cancelled; office sent her as replacement)

### Opening

"Alahni — thanks for jumping in on short notice.

 So let me give you 60 seconds of context before we start. Ackroyd Lowrie has engaged Molior to run an AI strategy audit — the output is a full map of where the firm's knowledge lives, where the operational friction sits, and a concrete build plan for an AI operating system that makes the practice run better. 

 I want to undertand what it actually feels like to be inside the work every day — where your time actually goes, where you hit walls, where you have to go hunting for things that should just be there.

That ground-level view is what populates the most important section of this audit deliverable. So nothing polished. I want the honest version of how a day or a week actually runs for you — not how it's supposed to run.

Sound good?"

### Questions

# **Block 1: Your Role & Projects [§5] — 7 min**

1. What are you working on right now? What RIBA stage, what project type? `[§5]`
   - *Follow-up:* What does your typical day actually look like? Walk me through yesterday if you can.
   - *Quantify:* rough split — design/creative work vs. documentation vs. coordination vs. admin

2. What tasks consume the most non-design time in your week? `[§5]`
   - *Quantify:* hours/week on each category
   - *Listen for:* repetitive tasks that follow the same pattern every time — those are the Opportunity Matrix rows

## **Block 2: Knowledge Access — Where Do You Look? [§3] — 15 min**

*"I want to understand how information flows to you — not how it's supposed to flow, but how it actually does."*

3. When you need to figure out how AL does something — a drawing convention, a spec approach, how a planning application is structured — where do you look first? `[§3]`
   - *Listen for:* "I ask [person]" = tribal knowledge dependency / single point of failure
   - *Follow-up:* Is there a written reference? A manual, a past project, a shared folder? Or do you mainly ask someone?

4. When you need context on a past project — a decision that was made, a precedent, a detail that was resolved — where do you go? `[§3 + §4]`
   - *Quantify:* how long does that search take? How often does it fail — you can't find it, or the person isn't available?

5. Has there been a moment where you needed to know something and couldn't find it — and had to make a judgment call or redo work? `[§3]`
   - *Listen for:* this is a quality risk + knowledge risk signal

> *If time:*

6. You've worked in Australian practice before AL. Is there anything AL does differently — in terms of documentation, process, how information is organized — that surprised you, positively or negatively? `[§3 + §5]`
   - *Listen for:* the comparison reveals blind spots the team has normalized

## **Block 3: Drawing Production & Coordination [§5] — 12 min**

*"I want to understand the actual mechanics of how drawings get made and issued."*

7. Walk me through the process from "I'm producing drawings" to "they're issued." What's the review and sign-off process? Who's involved? `[§5]`
   - *Quantify:* how long from "ready for review" to "issued"? How often does that cycle happen on your current project?

8. Consultant coordination — engineers, façade consultants, whoever you're working with. How does that actually work? Meetings? Email chains? Shared models? `[§5]`
   - *Quantify:* hours/week chasing information from consultants or waiting on responses

9. When there's a discrepancy between disciplines — your drawing says one thing, the structural engineer's says another — how is that tracked and resolved? `[§5]`
   - *Listen for:* email-only tracking = quality risk

> *If time:*

10. Version control: when a drawing set updates, how do you know what's current? Is there a single source of truth, or do multiple versions circulate? `[§4 + §5]`

## **Block 4: Tools & Friction [§4 + §5] — 8 min**

11. What tools do you use every day? For each: what works, what's painful, what do you wish it did differently? `[§4]`
    - *Listen for:* ArchiCAD friction, file server findability, email overload, CMap confusion

12. File server — when you need to find something from a past project, can you find it? How? `[§4]`
    - *Quantify:* how long does it take? How often do you fail to find what you need?

> *If time:*

13. Where do you lose time to tasks that feel like they should be faster or automated? `[§5 + §7]`
    - *Quantify:* hours/week, frequency

## **Block 5: Close — 3 min**

14. If one thing about how information is organized or shared at AL could change tomorrow — what would make the biggest difference to your day? `[§3 + §5 → §6]`

15. What am I not seeing about what it's like to work here that I should be asking about?

---

## Interview 3b: Wayne McKiernan — Delivery & Technical Operations

**⚠️ Wayne cancelled Thu May 7 — Alahni Brown substituted. Wayne to be rescheduled.**

**Original slot: Thu May 7 · 3:30–4:15 PM London · [Google Meet](https://meet.google.com/pxv-ezqw-dew)**

---

### Person Profile

**Wayne McKiernan — Technical Director**
- Architectural Association (AA) graduate. RIBA Principal Designer registered.
- ~10 years at KPF London. Then Director-level at PLP Architecture — led building envelope on Francis Crick Institute (King's Cross) and Sky Central (Sky HQ, offsite/prefab envelope). Zak World of Façades conference speaker.
- Building envelope and facade specialist. Deep delivery experience on complex, large-scale projects.
- **This is a senior architect with significant technical management experience, not a junior operations person.** Adjust the interview accordingly — he thinks at the systems level of project delivery and technical standards.
- **What we know:** Very little. Wayne was not on either prior call. His role as Technical Director means he's the bridge between design intent and built outcome.
- **Rapport opener:** "Your work on the Francis Crick envelope and Sky Central — those are projects where technical delivery and design quality can't be separated. That's exactly the kind of workflow complexity I want to understand for the audit."

### Opening

"Wayne — thanks for making time. You weren't on the earlier calls, so let me give you 60 seconds of context before we start. Ackroyd Lowrie has engaged Molior to run an AI strategy audit — the output is a full map of where the firm's knowledge lives, where the operational friction sits, and a concrete build plan for an AI operating system that makes the practice run better. I've spoken with Oliver and Jon about the strategic picture. What I don't have yet is the delivery layer — how work actually moves from design intent through coordination to site. That's your territory. Your career on projects like the Crick and Sky Central means you understand what it takes for technical delivery to actually hold together at scale. I want that same standard of rigor applied to what happens at AL day-to-day. There's a framing from a thread Oliver shared that I've found useful for this conversation: a 'living project context architecture' in four tiers — domain standards at the base, then company ways of working, then project-level data, then an action ledger that captures what has actually happened. Today I want to understand which of those tiers AL actually has in place, and which are gaps. Nothing's off the record. I want the honest version — where things work well and where they don't."

### Questions

**Block 1: Day-to-Day Reality [§5 + §3] — 12 min**

1. Walk me through your typical week. What takes the most time outside of design work? `[§5]`
   - *Quantify:* rough split — design vs. coordination vs. review vs. admin (as percentage)

3. How do you manage technical standards across multiple projects running in parallel? Is there a practice standard, or does each project lead set their own approach? `[§3 + §5]`
   - *Listen for:* "we should have a practice manual but we don't" = Context Layer priority

> *If time:*

2. As Technical Director, what's your role in project delivery? QA? Technical standards? Coordination? Sign-off? `[§5 Delivery]`
   - *Follow-up:* How many projects are you involved with simultaneously?

4. Building regulations compliance: how is this tracked per project? Checklist? Spreadsheet? Per-person knowledge? `[§3 + §5]`

5. Specification writing: who does it, how consistent is it across projects, and where do specs live? `[§3 + §5]`
   - *Follow-up:* Could a new team member find and use a past project's spec as a starting point?
   - *Quantify:* hours per project on specification work

**Block 2: Project Delivery Workflow [§5] — skip unless time**

> *If time:*

6. When a new project kicks off, what's the setup process? Is there a standard project folder structure, team briefing template, kickoff checklist? `[§5 + §3]`
   - *Listen for:* "everyone does it differently" = friction point + knowledge risk

7. Design reviews: how do they work? Frequency, who attends, how are decisions documented? `[§5]`
   - *Follow-up:* Can someone who missed the review find out what was decided?

8. Consultant coordination: how do you manage the multi-disciplinary team? Regular meetings? Shared models? Email chains? `[§5]`
   - *Quantify:* hours/week on coordination with external consultants

9. Drawing production: what's the review and sign-off process before a set is issued? `[§5]`
   - *Quantify:* how long from "drawings ready for review" to "issued"?

10. Construction administration: how are site queries, RFIs, and variations tracked? `[§5]`
    - *Listen for:* email-based tracking = friction + quality risk

**Block 3: Knowledge Management [§3] — 15 min**

11. Project close-out: what happens to project knowledge when a project finishes? Is there a lessons-learned process? `[§3]`
    - *Follow-up:* If you wanted to learn from a project that closed 2 years ago, where would you look?

14. If you had to hand over a project mid-stream to another architect, how long would it take them to get up to speed? What would they struggle with? `[§3]`
    - *Listen for:* "the context is mostly in my head" = Danger Zone

> *If time:*

12. Does AL have a practice technical manual or design guide? Or do people reference their own experience and past projects? `[§3]`
    - *Follow-up:* If you can't personally review a drawing before it goes out — how does the issuing architect know it meets AL's technical standard? Is there a reference they can check, or is quality judgment still mostly person-carried? `[§3 + §5]`

13. How do new team members — especially AL Academy apprentices — learn AL's technical standards? Is there a structured process? `[§3 + §6 Phase 1]`
    - *Quantify:* how long until a new person is productive without constant oversight?

**Block 4: Tools & Friction [§5 + §7] — 10 min**

16. Where do you lose time to manual processes that feel like they should be automated or at least streamlined? `[§5]`
    - *Quantify:* hours/week on each

19. Single biggest time sink in your week that follows the same pattern every time? `[§5 + §7]`
    - *Quantify:* hours/week, people affected

> *If time:*

15. Which tools do you use daily? For each: what works, what doesn't, what do you wish it did? `[§4]`

17. Reporting: what reports do you produce? For whom (leadership, clients, consultants)? How long do they take? `[§5 + §7]`
    - *Follow-up:* How much of that reporting is assembling information from multiple sources?

18. Quality assurance: is there a systematic QA process before drawings are issued, or is it ad-hoc? `[§5]`
    - *Listen for:* "it depends on who's leading the project" = quality risk tag

---

## Interview 4: Joe Maguire — Project Delivery & AL Academy

**Fri May 8 · 2:00–2:45 PM London · 45 min · [Google Meet](https://meet.google.com/thz-gqnk-ixc)**
**Status: ⏳ Pending confirmation**

---

### Person Profile

**Joe Maguire — Project Architect & AL Academy Lead**
- MArch from Manchester School of Architecture (2020).
- Thesis: "The growing issue of personal data intrusion and how that could impact the built environment" — explored surveillance capitalism (Zuboff), digital borders, data privacy. Multi-studio project examining how data interactions shape the physical environment.
- Project Architect on Ariel Hotel at Heathrow (retrofit). Portfolio includes large-scale mixed-use high-rise and intimate custom residential.
- Leads the AL Academy programme: school outreach to 14–16 year olds at NCC campuses (5 London/Essex locations), supervises 16–18 year old apprentices in the office.
- **Bridges project delivery AND practice culture/education.** Unique vantage point — understands both the daily workflow friction AND the knowledge transfer challenge.
- His data privacy thesis is directly relevant to the GDPR/AI governance concerns Jon raised.
- **Rapport opener:** "Your thesis on data intrusion and the built environment is fascinating context for this conversation — you've thought about the boundary between helpful data use and overreach. We're going to touch on that today."

### Opening

"Joe — nice to meet you, thanks for making time.

So let me give you 60 seconds of context before we start. Ackroyd Lowrie has engaged Molior to run an AI strategy audit — the purpose is to map the firm's knowledge and find the operational friction. so that we can build plan for an AI operating system that makes the practice run better. 
  
Based on our research, i understand that you're running live delivery on complex projects and you also lead the AL Academy programme. 

That means you see both where the daily workflow actually breaks down, and where knowledge transfer fails between people. and that's exactly what this audit is trying to surface. 

We'll spend the first half on your delivery reality — actual hours, actual friction points, where time goes that shouldn't. The second half on how knowledge moves through the firm, especially to people coming up through the Academy."

### Questions

**Block 1: Project Delivery [§5] — 10 min**

1. Walk me through your current project(s). What RIBA stage? What does your daily workflow actually look like? `[§5]`
   - *Follow-up:* What's the ratio of design time to coordination/admin time?

2. As Project Architect, what tasks consume the most non-design hours? `[§5]`
   - *Quantify:* hours/week on each category (coordination, documentation, client comms, admin)

> *If time:*

3. Client communication: how do you manage client expectations, progress updates, sign-off cycles? `[§5]`
   - *Follow-up:* How much of that is manual email vs. structured process?

4. Project coordination: how do you track what's due, what's late, what's blocked across your projects? `[§5]`
   - *Listen for:* personal systems (spreadsheets, notes) vs. practice-wide systems

5. Drawing production and issue management: what's the process from draft to issued drawing? `[§5]`
   - *Quantify:* time per issue cycle, frequency of issues per project

**Block 2: Proposals & BD [§5 Acquisition] — skip unless time**

> *If time:*

6. Are you involved in BD or proposals? If so, what's your role? `[§5 Acquisition]`

7. When you write or contribute to a proposal, where do you get the information you need — past proposals, project data, comparable fees? `[§5 + §3]`
   - *Listen for:* "I ask Oliver" or "I dig through the server" = knowledge accessibility gap

8. How much proposal content is reusable vs. written from scratch each time? `[§5 + §3]`
   - *Quantify:* percentage reused vs. new per proposal

**Block 3: Knowledge Transfer & AL Academy [§3] — 18 min**

9. You lead the AL Academy. Walk me through how an apprentice learns "the AL way of working" — from day one to independently running tasks. `[§3]`
   - *Follow-up:* Is any of that written down, or is it all taught in person?

11. What knowledge do you wish was documented that currently isn't? `[§3]`
    - *Listen for:* this reveals the firm's actual Context Layer gaps from the practitioner's perspective

12. When an apprentice asks "how do we do X at AL?" — where do you point them? A document? A person? A past project? `[§3]`
    - *Listen for:* "I just show them" = tribal knowledge dependency

13. What's the single biggest challenge in transferring institutional knowledge to new people? `[§3 + §6 Phase 1]`
    - *Follow-up:* How long before a new person can work independently without constant oversight?
    - *Quantify:* onboarding time in weeks/months
    - *Follow-up:* How does an apprentice know their work meets AL's quality standard? Is there a reference they can check, or is the judgment entirely person-dependent — and what happens when that person isn't available? `[§3 + §6 Phase 1]`

> *If time:*

10. Is there a structured onboarding process? Written guides, checklists, mentorship pairs, shadow periods? `[§3]`

**Block 4: Tools & Friction [§4 + §5] — skip unless time**

> *If time:*

14. Which tools do you use daily? What's smooth and what's painful? `[§4]`

15. Document management: when you need to find past project information (a detail, a precedent, a decision), how do you find it? How long does it take? `[§4 + §3]`
    - *Quantify:* time per search, frequency

16. Where do you lose time to repetitive tasks that follow the same pattern every time? `[§5]`
    - *Quantify:* hours/week, what specifically

**Block 5: Data Privacy Perspective [§6 Governance] — 7 min**

17. Given your thesis work on data privacy and the built environment — how do you think about AI tools handling client project data? What concerns you? `[§6]`
    - *Follow-up:* What concerns have you heard from colleagues about AI and data?

> *If time:*

18. If the practice adopted an AI system that could access project files, financial data, and communications — what safeguards would you want to see? `[§6]`
    - *This gives us a team-level governance perspective that complements Jon's leadership-level Pinsent Masons view*

---
liver Lowrie — Solo Leadership Interview

**Fri May 8 · 9:45–10:30 AM Chicago / 3:45–4:30 PM London · 45 min**

---

## Interview Strategy

This interview exists because Jon and Oliver were supposed to do Leadership together — but Jon came alone. That's a gift: we got Jon's full operational picture (finance, cash flow, CMap, resourcing, policy rollout) and now we get Oliver undiluted on the areas Jon confirmed are Oliver's domain: marketing, BD, design process, and firm identity.

**Do NOT re-ask:**
- Growth strategy (consolidate, not grow headcount, AL Labs investment)
- Director bottleneck diagnosis (both too embedded)
- Policy/lessons-learned process, ISO 9001/14001, town hall rollout
- Tool inventory (CMap, Zero, Futrli, Pipe Drive, Ignite, JumpCloud, ArchiCAD, Adobe)
- CMap ↔ Pipe Drive disconnect, resourcing ↔ profitability gap
- Cash flow spreadsheet mechanics (Jon's domain)
- Board pack assembly process
- Meeting minutes fragmentation (Granola, Zoom, Google Meet, Otter)
- Onboarding/offboarding checklists
- "95% of work won by the two directors"

**Extract from Oliver:**
1. His personal week — where his hours actually go `[§5 + §7]`
2. The full Acquisition Engine — BD, marketing, proposals, win/loss `[§5]`
3. The fee proposal tool — what it does, what knowledge it encodes, what's missing `[§5 + §6]`
4. Design workflow — how design actually moves through the practice `[§5 Delivery]`
5. Content/events operations — podcast, Breakfast Club, BD column, LinkedIn `[§5 Operations]`
6. Blended hourly rate `[§7]`
7. Quantified hours on his key friction points `[§7]`
8. His AI system vision — what the "brain" looks like to him `[§6]`

---

### Person Profile

**Oliver Lowrie — Co-Founder & Director**
- Business strategist who designs buildings. Systems thinker, not design-first.
- 10 years at Architype (modular timber construction). Sheffield → Oxford Brookes (Distinction) → Westminster (Part 3, 2012).
- Hosts Urban Forecast Podcast (52+ episodes since 2019). BD columnist on sales strategy and fee models.
- Co-founded Breakfast Club Briefings (policy forums at MIPIM, Labour Conference). Co-Living Handbook author.
- Teaches sustainable design at Nottingham University. Artist — exhibited at Royal Academy.
- Recent LinkedIn: posted "Claude won't eat Revit in 2026." Built a Figma plugin for AI-agent readiness auditing. Built a fee proposal tool solo over a weekend.
- Key projects: Camberwell Magistrates' Court retrofit (4,593t CO₂ saved), Bermondsey Co-Living, Alva Coachworks, Highgate School (£24m).
- **Drives:** practice economics, operational leverage, structured sales, existential urgency about architects owning the AI layer.

---

### Opening

"Oliver — thanks for making time. So as you probably know, I had a really productive session with Jon yesterday. He walked me through the operations and finance side in depth — CMap, Zero, the cash flow model, the policies you've both built, resourcing. I have a strong picture of that layer now.

What I don't have is your layer — the parts Jon told me are your domain: how you win work, how you run the marketing engine, the design process itself. And I know you've already been building tools around this — the fee proposal tool, the Figma plugin.

So this session is the other half of the picture. How it actually works, where the hours actually go. Sound good?"

---

### Questions

## Block 1: Your Week — Where the Hours Go [§5 + §7] — 8 min

1. Walk me through your week. Outside of the overlap with Jon — the sales meeting, the board — what does a typical week look like for you? `[§5]`
   - *Quantify:* rough split — design vs. BD/marketing vs. client management vs. admin vs. content (podcast, column, events)
   - *Follow-up:* How many hours a week do you spend on things that aren't design and aren't winning new work — pure operational overhead?

2. What's the single task you do every week that you know shouldn't require a director's time but currently does? `[§5 + §7]`
   - *Quantify:* hours/week

## Block 2: Acquisition Engine — BD, Proposals, Win/Loss [§5] — 15 min

*"Jon showed me Pipe Drive and how deals flow through. . I want to understand the full human process behind that 

3. How does work actually arrive at AL? What are the channels — referrals, inbound, your network, Breakfast Club, podcast? Which channel produces the most work? `[§5 Acquisition]`
   - *Quantify:* rough percentage by channel

4. Walk me through a fee proposal end-to-end — the full human process. An opportunity arrives. What happens next? `[§5 Acquisition]`
   - Steps: who evaluates? Go/no-go — who decides, what criteria? Who gathers the information? Who writes the narrative? Who reviews?
   - *Quantify:* hours per proposal, proposals per month, win rate

5. The fee proposal tool you built over a weekend — walk me through what it does. `[§5 + §6]`
   - What inputs does it need? Where does it pull information from?
   - What knowledge is encoded in it — your personal experience, past project data, rate cards?
   - What does it produce? How close is the output to what actually gets sent?
   - *Key question:* If someone else on the team tried to use it today, could they? What would they be missing?
   - *Follow-up:* What's the gap between what the tool does and what the full proposal process requires?

> *If time:*

6. Win/loss tracking: after a proposal goes out, do you track what happens? Is there a feedback loop? `[§5]`
   - *Follow-up:* When you lose, do you know why? Is that captured anywhere?

## Block 3: Marketing & Content Operations [§5 Operations] — 8 min

*"Jon told me you handle most of the marketing side."*

7. Walk me through the marketing operation. For the podcast, the BD column, LinkedIn, Breakfast Club — who does what? How much of it is you personally vs. supported? `[§5 Operations]`
   - *Quantify:* hours/week across all content and marketing activities
   - *Follow-up:* What's the operational overhead — scheduling, editing, posting, coordination — vs. the creative work?

8. Do you track the impact of any of this? Jon mentioned wanting marketing analytics at the board level — website traffic, LinkedIn engagement, whether spending translates to leads. `[§5 + §7]`
   - *Listen for:* gut feel vs. data-driven decisions on marketing spend

> *If time:*

9. If the marketing operation could run without you for a month — what would break? What's the part only you can do? `[§5 + §3]`

## Block 4: Design Workflow [§5 Delivery] — 7 min

*"Jon covered the finance and operations side of project delivery in depth. What I'm missing is the design layer — how design actually moves through the practice."*

10. Walk me through a design review. From concept to developed design — how does work get reviewed, iterated, and signed off internally? `[§5 Delivery]`
    - *Follow-up:* How do you maintain design quality across multiple projects running in parallel when you and Jon can't be in every review?
    - *Quantify:* How many hours/week do you spend on design review across all projects?

11. When a project needs design direction and you're not available — what happens? Is there a design reference, a set of principles, past examples the team can check? Or does work wait? `[§3 + §5]`
    - *Listen for:* design judgment as tribal knowledge = Danger Zone in §3

## Block 5: System Vision & ROI Calibration [§6 + §7] — 7 min

I want to understand your mental model of what the system should look like."*

12. If you had the ideal system running in 12 months — what does your Monday morning look like? What information is just there that you currently have to assemble or chase? `[§6]`
    - *Listen for:* which engine matters most to Oliver — acquisition visibility, design quality oversight, or marketing ROI


13. **Critical:** What's the firm's blended hourly rate — the average across all staff? `[§7]`
    - *Follow-up:* What's the director charge-out rate vs. the team average?

---

## Close — 2 min

15. Jon told me the bottleneck is the two of you. If this audit delivers what it should — what's the first thing you stop doing personally?

16. What am I not seeing about the practice that I should be asking about?

---

## What This Interview Must Deliver

| Gap from Jon's Interview | Oliver Question | Deliverable |
|---|---|---|
| Oliver's week/hours | Q1–2 | §5 bandwidth map, §7 ROI |
| Acquisition Engine workflow | Q3–6 | §5 Acquisition Engine map |
| Fee proposal tool details | Q5 | §5 + §6 (current build, what it encodes) |
| Marketing operations | Q7–9 | §5 Operations Engine (content ops) |
| Design workflow | Q10–11 | §5 Delivery Engine (design layer) |
| Blended hourly rate | Q14 | §7 ROI calculation (critical input) |
| AI system vision | Q12 | §6 Build Plan calibration |
| Values/identity document | Q13 | §3 Knowledge Risk (firm identity assets) |


---

## Quantification Cheat Sheet

Use these across every interview to extract the numbers that populate §5 and §7:

| Prompt | What It Feeds |
|---|---|
| "How many hours a week does that take?" | §5 Opportunity Matrix (hrs/wk column) |
| "Across how many people?" | §7 ROI (multiplier) |
| "How often does that happen — weekly, per project, per stage?" | §5 frequency calibration |
| "If that process were instant, what would you do with the recovered time?" | §6 Phase 5 (where bandwidth goes) |
| "What's the cost when that goes wrong — rework, client friction, missed deadlines?" | §5 Quality Risk tag |
| "Rough percentage: design vs. coordination vs. admin?" | §5 bandwidth trap quantification |
| "What's the firm's blended hourly rate?" | §7 ROI (rate × hours × 52 = annual cost) |

---

## Exit Checklist — What We Must Leave With

By the end of all interviews, these must be captured. If a box is unchecked after the last interview, follow up.

### §3 Knowledge Risk Matrix
- [ ] Full inventory of knowledge assets: identity docs, project register, standards library, templates, SOPs, subcontractor history, past proposals
- [ ] Documentation level of each: documented / partial / tribal
- [ ] Owner risk: who holds each asset, single point of failure?
- [ ] AL Academy onboarding gaps (proxy for institutional knowledge health)

### §4 Connectivity Matrix
- [ ] Complete tool inventory: tool name, purpose, users, data type, export/API capability
- [ ] CMap deep dive: what it tracks, what it doesn't, API/export availability
- [ ] ArchiCAD data depth: beyond geometry — schedules, specs, cost data, zones
- [ ] Server structure: organization, naming conventions, findability
- [ ] Email as knowledge store: how much institutional knowledge lives only in inboxes

### §5 Workflow Maps + Opportunity Matrix
- [ ] Acquisition Engine: lead → go/no-go → proposal → submission → win/loss
- [ ] Delivery Engine: kickoff → design → coordination → CA → closeout
- [ ] Operations Engine: finance/billing → document management → reporting → HR/Academy
- [ ] Each friction point tagged with: hours/week, owner, Time Sink or Quality Risk
- [ ] **At least 20+ hrs/week identified** (guarantee threshold)

### §7 ROI Projection
- [ ] Blended hourly rate confirmed
- [ ] Hours per friction point per week (from all interviews)
- [ ] Number of people affected per friction point
- [ ] Annual cost formula: hrs/wk × rate × 52

### §8 Foundation Assessment
- [ ] Context score evidence (1–5): % of firm knowledge documented and retrievable
- [ ] Data score evidence (1–5): % of operational data in tools with MCP/API/file access
