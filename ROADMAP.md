# ROADMAP — the unified roadmap

Jon asked for this on 2026-07-02: *"I feel like we haven't fully utilized you to maximum
effect."* He wanted a single roadmap, not scattered initiatives, integrating Danny's work with
Molior's. This is that document. It has been open since then — first output is this repo.

---

## What's live today

| Component | Status |
|---|---|
| Notion CRM (4 databases) | Live — Pipedrive-parity build shipped 2026-08-19 |
| `hub@ackroydlowrie.com` intake | Live |
| `al-meeting-notes` (Notion → DOCX → Drive) | Live on al-vps, polling since 2026-08-18 |
| al-vps (3 containers: postgres, gbrain, agent) | Live |
| AL-BRAIN vault | Live, thin — a handful of real pages |
| AL-AGENT `email-ingest` cron | Live, every 30 min |
| AL-AGENT `notion-sync` | Live, fixed and idempotent as of 2026-08-19 |
| **AL-OS (this repo)** | **New — scaffolded, this build** |
| Fee Proposal Tool | Not built — briefed only |
| ArchiCAD firm-wide | Not built — n=1 on Biyi's machine |

---

## The build sequence (from the May 2026 audit)

One required Foundation, three modules, ~14 weeks, delivered through Claude:

| Stage | Scope | Workflows closed | Friction rows | Timeline | Price |
|---|---|---|---|---|---|
| Foundation | Ingest AL's AI-ready assets, connect the core MCPs, stand up context + skills | — | — | inside M1 | — |
| **M1 — Foundation + Fee Proposal** | `scope-draft`, `fee-calc`, `drm`, `benchmark` | W01 | F04 (£250–500k/yr exposure), F07, F03 | 6 wks | £11,000 |
| **M2 — Operations + Tracker** | `brief-playback`, `site-data-check`, `stage-qa-gate`, `cashflow-brief`, `portfolio-health`, `resource-check`, `invoice-ready` | W02+W03 | F08–F11, F13, F15–F17 | 4 wks | £7,000 |
| **M3 — Team Layer + Project Memory** | `meeting-minutes`, `action-brief`, `rfi-log`, `decision-search`, `lesson-capture` | W04+W05 | F22–F25 | 4 wks | £6,000 |
| Retainer | Infra upkeep + team support | — | — | ongoing | £800/mo |

**This repo currently builds M1 and the OS-level skills to full depth; M2 and M3 are specified
(scoped and priced, not yet implemented) so the roadmap and the repo stay one shape.**

---

## Adoption path (orthogonal to build order)

- **Phase A (now):** the directors + the champion — Jon, Oliver, Biyi embedded from day one.
- **Phase B:** the senior team — Wayne's technical judgement moves earlier in the fee-proposal
  workflow (today his review lands at Step 5, after scope is already locked at Step 7); Andrew's
  resourcing work reads from connected data instead of a rebuilt spreadsheet.
- **Phase C:** the full practice — ~15 architects, Biyi first on his own projects.

See `roles/README.md` for how this maps to repo access.

---

## What's next, in order

1. **Populate `context/scope.md` and `context/commercial.md` with Oliver** — the single highest-
   value gap. F04 alone is priced at £250k–£500k/yr in scope-creep exposure.
2. **Get Wayne's technical-standards interview scheduled** — it was cancelled during the May
   audit and never rescheduled. `context/technical.md` cannot move past "Critical (assumed)"
   without it.
3. **Build `skills/proposal/*` to `status: live`** once `context/scope.md` and
   `context/commercial.md` are populated — the skills are already specified against them.
4. **Decide the Tier B/C surface** — most of the practice will never open a terminal. Settle
   before Phase B rollout starts, not after.
5. **M2 and M3**, once M1 is running and validated.

---

## What comes after the core (named in the original build plan, not yet scheduled)

- ArchiCAD firm-wide — productizing Biyi's HTTP CLI integration
- Guided project-creation wizard
- Automated planning-constraint search
- Client portal — clients see deliverables once an invoice is paid
