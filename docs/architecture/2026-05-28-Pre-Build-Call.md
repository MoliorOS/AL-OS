---
archive: true
archived: 2026-06-02
attendees: [J. Felipe Molano, Oliver Lowrie, Danny Ivatt]
client: Ackroyd-Lowrie
title: "Pre-Call Brief — AL Pre-Build Technical Session"
type: pre-call-brief
date: 2026-05-28
project: Phase-1-Build
crm: https://www.notion.so/e7269d9d641782e6ad2e81ae95f933b2
---

# Pre-Build Brief — Danny Ivatt + Oliver Lowrie (AL Module 1)

> **This is not a sales call.** The audit is delivered. The AIOS architecture is agreed. This call is a technical pre-build session: align on Module 1 scope, understand Danny's role, and establish the build path for the Foundation + Fee Proposal workflow.

---

## TL;DR

Danny Ivatt has been in the Oliver + Jon + Felipe email chain since at least May 21 — he has already seen the diagnosis doc and has a formed view of how the system should be built. Oliver's words: *"He has some thoughts on the structure of the system we implement."* The calendar invite is named **"Felipe / Danny diagnostics"** — Oliver has positioned this as a joint technical session between Felipe and Danny, not a briefing. Danny is a product builder (20+ yrs, ex Mesh-AI Product Director) with his own AEC venture (mountup.ai — UK building compliance AI) and a declared commercial interest in the fee-proposal tool: *"Danny is interested in building this as a commercial product."* This creates alignment (he's deeply motivated) and a structural tension (AL's AIOS is Molior's engagement; commercialization is a separate conversation). Felipe's job: hold the technical lead, understand Danny's build POV before defending anything, and leave with agreed scope + role clarity before the June 2 commercial call with Jon.

---

## 1. The Context: Where We Are

| Milestone | Date | Status |
|---|---|---|
| Audit delivered (HTML report, 30 pages) | 2026-05-20 | ✅ Complete |
| Presentation call (Oliver + Jon) | 2026-05-22 | ✅ Delivered — Jon: "enjoyed it" |
| Jon OOO | 2026-05-23–2026-06-02 | Sam Carlisle covering day-to-day |
| Phase 2 commercial opener (Jon) | 2026-06-02 | Scheduled |
| **This call: technical pre-build** | **2026-05-28** | **Confirmed — Oliver + Danny** |

**Current decision on the table:** Oliver and Jon need to approve Module 1 — Foundation + Fee Proposal (£11,000) before the build starts. Jon is OOO. This call is technical, not commercial. The commercial close happens 2026-06-02.

**What this call is for:**
1. Understand Danny's background, capabilities, and intended role in the build
2. Align on Module 1 technical scope and architecture
3. Clarify ownership: who builds what, who owns what is built
4. Surface any commercial product ambitions early — don't let them ambush the engagement later
5. Leave Oliver with clarity on what happens between now and the June 2 commercial call

---

## 2. The Module 1 Build — What We're Talking About

The audit recommends a Foundation + Fee Proposal workflow as Module 1 (£11,000). This is the first build in a four-module AIOS.

### Foundation (prerequisite for all modules)
- AL's institutional knowledge ingested: ISO policies, QA procedures, ALAQEP series, fee structures, templates
- Tools connected: Xero, Google Workspace, Egnyte, Zoom, DocuSign (official MCPs — days to connect)
- Deep integrations: CMap (REST API, read confirmed), Pipedrive (REST API), ArchiCAD (productize Biyi's HTTP CLI)
- Memory layer live: decision logs, project records, institutional context queryable by all roles
- Interface: Claude Cowork — operated through Claude, not a new platform

### Module 1 — Fee Proposal Workflow (W01)
The workflow that burns 15–30 senior hours/week across 3 people, for work that hasn't earned a pound yet.

**The 10-step W01 workflow today:**
Lead context → site lookup → parameters → programme → fee calc → benchmark → scope + DRM → sign-off → proposal → handoff

**Where it breaks (from the audit):**
1. **Step 7 (Scope + DRM) runs on Oliver's memory** — 60+ scope items per stage, in Oliver's head. Scope creep on >50% of projects. Worst case: £100k fee → £200k spend.
2. **Benchmark is half-built** — checks against Fees Bureau rates but never against AL's own CMap actuals.
3. **Sign-off lands too late** — Wayne reviews finished doc at Step 5 instead of shaping scope at Step 7.
4. **Losses teach nothing** — dragged forward in Pipedrive, no loss-reason logged, win rate overstated.

**What the AIOS skill builds:**
- `/scope-draft`: pulls comparable AL projects from CMap, surfaces past scope decisions, generates inclusion/exclusion list by stage and tier (bronze/silver/gold), pre-fills DRM flags
- CMAP integration: past-project benchmarks populate automatically (Oliver's fee tool's critical missing feature)
- Pipedrive integration: bid context pre-populated, loss reasons captured in structured format
- Output: proposal doc in AL's format, scope locked before Wayne's review, sign-off at the right step

**Oliver's prototype (WorkflowMAXXER):** Already does some of this — pulls from Pipedrive, maps location, calculates fees vs Fees Bureau. Missing: CMap historical benchmark and scope automation. The AIOS Module 1 extends and systematizes what Oliver has started.

---

## 3. Danny Ivatt — Who He Is

### What we know [VERIFIED from primary sources]
| Dimension                        | Detail                                                | Source                                           |
| -------------------------------- | ----------------------------------------------------- | ------------------------------------------------ |
| Name                             | Danny Ivatt (Daniel Ivatt)                            | Email + LinkedIn [VERIFIED]                      |
| **Email**                        | **danny@mountup.ai**                                  | Email thread 2026-05-26 [VERIFIED]               |
| Current venture                  | mountup.ai — UK building compliance AI                | mountup.ai + email domain [VERIFIED]             |
| Background                       | Senior Data & AI Product Leader, ~20 years in tech    | AI for the Rest of Us speaker profile [VERIFIED] |
| Past roles                       | Product Director at Mesh-AI (1yr 8mo), advisory roles | LinkedIn [VERIFIED]                              |
| Notable clients (prior)          | Ford, London Stock Exchange, National Grid, DBS Bank  | AI for the Rest of Us [VERIFIED]                 |
| LinkedIn                         | https://uk.linkedin.com/in/dannyivatt                 | [VERIFIED]                                       |
| Twitter/X                        | @danielivatt                                          | [VERIFIED]                                       |
| In Oliver+Jon+Felipe chain since | **2026-05-21 at the latest** (WorkflowRecorder email) | Gmail [VERIFIED]                                 |

### MountUp.ai — Danny's Venture [VERIFIED]
| Dimension | Detail | Source |
|---|---|---|
| Product | AI-powered compliance intelligence for UK building industry | mountup.ai homepage [VERIFIED] |
| Target users | Principal Designers, Architects, PMs, Contractors | mountup.ai homepage [VERIFIED] |
| Coverage | Residential, commercial, mixed-use; building regs, approved documents, British Standards | mountup.ai homepage [VERIFIED] |
| Stage | Early access, active development (copyright 2026) | mountup.ai homepage [VERIFIED] |
| App | https://app.mountup.ai | [VERIFIED] |
| Founder identity | Not publicly listed on website | [UNVERIFIED — assume Danny is founder/team] |

### Full Email Thread History [VERIFIED from Gmail — 2026-04-29 to 2026-05-26]

**TIMELINE OF DANNY'S INVOLVEMENT:**

**April 29 — Engagement acceptance email (Oliver → Felipe, CC: Biyi, Ellen, Danny, Jon):**
> *"I've copied Ellen in to arrange a time for meetings with Jon and I plus Biyi next week, and **Danny Ivatt who will be (very lightly) involved from our side.**"*

- Danny was introduced on the day AL accepted the proposal — he is **AL's person**, not a contractor. "From our side" is explicit.
- "Very lightly" was the framing then. It has not stayed light.

**May 4 — "AEC data structure" thread (Oliver → all):**
Oliver shared a LinkedIn post about agentic AI and platformization in AEC. Danny's reply that evening:
> *"You can't just store everything and let AI access anything. Ontology = data structured to represent an area of knowledge or domain. This also needs to be two way. The instructions that AI agents follow, what they do, what they have accessed, what they are allowed to do and most importantly what they are not etc. That all needs capturing too and a decision made as to what you store (outside of the agent.) All fits in to that loosely defined box I stuck on your wall. Happily chat about any of this stuff when I am next in."*

**Critical signals from this email:**
- Danny has been physically present at AL's office — he stuck a box/concept diagram on the wall
- He understands ontology, access control, agent sandboxing, and data architecture at a high level
- He is already conceptualizing the system architecture, not just the product surface
- "when I am next in" — he visits AL regularly

**May 5 — "Egnyte connector for Claude" thread (Jon → Danny, Oliver, Roman Marszalek, Felipe):**

Jon raised a security question about the Egnyte MCP. This thread revealed **Roman Marszalek** — AL's existing IT support provider:
- Roman (roman@drlogic.com) is the owner/MD of **Dr Logic** — London's leading Apple Mac IT firm, 20+ years, ~$8M revenue, based in Holborn. AL's existing MSP.
- Roman's email gave measured, accurate security advice on MCP risks (hallucination with autonomy, connected systems exposure)
- Roman suggested looping in **"Shaun, our CTO"** — Dr Logic has a CTO being brought in
- Jon asked Roman to add Shaun to the thread

Danny's reply on the Egnyte thread was sophisticated:
> *"Just to expand on what Roman has said. This is a controls and permissions issue... AI can still do things at speed and scale that the permissions model wasn't designed for... If AI is being given access autonomously, it's another thing entirely. This is why AI agents are sandboxed (they live in their own little environment with carefully controlled access to the outside world.) This is the stuff that gets a bit spaghetti and meatballs at scale."*

**May 18 — Oliver adds Danny to "Follow up from call" thread:**
Oliver CC'd Danny when sharing the WorkflowMAXXER prototype link (fee proposal + tracker GitHub). Danny was being brought into the technical development loop directly.

**May 21 — "WorkflowRecorder" email (Oliver → Felipe + Danny + Jon):**
> *"https://irisgo.ai — I was just saying last week this should exist… and now it does"*
IrisGo: AI that watches how you work, learns your workflows, executes them autonomously.

**May 26 — "Intro" scheduling email + calendar invite:**
> *"He has some thoughts on the structure of the system we implement."*
- Calendar title: **"Felipe / Danny diagnostics"** — peer session, not briefing
- Attendees: Felipe + Danny + Oliver

**Danny's total written contribution to Felipe directly:** One line — "works for me, thanks." Everything else is internal AL group emails. He is deliberate about keeping his cards close until a synchronous conversation.

### His Declared Intent (from Oliver's May 8 audit interview)
> *"Any tool built for AO should be designed to sell to other architecture firms, as this is a universal pain point in the industry. Danny is interested in building this as a commercial product."*

**What this tells us:**
- Danny is not just a contractor — he sees commercial upside in what gets built here
- Oliver has discussed this with Danny before the audit was delivered; Danny is thinking beyond AL
- Danny's angle: AL as the proof-of-concept for a broader UK architecture SaaS play
- MountUp.ai (compliance) + fee-proposal tool = natural adjacent product suite for UK practices

### Angle to lean into on the call
Danny is a product person — 20 years shipping AI tools for large organisations. He speaks in user problems, product loops, and adoption. He has a formed view on the system architecture (Oliver said so). **Arrive ready to listen, not to present.** Ask him to walk you through his read of the diagnosis doc before defending the AIOS structure. He may see things in the audit that validate or challenge the build sequence — that intel is valuable for the June 2 commercial call.

---

## 4. Roman Marszalek + Dr Logic — The Hidden Player

Roman is **not on Thursday's call** but he is very much in the picture. Jon trusts him — he copied Roman alongside Danny and Felipe on the Egnyte security question on Day 2 of the audit. Roman is AL's established IT MSP and has a CTO (Shaun) being looped into the AI infrastructure conversation.

| Dimension | Detail | Source |
|---|---|---|
| Name | Roman Marszalek | LinkedIn + Gmail [VERIFIED] |
| Email | roman@drlogic.com | Gmail [VERIFIED] |
| Company | Dr Logic — London Apple Mac IT support + consultancy | drlogic.com [VERIFIED] |
| Founded | 2003 | Crunchbase [VERIFIED] |
| Scale | ~$8M revenue, Holborn London | RocketReach [VERIFIED] |
| Role with AL | Existing IT MSP — established relationship | Gmail [VERIFIED] |
| CTO | "Shaun" — being looped in for company-wide AI deployment | Gmail [VERIFIED] |

**What Roman's involvement means for Thursday:**
- AL has an existing IT partner who is already advising on AI infrastructure and security
- Roman gave accurate, well-framed advice on the Egnyte/MCP security risk — he is credible
- Jon explicitly trusts Roman enough to loop him into a strategic AI conversation
- If Molior's AIOS build requires IT infrastructure decisions (self-hosted, data isolation, JumpCloud permissions), Dr Logic is already the incumbent

**Risk:** If Danny's commercial product vision and Roman/Dr Logic's infrastructure role converge, the Molior AIOS engagement could get squeezed between the two. The question to clarify Thursday is whether the build goes through Molior's architecture or a hybrid that includes Dr Logic's infrastructure and Danny's product.

**The audit already addressed Roman's concerns:** §2.3 explicitly states the AIOS operates within AL's existing JumpCloud permissions, and agents are sandboxed — exactly what both Roman and Danny were worried about on May 5. Surface this Thursday if security/permissions comes up.

---

## 5. Oliver — Where He Is Heading Into This Call

Oliver has been building toward this for three years. He described the client onboarding/fee proposal problem as something he's been thinking about "since before knowing about AI." He has a working prototype (WorkflowMAXXER) that he is proud of. He ran 10% of his week experimenting with AI systems during the audit period.

**Oliver's mental state:**
- Enthusiastic — this is his project
- Jon is OOO; Oliver is carrying this forward solo until June 2
- Has probably discussed Module 1 scope and Danny's involvement with Danny already
- May have already sketched a technical architecture with Danny — arrive ready to listen first

**Oliver's prototype limitations (from audit):**
- Pulls from Pipedrive ✅
- Maps project location ✅
- Fee calc vs Fees Bureau ✅
- Auto-generates scope doc ✅
- Missing: CMap past-project benchmark ❌ (requires CMap API integration)
- Missing: Scope automation at Step 7 (requires AL's own scope logic to be captured and encoded) ❌

---

## 6. The Structural Tension — Commercial Product vs. Client AIOS

This is the most important thing to understand before the call.

**The tension:**
- Oliver + Danny want to build a tool that could be sold to all UK architecture firms
- Felipe's engagement is with AL specifically — the AIOS is Molior's IP + AL's IP together
- If the build produces commercial software, IP ownership, revenue sharing, and scope are undefined

**Why this matters now:**
- If Danny is building this as his product and AL is the first client, the engagement is different from a standard Molior build
- If Molior is the AIOS architect and Danny is a technical contractor for the AL build, that's a different arrangement
- If this becomes a three-way product partnership, that needs explicit agreement

**Felipe's position on this call:**
1. Don't raise the commercial tension directly — it's premature and will spook Oliver
2. Do establish clarity on roles: who is building what, for whom, under what agreement
3. Leave the commercialization conversation explicitly open for a future call — "that's a separate and exciting conversation"
4. Focus this call on: Module 1 scope, Danny's technical role for the AL build, timeline

**Key distinction to hold:**
> The AIOS build for AL is Molior's engagement with AL. Any commercial product that emerges from the patterns established there is a separate product decision that needs its own conversation. Keep these two tracks from colliding on a 45-minute pre-build call.

---

## 7. Call Strategy — What's Different For This Call

**Standard discovery call does not apply.** This is a three-person technical planning session.

**Recommended structure (45 min):**

| Time | Block | Goal |
|---|---|---|
| 0–5 min | Frame | Orient Danny to the audit findings; establish shared understanding |
| 5–20 min | Danny diagnostic | Understand Danny's background, role, and what he brings to the build |
| 20–35 min | Module 1 technical alignment | Agree on scope, architecture, and build sequence |
| 35–45 min | Next steps | Clarity on what happens before and after the June 2 commercial call |

**Critical reframe from email intel:**
The calendar is named "Felipe / Danny diagnostics" — Oliver has positioned Danny as a peer diagnoser, not an audience. Danny has already read the diagnosis doc and has "thoughts on the structure of the system." He is not walking in cold. Do not open with a recap of the audit. Open by handing the floor to Danny.

**How to open:**
> "Danny — I know you've had a chance to read through the diagnosis doc. Before I walk through anything on my end, I'd love to hear how you're reading it. What's your take on the structure?"

Let Danny show his hand first. You'll learn whether he aligns with the AIOS architecture or has a competing view. Either way, that's the most valuable 10 minutes of the call.

**What to establish on this call:**
1. Danny's role in the AL build (contractor? co-builder? product partner?)
2. Technical approach: Claude Cowork + skills, or custom software? What's Danny's stack preference?
3. CMap API: has Danny scoped the integration? What's his read on complexity?
4. Oliver's prototype: is Danny extending it or starting fresh?
5. Timeline: does Danny see this shipping before or after the June 2 commercial call?

---

## 8. Anticipated Dynamics and Responses

| Dynamic | What happens | How to handle |
|---|---|---|
| Danny leads with product vision, not AL build | He pitches the commercial SaaS angle | "That's exciting — and I want to have that conversation properly. For today, can we make sure AL's build is clear? That's the proof case for everything else." |
| Danny wants to use a different stack (custom code vs AIOS) | He has strong product opinions from Mesh-AI | "Walk me through your thinking. The constraint is: what we build needs to run on Claude and be operated by AL's team without a DevOps layer. What does that change?" |
| Oliver defers to Danny on all technical questions | Oliver treats this as Danny's build | Gently reestablish: "Oliver, this is your system — Danny is helping build it. The decisions need to come from you." |
| Danny has already started building something | Surprise technical work in flight | "Show me what you have — I want to make sure it aligns with the Foundation architecture before we go further." |
| IP ownership comes up | Either Danny or Oliver raises it | "That's the right question and it needs proper attention. Let's finish the build plan today and schedule a short call specifically for the commercial structure. I don't want to half-answer it here." |

---

## 9. Questions We Must Ask

**Open — let Danny lead:**
- "You've had a chance to look at the diagnosis doc — what's your read on the structure?"
- "On the May 4 thread you mentioned a box you stuck on the wall at AL — I'd love to see that. Can you walk me through it?"

**Diagnostic — understand Danny's role and tech POV:**
- "How are you thinking about your involvement in the AL build specifically? Are you building this, advising on it, or something else?"
- "MountUp.ai is focused on building regs compliance — how does that relate to what you'd build for the fee-proposal workflow?"
- "Have you worked with the CMap API before, or is that new territory?"

**Alignment — Module 1 scope:**
- "Oliver, have you and Danny already sketched a technical approach? I don't want to retread ground you've covered."
- "The WorkflowMAXXER prototype has the Fees Bureau benchmark but not CMap historical actuals — that's the critical missing piece. Danny, how are you thinking about that integration?"
- "Extend Oliver's prototype, or build the Foundation and integrate it?"

**Commercial — surface it, don't resolve it:**
- "Oliver's told me you're thinking about this as a commercial product for UK architecture firms broadly. I want to make sure we account for that in how we structure the build — before it becomes an assumption."
- "How did you and Oliver connect? I want to understand the relationship properly."

**Infrastructure + security (the Roman thread):**
- "Jon looped Roman Marszalek into the Egnyte security question on May 5 — where does Dr Logic sit in the build picture? Are they involved in the infrastructure layer?"
- "The audit recommends the AIOS operates within AL's existing JumpCloud permissions — agents sandboxed, no autonomous file writes. Does that address the concern you raised in that thread?"

**Ontology + architecture (Danny's May 4 email):**
- "You wrote about ontology — data structured to represent a domain, two-way instruction capture. That's exactly what the Foundation Vault architecture does. Can you show me what you had in mind with the box on the wall?"

**Timeline:**
- "Jon comes back June 2 for the commercial opener. What needs to be settled between the three of us before then?"
- "If the Foundation build starts mid-June, what's your availability window?"

---

## 10. The Close for This Call

This is not a sales close. This is an alignment close.

**Target outcome:**
1. Role clarity: Danny's role in the AL build is agreed and articulated
2. Module 1 scope: agreed technical approach for the Foundation + Fee Proposal workflow
3. June 2 handoff: clear on what Oliver tells Jon at the commercial opener

**Closing line:**
> "Here's what I'm hearing: [summarize Danny's role, the agreed technical approach, and the open items]. Does that match what you both have in mind? If so, I'll write up the Module 1 technical spec this week so we're ready to move the moment Jon gives the green light on June 2."

---

## 11. Sources

**Firm:**
- AL Audit Report: `Data/Clients/Ackroyd-Lowrie/Audit/AUDIT-REPORT-AL.md`
- AL Workflow Maps: `Data/Clients/Ackroyd-Lowrie/Audit/Workflows/`

**People:**
- Oliver interview (May 8): Notion page 35a69d9d-6417-80ec-95a2-d959c310a895 [VERIFIED]
- Danny Ivatt LinkedIn: https://uk.linkedin.com/in/dannyivatt [VERIFIED]
- Danny at AI for the Rest of Us: https://aifortherestofus.live/speaker-danny-ivatt [VERIFIED]
- MountUp.ai homepage: https://mountup.ai [VERIFIED]

**Context:**
- TODAY.md — call confirmed, 9am Colombia / 3pm BST
- Memory/daily/2026-05-27.md — Sessions 4–5, MOLIOR-BRAIN people layer note includes Danny

---

## One-Page Crib

- **Danny Ivatt** — `danny@mountup.ai`. AL's person since April 29 ("very lightly involved from our side"). Product leader, ex-Mesh-AI Product Director, ~20 yrs tech (Ford, LSE, National Grid). Founded mountup.ai: UK building compliance AI. Has been physically at AL's office — stuck an architecture diagram on the wall. Understands ontology, access control, agent sandboxing at depth.
- **He has read the diagnosis doc and has a formed POV.** Oliver: "He has some thoughts on the structure of the system we implement." The call is named "Felipe / Danny diagnostics" — peer session, not a briefing. **Open by asking him to walk you through his read.**
- **Ask about the box on the wall.** May 4: "All fits in to that loosely defined box I stuck on your wall." That's the architecture concept you need to see before defending anything.
- **His commercial intent** — build the fee-proposal tool as a product for all UK architecture firms. AL is the proof case. Declared to Oliver before the audit delivered.
- **Hidden player: Roman Marszalek / Dr Logic** (`roman@drlogic.com`) — AL's existing IT MSP, 20yr Apple Mac shop. Already advising Jon on AI security/infrastructure. CTO "Shaun" being looped in. Roman is not on Thursday's call but he's in Jon's trust network. Understand where Dr Logic fits in the build infrastructure before June 2.
- **Security concern is live.** Jon raised Egnyte/MCP security on May 5. Danny and Roman both weighed in. The audit's answer: AIOS operates within JumpCloud permissions, agents sandboxed. Use that if it comes up.
- **irisgo.ai signal** — Oliver shared this AI workflow automation tool (watches + learns + executes) with all three on May 21. Signals the technical direction Danny and Oliver are exploring.
- **This call is technical, not commercial.** Commercial decision (Module 1, £11k) stays with Jon on June 2. Today: align on build architecture, establish Danny's role, understand the Roman/Dr Logic position.
- **The close is clarity.** Leave with: Danny's architecture view heard, build approach agreed, role of Dr Logic understood, open items named for June 2.
