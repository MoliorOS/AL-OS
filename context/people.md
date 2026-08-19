# People — staff, roles, expertise, pain points

> **Owner:** migration — sourced from the May 2026 audit interviews and `docs/policies/jd-*`.
> No extraction interview needed for the roster below; individual expertise-graph detail (who
> knows what, beyond their title) is thinner and worth building out over time.

## JD career ladder (the type hierarchy for roles)

001 Architectural Assistant Apprentice → 002 Part 2 Architectural Assistant → 003 Architect
(ARB-registered, RIBA 0–7 packages) → 004 Project Architect → 005 Senior Architect → 006
Associate Director → 007 Project Director → 008 Architectural Technician → 009 BIM Manager.
Full text: `docs/policies/jd-*.txt`. A Progression Matrix and Culture Guide exist alongside it in
the business plan.

## Senior team — role, ownership, pain

**Jon Ackroyd** — Co-founder / Managing Director. Owns the money-and-legal half of the director
split (*"Ollie does more of the marketing side. I tend to do more of the money and legal side"*).
Sole builder and maintainer of the weekly cashflow spreadsheet (`context/finance.md`). Owns the
Pinsent Masons GDPR/AI counsel relationship, dispute resolution, board pack, the "All Three"
partnership with Rodon (robotic manufacturing). Pain, in his own words: *"still too much of me
being involved particularly where there's a dispute or something tricky."*

**Oliver Lowrie** — Co-founder / Director, day-to-day contact for this engagement. Self-reported
time split: 30% projects / 20% new-business meetings / ~30% admin+AI+marketing+firefighting / 10%
LinkedIn / 10% systems. Owns the acquisition funnel, sector segmentation, marketing plan, client
onboarding — and, critically, the **scope and DRM logic** (`context/scope.md`), currently
trapped in his own `AL_Fee_Tool.html`. Pain, in his own words: *"that's something we don't do
enough of is a really thorough briefing process that will then act as your guide for the rest of
the project"*; *"The biggest headache in our business is always cash flow. And cashflow, you
can't chase somebody properly unless you did the appointment properly."*

**Wayne McKiernan** — Technical Director. ~2 days per bid. Keeps fee templates current; owns the
"white book" of standard details, Stage 4 technical quality, PI/BSA judgement. **His audit
interview was cancelled and never rescheduled — see `context/technical.md`.**

**Andrew Bonner** — Project Director (recently promoted from Associate Director). ~1 day per bid
(internal sense-check). Owns the Appointments focus area, CMap resourcing entries, public-facing
planning matters. Daily 9:30 informal sync with Joe Maguire — which is, in practice, the real
project tracker.

**Joe Maguire** — Senior Architect / Project Lead. 2 main active projects plus 3–5 concurrent
side projects. Leads AL Academy; supervises apprentice Eustace. On resourcing meetings: *"just
talking, not doing anything."* Suggested feature worth remembering: real-time contradiction
detection for design decisions — *"if they're contradicting themselves, it comes up, tells them
the contradiction. Because that happens a lot."*

**Jo Greenoak** — Operations Director. Confirmed as current OD 2026-05-13, succeeding Hattie
Gryspeerdt. Owns meeting infrastructure, workflow systems, the Dr Logic IT liaison, and the
ALAQEP sign-off chain. Never directly interviewed in the audit — a stated Phase 2 gap.

**Biyi Sogbesan** — Architectural Designer / Computational Designer / AI Developer, at AL since
Aug 2020. Built a BIM–Claude integration ahead of the first discovery call, unprompted; rewrote
it as a custom ArchiCAD HTTP CLI, ~10× faster than the original MCP approach. Four live use
cases: apartment auto-layout, compliance checks, schedule automation, meeting-minute → task
listener. Runs on his own machine only. His own target-state description is worth keeping as the
north star for this repo's rollout: *"you walk into the office, you log in, everyone has this
sort of dashboard, but everyone's dashboard is different depending on what they need… the actual
brain of it lives separately."*

## Operations layer

**Sam Carlisle** — day-to-day operational contact for the Molior engagement; scheduling,
communication routing, deliverable routing. **Ellen Smith** — meeting coordination; never
interviewed, her pain points are undocumented. **Rebecca Latham** — CRM nurture, the hands-on
executor of lead campaigns. **Anita Ford** — Finance Manager: Xero, payroll, invoicing, board
pack.

## Other named staff (no dedicated profile yet)

Phena MacNamara (Head of Technical — QA/design review, RIBA 3–7), Alahni Brown (Part 2
Architectural Assistant / BIM Manager trainee, on a Graphisoft certification track), Eustace
(architecture apprentice via London South Bank University degree apprenticeship), Marta Allona
(Project Director), Agnes Friend (Office Manager), Hattie Gryspeerdt (former Director of
Operations, departed).

## What feeds `roles/`

`roles/{role}.md` files are the per-person, scoped view into this repo. This file is the roster
they're built from — see `roles/README.md` for the tier and access-zone model.

## Open — not yet captured

- A real expertise graph (who knows what domain, beyond job title) — currently only Biyi's and
  Oliver's specific knowledge areas are documented in any depth.
- Individual profiles for the wider practice below senior-management level.
