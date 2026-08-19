---
name: meeting-minutes
version: 0.0.1
status: specified
description: >
  Produce meeting minutes automatically from a transcript, replacing the ~45-minutes-per-meeting
  manual production time — the single largest time-sink row in the audit.
domain: knowledge
module: M3
owner: Ellen Smith
access-tier: firm
triggers:
  - "minutes for [meeting]"
allowed-tools: TBD — not yet built
fixes: F23 (manual minutes production — 30 hrs/wk, £149k/yr)
---

Not yet built. Notion's AI meeting-notes capture is already live (see `SYSTEM.md` §3,
`al-meeting-notes` — that's an AL-AGENT-owned automation, not this repo's). This skill would be
the human-invoked companion: turning that raw transcript into structured, AL-formatted minutes on
demand, and should read `context/governance.md`'s consent-recording gap before it's built —
recording consent currently has no owner.
