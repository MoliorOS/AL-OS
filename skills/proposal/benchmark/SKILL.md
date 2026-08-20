---
name: benchmark
version: 0.1.0
status: specified
description: >
  Cross-check a calculated fee against RICS Fees Bureau sector benchmarks and report the
  below/within/above position. Deterministic lookup and calculation; the bid-strategy decision
  that follows is always a director call, never made by this skill.
domain: proposal
module: M1
owner: Oliver Lowrie
access-tier: practice
triggers:
  - "benchmark this fee"
  - "is this fee competitive"
allowed-tools: Read
fixes: F03 (benchmark check half-built — no comparison against AL's own past-project actuals)
---

## What this does

Looks up the applicable RICS Fees Bureau rate band for the project's sector and construction
value, applies the retrofit/D&B adjustments if relevant, and reports whether the calculated fee
(from `skills/proposal/fee-calc`) sits below, within, or above that market range. This is a
lookup and a percentage comparison — deterministic — followed by a report, not a recommendation.

## Inputs required

Sector, construction value (CV), the fee total from `skills/proposal/fee-calc`, and whether the
project is retrofit and/or Design & Build.

## Procedure

1. Read `context/commercial.md`'s RICS Fees Bureau table for the sector and nearest CV band.
2. Apply the retrofit (+1.4%) or D&B (−2.8%) adjustment to the benchmark rate if either applies —
   confirm with `context/commercial.md`'s open question on whether these compound with HRB
   duration effects before applying both together on an HRB project.
3. Compute the calculated fee as a percentage of CV.
4. Compare: **below** the band → note that this may be a deliberate competitive choice, not an
   error (per `context/commercial.md`, Oliver has knowingly priced ~1% below market before) —
   report it, don't flag it as a mistake. **Within** → report and proceed. **Above** → report and
   note that a director should decide whether to re-evaluate staffing/duration or justify the
   premium (complexity, HRB, specialist expertise).
5. **Always report a position, never a recommendation.** The decision itself belongs to the
   director running the proposal.

## The known gap this skill inherits

Per `context/commercial.md`: this benchmark check uses Fees Bureau percentages only — it does
**not** compare against AL's own historical project actuals in CMap, which Oliver has named as
the most valuable missing input (*"one good way of writing a fee proposal is to look at how much
it cost you to deliver the last project that was similar"*). CMap has no stable API on AL's
current plan, so closing this gap needs a CSV-export path that isn't built. This skill should
state that gap explicitly in its output, not silently omit the comparison.

## What it does not do

Does not decide whether to bid competitively or lift to market — always a director call. Does
not compare against CMap actuals (the known gap above).
