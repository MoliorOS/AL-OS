---
archive: true
archived: 2026-06-02
project: Phase-1-Build
outcome: "Three-phase commercialization; £95/hr billing agreed; workshop 2026-06-02"
title: "Meeting Summary — AL Pre-Build Technical Session"
client: Ackroyd-Lowrie
type: call-summary
date: 2026-05-28
---

# Meeting Summary — Ackroyd Lowrie Pre-Build Technical Session
**Date:** 2026-05-28 | **Type:** Pre-Build | **Attendees:** Felipe, Oliver Lowrie, Danny Ivatt (mountup.ai)

---

## Summary

The call opened with Oliver framing it as a peer collaboration — Danny bringing enterprise software depth, Felipe bringing architecture domain + diagnosis. Danny gave a generous validation of Felipe's audit work ("I looked at your diagnosis and thought, mine is terrible") before laying out a structured critique: the AIOS proposal is strong on the workflow orchestration layer but missing a canonical middle data layer. His argument: markdown-based knowledge stores (Obsidian, GBrain) work for individual operators but collapse at firm scale due to token cost, non-determinism, and no time-series capability. The answer is a managed Postgres database (Supabase recommended) sitting between systems of record and the AI layer — serving as canonical data store, audit log, control plane, and dashboard foundation.

Felipe engaged constructively rather than defensively. He conceded the scalability gap in the current Obsidian-first approach and introduced GBrain as an exploration in progress, explaining its vector graph layer. Danny acknowledged vector databases have a role (unstructured proposal content) but argued structured analytical data (project financials, margins, resource allocation) belongs in relational tables. The two aligned on a three-tier data model: vector store for semantic retrieval, analytical fact tables for structured queries, operational metadata store for file registries. Agreement was clean — both framing workflow-first delivery as the right sequencing, building target architecture iteratively.

On MCP and authorization: Oliver flagged they don't love JumpCloud and are open to replacing it with Google-native IAM. Danny recommended Google for all access control. Felipe presented a two-layer control model — skill-level read/write restrictions encoded in skill definitions, plus per-user MCP configuration (Notion as the example). Danny agreed but expanded: centralized MCP gateway needed for autonomous agents at scale, with blast-radius analysis per workflow before deployment.

Oliver then asked Felipe to demo his Notion CRM. Felipe walked through the automated lead-profile and engagement-log system. Danny pointed at it and said: "This is representative of exactly what we've been discussing — Notion in one piece of software is all the layers of an AIOS." Notion emerged as a viable interim middle layer, with the understanding it would eventually be replaced by or complemented with a direct managed database.

The second half shifted to commercialization. Oliver laid out a three-phase plan: Phase 1 = fee proposal tool as proof of concept (simplest, clearest ROI); Phase 2 = full AIOS rollout for AL; Phase 3 = commercial product for other UK AEC firms. He cited CAP's £100M exit and NeoIM as the competitive landscape, dismissing both as generic. He explicitly flagged the urgency: "We've got to get this thing down on paper because we can go and raise some money for this." Danny proposed a 2-hour technical workshop (Miro board) to map the first workflow down the full stack and produce a backlog. Felipe agreed. Oliver said he'd put an agenda together — Ellen to schedule for the week John returns (2026-06-02).

Oliver closed by noting the audit work is complete and he's happy to pay Felipe hourly for time until a new agreement is reached. He asked for an hourly rate. Felipe said he'd prepare a proposal.

---

## Key Insights

1. **The data layer gap is real and accepted.** The Obsidian/markdown-first architecture works for solo operators and small teams but does not scale to firm-wide use. Danny's critique — token cost, non-determinism, no time-series — is technically sound. The AIOS Foundation needs a Postgres layer (Supabase) added to the architecture.

2. **Danny sees the whole stack.** He's not just a product person with opinions — he mapped the AIOS architecture instantly (systems of record → data layer → workflow orchestration → user interaction) and identified the missing layer with precision. He thinks in blast radius, control planes, and agent governance. This is an unusually strong technical collaborator.

3. **Notion is the shortest path to a middle layer.** Oliver is already building a Notion-based CRM. Danny acknowledged it as a valid interim — structured databases underneath workflows and logic on top. This resolves the "build data layer before building anything" trap: Notion gets them moving while the proper relational DB is spec'd.

4. **The commercial ambition is explicit and urgent.** Oliver connected the fee proposal tool to a fundable product opportunity and cited comparable exits. This is no longer a "someday" conversation — he used the word "raise" and pointed at the gap in the market. Felipe is now being positioned as the forward-deployed architect of a product company, not just a consultant delivering a client AIOS.

5. **IP and equity are completely undefined.** Oliver named three possible arrangements in one breath: employ Felipe, create a three-way collaboration agreement, or pay for IP ownership. None were resolved. This ambiguity must be addressed before the June 2 commercial call.

6. **Danny's role is still structurally undefined.** He's AL's person, has commercial intent (fee-proposal-as-product), brings enterprise software depth, and has now validated Felipe's work — but his actual engagement model (paid contractor? equity partner? co-founder?) was never named in this call.

---

## Action Items

| Action | Owner | Deadline |
|--------|-------|----------|
| Send hourly rate proposal to Oliver | Felipe | Before 2026-06-02 |
| Confirm 2-hour workshop slot (Miro board) | Oliver / Ellen | Week of 2026-06-02 |
| Prepare workshop agenda (vision + first workflow + stack map) | Oliver (lead) + Felipe input | Before workshop |
| Update AIOS Foundation architecture to include Supabase/Postgres data layer | Felipe | Before June 2 commercial call |
| Clarify Danny's engagement model (before or at June 2) | Felipe + Oliver | 2026-06-02 |
| Clarify IP/equity structure for three-way partnership | Oliver + Danny + Felipe | Workshop or dedicated call |
| Investigate Google Workspace centralized email routing for project comms | Jon / Roman Marszalek | After Jon returns 2026-06-02 |
