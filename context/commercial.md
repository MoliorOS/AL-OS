# Commercial — fee model, benchmarking, bid tiers

> **Owner:** Oliver Lowrie (built and maintains the underlying logic in `AL_Fee_Tool.html`)
> **Status:** Migrated from the June 2026 workshop spec — recoverable without a fresh interview,
> but Oliver should confirm nothing has drifted since.

## The three concepts AL uses (and confuses on purpose)

Oliver's own account — it took him "about five years to understand":

| Concept | Meaning | Tracked in |
|---|---|---|
| **Sales** | The moment someone appoints you — a discrete win event | Pipedrive |
| **Revenue** | What you bill, spread over the project's life (e.g. £20k/mo × 15mo) | CMap |
| **Cash flow** | When money actually lands, lagging invoicing | Xero + Jon's spreadsheet — see `context/finance.md` |

## Bid tiers

| Tier | Type | Frequency | Effort |
|---|---|---|---|
| Tier 1 | Large RFP | 1–2/year | 3–4 people × 5 days (~120–160 senior hours) |
| Tier 2 | Standard fee proposal + free feasibility | **2–4/month — the volume tier** | 2–4 days: Oliver ~2 days, Wayne ~2 days, Andrew ~1 day |
| Tier 3 | Continuation / extension fee | Frequent | ~1 day |

## Service levels (Bronze / Silver / Gold)

Deterministic multiplier, human-judgment selection:

- **Bronze** — lean/core scope only. Multiplier **×0.85**.
- **Silver** — standard full service, AL's typical offer. Multiplier **×1.0**.
- **Gold** — enhanced scope, senior-weighted team. Multiplier **×1.20**.

Examples of what moves between tiers: in-house visualisations (Gold only), GLA pre-app
attendance (Silver+), political engagement (Gold), DLP inspections (Silver+), shop-drawing review
(Gold). Always excluded unless separately priced: discharge of planning conditions, Secured by
Design, conveyancing plans, marketing plans, **the CDM Principal Designer role**.

## The fee formula (deterministic)

```
Stage fee = (Dir_days × £960 + SA_days × £720 + Arch_days × £640 + Asst_days × £480) × duration_months
Total fee = Σ(stage fees) × service level multiplier
```

Day rates by role:

| Role | Day rate |
|---|---|
| Director | £960 |
| Senior Architect | £720 |
| Architect | £640 |
| Assistant | £480 |

Adjustments layered on top: **HRB** (see below) extends Stage 4/5 duration, which raises the
fee through the duration term rather than a separate multiplier. **Retrofit** projects carry a
+1.4% uplift to the benchmark comparison. **Design & Build** contracts carry a −2.8% discount to
the benchmark comparison.

## HRB rule (deterministic — a fee/programme trigger, not just a compliance flag)

> IF building is residential / co-living / student **AND** (height > 18m **OR** storeys ≥ 7)
> → HRB flag active.

Consequences, all deterministic once the flag is set:
- Gateway 2 required, Building Safety Regulator (BSR) approval needed before construction starts
- Stage 4 duration extends from 6 months to **12 months**
- Stage 5 duration extends from 18 months to **24 months**
- Resident engagement duties apply
- Detailed fire strategy and structural safety case required

## Default stage durations (non-HRB)

Pre-app 3 months · Planning 4 months · Determination 3 months · Stage 3 (Developed Design)
4 months · Stage 4 (Technical Design) 6 months (12 if HRB) · Stage 5 (Construction & Handover)
18 months (24 if HRB).

## Benchmarking — RICS Fees Bureau, London 2026

| Sector | £1M CV | £2.5M CV | £5M CV | £10M+ CV |
|---|---|---|---|---|
| Residential / Co-living | 7.3% | 6.6% | 6.0% | 5.5% |
| Hotel | 5.9% | 5.5% | 5.1% | 4.8% |
| Commercial | 5.6% | 5.0% | 4.6% | 4.2% |
| Education | 5.9% | 5.3% | 4.9% | 4.5% |

Decision after the calculated fee is checked against the applicable band — this step is human
judgment, not automatic: **below market** → bid competitive or lift to market; **within** →
proceed; **above** → re-evaluate staffing or justify the premium explicitly.

## The known gap — no comparable-project lookup

The benchmark check today uses Fees Bureau sector percentages only. It does **not** cross-check
against AL's own historical project actuals in CMap — Oliver's own description of what's missing:
*"One good way of writing a fee proposal is to look at how much it cost you to deliver the last
project that was similar."* CMap has no stable API on AL's current plan, so this needs a CSV
export path if it's ever built. Named as a Phase 1 stretch goal in the original spec, not
committed.

## What feeds `skills/proposal/fee-calc` and `skills/proposal/benchmark`

This file is the direct input to those two skills. `fee-calc` implements the formula above
exactly — no AI judgment in the arithmetic. `benchmark` implements the RICS lookup and reports
below/within/above; it does not recommend a bid strategy, that's the director's call.

## Open — not yet captured

- Whether the retrofit (+1.4%) and D&B (−2.8%) adjustments compound with HRB duration effects or
  apply independently — confirm with Oliver.
- Any tier-specific pricing exceptions negotiated on individual accounts (e.g. retained clients
  like Eversleigh) that sit outside this formula.
