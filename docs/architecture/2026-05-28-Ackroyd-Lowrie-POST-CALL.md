---
type: post-call-report
archived: 2026-06-02
date: 2026-05-28
title: "Post-Call Report — AL Pre-Build Technical Session"
archive: true
client: Ackroyd-Lowrie
project: Phase-1-Build
---
# Post-Call Report — Ackroyd Lowrie Pre-Build Technical Session
**Date:** 2026-05-28 | **Type:** Pre-Build | **Attendees:** Felipe, Oliver Lowrie, Danny Ivatt

---

## 1. Market Intelligence

### How they responded to our framing
The AIOS architecture framing landed well. Danny's explicit verdict: "I looked at your diagnosis and mine was terrible — you genuinely did a very good job." This is a 20-year enterprise data and AI product person saying the audit is strong. That's the strongest third-party validation the methodology has received.

What *didn't* land was the Obsidian/markdown-based knowledge layer. Danny dismissed it — not harshly, but structurally. He said it works for individuals, not firms. He said GBrain is still fundamentally markdown + inferred graph. He said the right answer is a database. Oliver immediately agreed: "it needs to be structured." The architecture diagram we proposed (vault-first, Claude layer on top) was accepted at the workflow level but rejected at the memory/data layer. This is a real gap in the current AIOS product spec, not a communication problem.

### What concerns surfaced
- **Scalability of the markdown-first memory architecture.** Danny's argument is technically sound: token cost, non-determinism, no time-series. The current AIOS Foundation spec doesn't account for this. It will come up in the June 2 commercial call with Jon, and it needs a resolved answer by then.
- **MCP blast radius.** Danny introduced "blast radius analysis" as a requirement for every autonomous workflow — what's the worst-case damage from an agent with MCP access? This is a legitimate enterprise concern. We don't currently build this into our skill design process.
- **Email extraction at firm scale.** UK legal constraints on inbox access were flagged. The solution is unsolved: centralized mailbox routing vs. individual extraction. Danny and Oliver deferred to Jon/Roman for the Google Workspace answer. This is a real blocker for the Email-as-Knowledge-Store pattern (one of AL's three structural patterns).

### What vocabulary they use that we should be using
- **"Structured data layer"** / **"canonical store"** — Danny's language for the middle layer. This is cleaner than "vault" or "memory layer" for a technical audience.
- **"Blast radius"** — for discussing autonomous agent risk.
- **"First slice"** — for the workflow-first delivery approach. Better than "Foundation + Module 1."
- **"Forward deployed engineer"** — Oliver's framing for the Molior engagement model. This is the vocabulary they're using internally to describe what Felipe does.
- **"Target architecture"** — Danny's term for the high-level system design that guides each slice without building everything at once.

### What they're already doing / building
- Oliver is actively building a Notion-based CRM — he's already "clawed the notion" and building engagement tracking.
- Oliver is extending WorkflowMAXXER (fee proposal prototype) and wants to fold it into a project tracker.
- Danny ran his own diagnosis on AL's systems before Felipe's audit and acknowledged Felipe's was better — but he has a formed architectural view he's been developing in parallel.
- Oliver has spoken to NeoIM twice and is actively evaluating potential partners/competitors.

### Signals about the wider buying committee
The three-phase commercialization plan Oliver laid out (Phase 1: proof of concept → Phase 2: full AL rollout → Phase 3: sell to market) is a product roadmap, not a client engagement extension. Oliver is clearly thinking beyond being a client — he wants to be a co-founder or commercial partner. Jon is not present and his position on this is unknown. Jon is the commercial principal. The risk: Oliver and Danny align on a commercialization path before Jon signs Module 1, creating a situation where the client is co-opting the consultant into a startup without a contract.

Danny's involvement is increasingly material. He was framed as "very lightly involved" in April. He is now: co-ideating architecture, proposing workshops, shaping the commercial roadmap, and talking about workshops and backlogs. He is effectively in the founding team of whatever this becomes.

---

## 2. Performance Evaluation

### What went well

**Opening move.** Felipe asked Danny to walk through his perspective on the diagnosis doc before presenting anything. This was the right call. Danny opened up fully — gave a 10-minute architecture critique that revealed his entire mental model. Without that opening, Felipe would have been defending rather than listening. The brief prepared for this call specifically flagged this as the critical first move.

**Notion CRM demo.** Felipe sharing his own CRM system in real-time was the call's most effective moment. Danny pointed at the database icon next to "CRM discovery" and said: "this is representative of exactly what we've been discussing." Showing the thing, not explaining the concept, made the architecture legible to both Danny (technically) and Oliver (practically). It also demonstrated that the AIOS is running in production, not theoretical.

**Skill-level + MCP-level access control framing.** When the authorization discussion came up, Felipe presented a coherent two-layer model: skill definitions encode read/write rules, MCP per-user config handles system-level access. Danny engaged with this seriously and built on it rather than dismissing it. This showed architectural depth, not just product knowledge.

**Agreed on workflow-first delivery.** Felipe held the "Foundation first, workflows second, build in slices" position throughout. Danny arrived at the same conclusion independently. The call ended with both reinforcing this as the correct approach. This is the core Molior methodology validated by an independent enterprise data architect.

### What failed

**The Obsidian/GBrain position collapsed under minimal pressure.** When Danny said GBrain is still markdown + inferred graph, Felipe immediately conceded: "I agree with you in most things." He then proceeded to explain GBrain as a vector graph stored in Supabase — which implicitly accepts Danny's critique. There was no defense of the markdown-first approach. The better response: acknowledge the scalability gap, explain why the vault starts as markdown (speed, human-readable, zero infra cost), and show how the Supabase vector layer bridges to the structured store. Instead, it came across as "we were doing the wrong thing and Danny is right." That's a damaging framing for a paid engagement where the client is evaluating whether to extend.

**IP/role ambiguity was not resolved.** Oliver named three possible commercial arrangements in one breath — employment, three-way collaboration, or IP purchase — and Felipe said "I'll prepare a proposal." That's fine for hourly billing, but the structural question (who builds what, who owns the IP, what is Danny's role in the AL build) was left completely open. The pre-call brief explicitly flagged this as the most important structural tension to surface. It was not surfaced. It will arrive as an ambush at or after June 2.

**No explicit framing of the Molior-AL relationship vs. the commercial product conversation.** Oliver's three-phase plan (Phase 1: proof of concept, Phase 3: sell to market) folds Felipe's engagement into a product company roadmap without explicitly negotiating that shift. Felipe agreed to it without naming the distinction. The right move: "Phase 3 is exciting and worth its own conversation — today let's close Phase 1 so we have something to commercialize."

### What was missed

**Danny's engagement model was never directly asked.** The pre-call brief listed "How are you thinking about your involvement in the AL build specifically?" as a required diagnostic question. It was never asked. We still don't know if Danny is: (a) an AL advisor, (b) a paid contractor in the build, (c) a co-builder with equity ambitions, or (d) planning to build the fee-proposal tool independently using AL as a reference client. This is the most operationally significant unknown going into June 2.

**The "box on the wall" question was never asked.** The pre-call brief flagged Danny's May 4 email about sticking an architecture diagram on AL's wall. This would have revealed his full architectural concept before the call's technical discussion. Missed opportunity for deeper alignment.

**Roman Marszalek / Dr Logic was never mentioned.** Jon looped Roman into the AI infrastructure security conversation in May. Roman is AL's existing IT MSP with a CTO being brought in. He is not on this call but is in Jon's trust network for exactly this kind of infrastructure decision. The June 2 commercial opener needs to address where Dr Logic sits in the build picture before a Supabase data layer is proposed to Jon.

**Hourly rate wasn't proactively raised.** Oliver had to bring up payment for interim time. Felipe was reactive. For a consultant positioning as a premium AIOS architect, being asked "do you track your hours?" is slightly deflating. The right posture: "Before we get to the workshop — I'll send you a proposal for the interim engagement so we're clear on how this time is structured."

### What to improve for next time

1. **Have a clear position on every architectural critique before the call.** Danny challenged the markdown-first architecture and it collapsed. For every component of the AIOS proposal, prepare: (a) what it does, (b) why we built it that way, (c) what the trade-off is at scale, (d) what the upgrade path looks like. Never arrive in a technical session without this.

2. **Name the commercial track separately and explicitly.** When a client starts describing your engagement as a product startup, the right response is: "I want to have that conversation properly — it's a different conversation from the build engagement. Can we close the build agreement first and then schedule a dedicated call for the commercial structure?" This protects both the engagement revenue and the IP.

3. **Ask the role question directly.** "Danny — how are you thinking about your role in the AL build specifically? Are you building this, advising on it, or something else?" This is not rude; it's necessary. Leaving it open creates misaligned expectations that will be expensive to unwind later.

4. **Control the commercial momentum by anchoring to the June 2 call.** Every time the conversation drifted into Phase 3 / commercialization, the right redirect was: "This is exactly what the June 2 call with Jon should open with — let's make sure we have something concrete to bring him." This keeps the June 2 call loaded and makes Felipe the one structuring the agenda.

5. **Raise billing before the client does.** For any client engagement extension, the commercial terms should come from Felipe, not from Oliver asking "do you track your hours." This is a positioning issue that compounds over time.

---

## 3. Business Learnings

### What should change as a result of this meeting

**AIOS Foundation architecture must include a structured data layer.** The Supabase/Postgres component is not optional for firm-scale deployments. The current Foundation spec (vault + Claude + MCP connections) needs a fourth component: canonical data store (vector + relational + operational metadata). This is the updated target architecture. Any future proposal or presentation to a firm-size client should include this layer explicitly.

**The "vault" framing needs a technical upgrade path.** Calling it a "vault" works for principals (it sounds like a secure store). But in a technical conversation, it sounds like a folder of markdown files — which Danny immediately dismissed. The framing needs to be: "The Foundation starts with a structured knowledge layer (Vault) and adds a canonical data layer (Supabase) — the two together give you deterministic querying and semantic retrieval." That's a complete architecture, not a markdown folder.

**Blast radius analysis should be part of skill design.** Every skill that touches external systems should carry a "blast radius" section: what's the worst-case outcome if this skill runs autonomously with full MCP access? This is a client-facing trust mechanism and a real engineering constraint. Add it to the `/build` skill methodology.

**The forward-deployed engineer model is how Oliver and Danny are already framing the Molior engagement.** This is important for positioning. Oliver said: "Felipe is your forward deployed engineer — he goes in virtually." This is the Palantir FDE model applied to AIOS consulting. The brand pitch for future clients should lean into this directly. Not "AI consultant" — "forward-deployed AI architect."

**The NeoIM competitive signal.** NeoIM (Belgium, Endscape founder, team of 70, "loads of money") is building in the AEC AI space with a generic BIM + AI platform. Their "neo brain" was dismissed as "totally s***" by Oliver. The competitive moat is specificity + workflow-first + AEC domain depth — not scale. This should inform the content pipeline: publish specific, opinionated, workflow-level content. Avoid the generic "AI will transform AEC" positioning NeoIM is using.

**The CAP exit benchmark matters.** CAP sold for £100M and Oliver called it "rubbish." His point: a more valuable product, built right, is achievable in this space. That's a market signal worth tracking. CAP's customers are AEC firms of exactly the Molior ICP size.

---

*This call: validation of the diagnosis + a real architectural gap exposed + a commercialization path emerging. The next call (June 2, Jon) is the commercial decision point. Everything between now and then needs to set up that close.*
