# Finance — cashflow, invoice release, terms

> **Owner:** Jon Ackroyd (cashflow, invoice-release calls) with Anita Ford (Finance Manager —
> Xero, payroll, board pack). **Status: largely open.** The invoice-release rubric and the
> cashflow logic exist only in Jon's head and in a spreadsheet only he maintains. This is one of
> two files (with `context/scope.md`) that most needs a direct extraction session, not a
> migration.

## What's documented

**The weekly operations cycle (W03)** closes monthly with a board pack. Eleven steps: CMap
inputs → Jon's cashflow refresh → Thursday resourcing → CMap cross-check → profitability
spot-check → tracker reconciliation → **weekly finance meeting** → debt chase → **invoice
release** (the decision gate) → forecast reconciliation → board pack.

**The weekly finance meeting** — four people (Jon, Oliver, Jo Greenoak, Anita), one hour, every
week: 208 person-hours a year to produce a view a dashboard would render in seconds (audit
finding F18).

**Sales / Revenue / Cash flow — kept deliberately distinct** (see `context/commercial.md` for
Oliver's own account of this): Sales in Pipedrive, Revenue in CMap, Cash flow in Xero + Jon's
spreadsheet.

**The board pack** — assembled monthly from Xero → CMap → Futurli, currently by hand (Anita).

**Terms:** payment terms 14 days (ALAQEP-010 draft). Standard contract terms are Trowers &
Hamlins (since 2020) — see `context/delivery.md`.

## What's genuinely one person deep

**Jon's cashflow spreadsheet** is the only forward cash view in the practice: sole author, sole
maintainer, sole reader, and it's rebuilt from scratch every year. The audit's own framing of the
risk: *"If Jon is out for a month, the cycle stalls and the board pack has nothing to feed it."*
It navigates a real seasonal pattern — the firm's cash position has dipped from roughly £150k to
£7k in a single June — on Jon's instinct, with no documented logic behind the call.

## The invoice-release decision — the specific gap

Each month roughly 15% of issuable invoice value is **held**, on reasoning that exists only in
the room. Three live hold-reason categories exist in practice but are never recorded against the
invoice itself:

1. **Work not delivered**
2. **Client dispute**
3. **Director-personal** (a discretionary hold, for reasons outside the other two)

None of these has a written rubric for *when* to apply it, who decides, or how it's tracked. This
is the single most useful piece of tacit knowledge to extract for `skills/practice/invoice-ready`
— without it, that skill can only flag invoices as ready-to-send, never actually replicate the
hold decision.

## What feeds `skills/practice/cashflow-brief` and `skills/practice/invoice-ready`

`cashflow-brief` cannot be built meaningfully until Jon's spreadsheet logic — the seasonal
pattern, the specific formulas, the VAT handling — is captured here. `invoice-ready` needs the
three hold categories above turned into an actual decision rubric, not just named.

## Open — not yet captured

- **The full cashflow spreadsheet logic** — VAT handling, the seasonal £150k→£7k pattern, what
  actually drives the instinct-based call each June. Needs a direct session with Jon, ideally
  walking through the live spreadsheet.
- **The invoice-release rubric** — what specifically triggers each of the three hold categories,
  who has authority to release a held invoice, and how held invoices are currently tracked (if
  at all).
- **Debt-chasing process** — currently director-level time (audit finding F19, ~£16.8k/yr); no
  documented escalation ladder.
