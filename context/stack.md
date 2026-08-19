# Stack — the connectivity problem this repo exists to fix

> **Owner:** migration. **For the tool-by-tool registry (what each tool does, its status, its
> integration path) see `SYSTEM.md` §3 — that is the single source of truth for the stack; this
> file holds the cost of the current state, not another copy of the list.**

## The Connectivity Matrix — what fragmentation actually costs

AL runs on more than twenty tools, and almost none of them talk to each other. To answer one
cross-functional question, someone opens three, four, or five systems and assembles the answer
by hand:

| Business question | Systems touched | Hops |
|---|---|---|
| "Is this project profitable right now?" | CMap → Google Sheets/Egnyte tracker → ArchiCAD → email threads → Egnyte C Compliance | **5** |
| "Can I add a person without tipping into loss?" | CMap resourcing tab → CMap finance tab (same tool, two tabs, not linked) | 2, both manual |
| "What's our cash position, can we invoice this month?" | Jon's Excel → Xero → CMap → invoice-release meeting (knowledge in heads) | **4** |
| "What's our full warm-lead pipeline?" | Pipedrive → Eversleigh's Google Sheet (not synced) → email | 3 |
| "What did consultants decide on this RFI?" | Email → Egnyte D-Team Comms → Zoom chats → scattered minutes | **4** |
| "What should this fee be?" | Fees Bureau → Oliver's memory → CMap history | 3 (last hop is memory) |
| "Who's available next week?" | CMap resourcing → Google Calendar → ask Andrew | 3 (last hop is human) |

**Median: 4 hops.** The audit's own reading: anything above three means the answer is rebuilt
from scratch every time it's asked — and the person doing the rebuilding is almost always a
director. Jon is the middleware for cashflow, Oliver for the funnel, Andrew for resourcing. The
directors can't step back from day-to-day operations because operations run *through* them.

**The head start:** eight of AL's highest-value tools already ship official MCP servers — the
core data spine connects in days, not months. See `SYSTEM.md` §3 for exactly which.

## What this means for `skills/`

Every skill in this repo should be judged partly by how many hops it removes from a real
question like the ones above — not by whether it's technically impressive. `fee-calc` +
`benchmark` collapse the "what should this fee be?" row from 3 hops (one of them human memory) to
one command. `cashflow-brief` targets the 4-hop cash-position question.

## Open — not yet captured

- Whether any of the seven questions above have changed shape since the audit (May 2026) — worth
  re-checking before treating the hop counts as current.
