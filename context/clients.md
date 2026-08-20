# Clients — ICP, pipeline, client journey

> **Owner:** migration — sourced from the Marketing Plan 2026 and the May 2026 audit.
> **BD system of record: Pipedrive.** A Notion CRM (4 databases) was built to parity with
> Pipedrive on 2026-08-19 and is running as a parallel-run candidate replacement — treat it as
> not-yet-authoritative until this file is updated to say the switch has happened.

## Pipedrive — the BD system of record

Boards: **Monthly Sales** (actively used), **Targets** (aspirational, not maintained),
**Accounts** (first project → repeat client → exclusive), **Lapse** (*"I haven't touched this
for like a year"*), **Partners**. Weekly ritual: Jon and Oliver "sit on Pipedrive" together
reviewing what's moving. The number they report monthly is secured deals, not income — Oliver's
own framing: *"last month we won £35,000 worth of work… that's secured deals, not income."* See
`context/commercial.md` for the Sales/Revenue/Cash-flow distinction this reflects.

**Funnel stages as AL states them:** Lead in → Appointment → Presentation → Spec work →
Completed spec work (Won).

**Weighted pipeline** — probability × fee, summed across open deals — is Pipedrive's core
forecasting number, distinct from the monthly win total above. Structurally under-used: Targets,
Accounts, and Lapse boards are "aspirational, not maintained" (Oliver's own words on Targets:
untouched for roughly a year), and there is no integration with event-attendee lists (a separate,
un-synced Google Sheet per event) or LinkedIn/email nurture.

### Notion CRM parity — status as of 2026-08-19

Four linked databases (People, Companies, Deals, Interactions) reached feature parity with
Pipedrive's sales-pipeline function on 2026-08-19 (`AL-AGENT`'s `notion-sync` job, fixed and
idempotent as of that date — see `ROADMAP.md`). Single intake trigger: `hub@ackroydlowrie.com`.
**Still not authoritative** — running as a parallel-run candidate, not yet the switch.

**Live Deal-stage vocabulary (as actually shipped, 2026-08-19):** Qualified → Presentation →
Negotiation → Proposal → Won → Lost. This supersedes an earlier-proposed stage list (Lead in →
Appointment → Presentation → Spec work → Completed spec work) drafted 2026-08-18 before the sync
job's schema drift was fixed — if you see the older list elsewhere, it's stale. All 9 live deals
were re-enriched against this vocabulary the same day, with `client_company:`/`client_contact:`/
`Owner:` set wherever determinable from source text (left blank, not guessed, where ambiguous).

What the Deal-schema reshape adds that Pipedrive never had, closing gaps this file listed above:
- **`Won evidence`** (required to mark a deal Won) — directly fixes the verbal-appointment
  billing-dispute risk Pipedrive never solved.
- **`Lost reason`** (required to mark a deal Lost) — closes the "no formal win/loss feedback
  loop" gap named below; Pipedrive had no structural enforcement for this.
- **`Deal owner`** (a person, not tribal knowledge) — directly addresses the "me-and-Oliver-
  centric" concentration risk Jon flagged in the audit.
- **`Weighted value`** (formula: probability × estimated fee) — replicates Pipedrive's
  forecasting number automatically instead of a manual monthly tally.

Migration plan (agreed, not yet executed): ship the schema, run Notion in parallel with Pipedrive
for a defined window, validate the weighted-pipeline and monthly-win numbers match, only then
retire Pipedrive. **No parallel-run window length or "matches" threshold has been set yet** — a
director-level decision to pin down at the next CRM working session.

## The client journey (Business Plan + Oliver's live version)

`Event / Recommendation / Hunting Partner → pitch doc or website → Visit & Call / Capacity Study
→ DocuSign → 7-stage delivery lifecycle (Fees → Pre-app → Planning → Technical Design → Site →
Stage 6 → In use) → CMap + Xero billing (Deposit + Invoice + Final Invoice) → feedback loop back
to marketing.`

Oliver's own account of how a job actually starts (2026-06-02 workshop):

> "There's a site, someone wants to get planning on it. We need to understand what can be done
> with it. And so we might spend maybe a day or two just looking at it, doing our own research.
> That's the site analysis. And then we might send them a, you know, 'Here's our high-level
> assessment.' That's feasibility. If they then come back and say 'We're interested in what
> you've done, what would it cost to take it through to planning?' then we start writing a fee
> proposal."

And: *"you're selling feasibility first. Because if it's a total nightmare, you don't want to do
it. And sometimes you don't want to do it because you haven't got a team available, you haven't
got the resource."*

## ICP and sector targeting

Berkeley, Vistry, Bellway and similar — Oliver's own stated segmentation names roughly 14
companies representing 50% of London new-homes delivery as the strategic target.

## Hunting Partners

A formal AL category — architects, consultants, QSs, and agents who refer work in. Distinct from
a direct client. Used to classify leads from the CO-LIV white paper campaign (examples: Gardiner
& Theobald, Allies and Morrison, Lavigne Lonsdale, Stockwool).

## Known BD gaps (from the audit — still relevant to close)

No formal win/loss feedback loop — Oliver: *"we don't [track it]. And it would be useful but
difficult."* (In progress: the Notion CRM's `Lost reason` field, above, is the first structural
attempt at this.) No marketing ROI per channel — though once People/Deals enrichment tags lead
source, a spend→source→won-deal rollup becomes possible for the first time (not yet built). No
event-list ↔ Pipedrive integration. No channel attribution.

## What feeds `skills/proposal/*` and future BD skills

Any skill touching pipeline value, deal stage, or client segmentation should read from Pipedrive
as the current record. If and when the Notion CRM becomes authoritative, update this file first
— don't let skills drift onto Notion silently.

## Open — not yet captured

- **Parallel-run window length and switch trigger** — schema is reshaped, migration plan is
  agreed, but no date or "matches" threshold is set. Needs 10 minutes with Jon/Oliver.
- **Lost-reason taxonomy** — Pipedrive never had one; needs agreeing before it's locked into the
  Notion schema (candidates floated: too expensive / wrong fit / timing / went with competitor).
- A structured ICP definition beyond the sector/company-name targeting above.
- Whether AL actually wants to invest in keeping Targets/Accounts views current in Notion, given
  they were never maintained in Pipedrive either — worth asking rather than assuming.
