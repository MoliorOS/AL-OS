---
name: fee-calc
version: 0.1.0
status: specified
description: >
  Calculate a project fee from role-days, stage duration, and service level, using AL's exact
  deterministic formula. No AI judgment in the arithmetic — this is a calculation, not a draft.
  Use after stage durations and team composition are set (Step 5/6 of W01), before benchmark
  cross-check.
domain: proposal
module: M1
owner: Oliver Lowrie
access-tier: practice
triggers:
  - "calculate the fee for [project]"
  - "what's the fee at [service level] for [X] director-days, [Y] SA-days..."
allowed-tools: Read
fixes: F02 (manual estimation of days/month per role), F13 (per-bid senior time on arithmetic)
---

## What this does

Implements the fee formula from `context/commercial.md` exactly:

```
Stage fee = (Dir_days × £960 + SA_days × £720 + Arch_days × £640 + Asst_days × £480) × duration_months
Total fee = Σ(stage fees) × service level multiplier (Bronze ×0.85 / Silver ×1.0 / Gold ×1.20)
```

This is arithmetic, not a draft — the output is a number, computed the same way every time from
the same inputs. There is no AI judgment step in this skill; judgment happens upstream (choosing
role-days, duration, service level) and downstream (`skills/proposal/benchmark`'s below/within/
above call).

## Inputs required

Per in-scope RIBA stage: Director days, Senior Architect days, Architect days, Assistant days,
and stage duration in months. Overall: service level (Bronze/Silver/Gold). HRB status if it
affects any stage's duration (see `context/commercial.md`'s HRB rule — extends Stage 4 to 12
months, Stage 5 to 24 months, when triggered).

## Procedure

1. Read `context/commercial.md` for the current rate card and multiplier values — **do not
   hardcode these in the skill body; always read them fresh**, since a rate change only needs to
   update one file (the one-home rule in `AGENTS.md`).
2. For each in-scope stage, compute `(Dir×960 + SA×720 + Arch×640 + Asst×480) × duration_months`.
3. Sum all stage fees.
4. Multiply by the service-level multiplier.
5. If retrofit or D&B contract type applies, note the corresponding benchmark adjustment
   (+1.4% / −2.8%) for the benchmark step — this skill computes the fee itself; the benchmark
   comparison including these adjustments is `skills/proposal/benchmark`'s job.
6. Output the total fee, the per-stage breakdown, and the multiplier applied — show the working,
   not just the number, so a director can spot-check any input.

## What it does not do

Does not decide role-days or duration (director input), does not check the result against market
rate (`skills/proposal/benchmark`), does not draft scope (`skills/proposal/scope-draft`).
