# Governance — permissions, GDPR, consent, policy index

> **Owner:** Jon Ackroyd (GDPR/AI counsel relationship, consent policy) and Jo Greenoak
> (Operations Director — JumpCloud, IT liaison, ALAQEP sign-off chain). **Status:** Partially
> migrated; the GDPR gap below is real and unresolved, not a documentation lag.

## The permission model this repo inherits

AL-OS does not invent an access model. The audit's own framing, stated as a design constraint:

> "The repository maps what each tool contains; it does not copy data. When a skill runs, it
> fetches what it needs, uses it, and closes the connection. **If an architect cannot see the
> finance folder, Claude cannot either. The AIOS operates within existing JumpCloud permissions.**"

See `roles/README.md` for how this is implemented as access zones across `context/`, `skills/`,
and project data.

## GDPR — the actual gap

**AL currently has no written GDPR policy.** The audit found the file that should hold it —
`ALAQEP-004 GDPR Policy` — contains QA-process text instead. This is a live gap, not a formality:
AL is paying for AI/data counsel (Pinsent Masons, via Jon's relationship) against a baseline that
doesn't exist on paper, and the CRM intake pipeline (`hub@ackroydlowrie.com`) is actively
processing personal data today.

**What is documented as practice, even without a written policy:**

- **Enrich ICP-matched leads only.** Jon, on the CRM design: *"We only want to enrich the ICPs.
  We don't need to delete anyone."* Non-ICP leads are retained but never enriched.
- **A disclosure footer runs on any enrichment email.**
- **Recording consent has no owner.** Jon flagged the legal exposure directly — *"I would like
  it to be very explicit"* — but the decision on whether to record is made per-meeting, and the
  consent record itself is stored nowhere. This gap widens with every new transcription tool the
  firm adopts (Notion AI meeting notes, and the Granola trial).
- Meeting transcripts are understood to auto-delete after roughly a week, though this is not
  written down as policy either.

## JumpCloud

SSO for ~20 portal apps. This is both the incumbent identity system and, per the constraint
above, the permission boundary AL-OS is built to respect. A clean leaver workflow and
project-scoped access provisioning already exist in JumpCloud — `roles/` in this repo should
mirror that structure, not duplicate or override it.

## Policy index — the ALAQEP series

See `docs/policies/` for the full corpus as supplied. **Known data-quality issue:** three live
numbering collisions — two different documents each carry ALAQEP-001, ALAQEP-002, and ALAQEP-004.
Any lookup or index built on top of this repo should key on (number, track, version), not number
alone.

## What feeds `skills/os/*`

Every skill that touches personal data — CRM enrichment, meeting capture, decision logging —
should check this file's ICP-only enrichment rule and the disclosure requirement before writing
anything. None of them should assume consent has been recorded; that's an open gap, not a solved
one.

## Open — not yet captured

- **A written GDPR policy.** The single most consequential gap in this file. Needs Jon + Jo +
  Gemma Duxbury (the GDPR consultant named in recent sessions) to actually produce one — this
  repo can hold it once it exists, not author it.
- **A consent-recording mechanism and owner** for meeting transcription, across every tool the
  firm uses (Notion AI, Granola trial, Zoom before it's dropped).
- **JumpCloud's actual role/group structure**, so `roles/README.md`'s zones can be verified
  against it rather than assumed to match.
