# Technical — standards, QA model, compliance

> **Owner:** Wayne McKiernan, Technical Director. **Status: largely open.** Wayne's audit
> interview was cancelled during the May 2026 audit week and never rescheduled — **his voice is
> entirely absent from every source document this repo is built from.** Every item below marked
> "Critical (assumed)" in the original audit carries no documentation and no cascade plan if he's
> unavailable. This file should not be treated as populated until a direct session with Wayne
> happens.

## What's known, from other people's testimony

- Wayne keeps the fee templates current and provides technical sign-off on bids — roughly **2
  days per bid** (Tier 2 volume).
- He owns the **"white book"** — AL's standard details library — referenced by name in the audit
  but not described in any document available to this repo.
- He owns Stage 4 technical quality review, and PI/Building Safety Act judgement calls,
  including HRB compliance (see `context/commercial.md` for the deterministic HRB trigger; the
  judgement calls on top of that trigger are Wayne's).
- In the sign-off routing (`context/delivery.md`, Path C), Wayne is one of four required
  consultees on High-Value Sign-Off (>£100k or HRB).
- Structural gap named in the audit: Wayne's technical review currently lands at **Step 5** of
  the fee-proposal workflow (fee calculation), not Step 7 (scope + DRM) — meaning his senior
  review checks a finished document instead of shaping the scope while it's still open.

## QA model — what's documented

- `Checklists.xlsx` carries a `2ND CHECK / Qualified person` sign-off row at the end of every
  stage block — the standing QA gate mechanism. See `context/delivery.md` for how it's supposed
  to work, and the audit finding that this row is blank across every observed copy.
- The Author/Checker/Approver model is referenced in ALAQEP-001, and the ALAQEP-012 chain
  (Internal Project Audit → Pass/Fail → Non-Conformance Report with severity Minor/Moderate/
  Major) exists as policy — see `docs/policies/`.

## ISO 19650 / drawing standards

See `context/delivery.md` for the drawing-numbering convention already deployed. ADDD
(Alister Lewis, ConTech consultancy) is engaged on ISO 19650 alignment plus Egnyte folder
structure and ISO 9001/14001 targets — this work is client-side, run by ADDD, not by this repo.

## Open — not yet captured

This entire file needs a direct session with Wayne McKiernan before it can be considered
populated. Specific questions to bring to that session:

- The "white book" — what's actually in it, and where does it live today (Egnyte? A personal
  copy?)
- Stage 4 technical quality criteria — what does his review actually check for?
- HRB / Building Safety Act judgement calls that sit on top of the deterministic HRB trigger in
  `context/commercial.md` — what's genuinely case-by-case?
- Whether moving his review earlier in the fee-proposal sequence (to before scope is locked) is
  feasible, and what would need to change to make that happen
- Any technical standards or compliance checklists that exist only as his personal working
  knowledge
