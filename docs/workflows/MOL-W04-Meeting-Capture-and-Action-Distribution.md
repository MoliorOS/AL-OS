---
type: workflow-spec
archived: 2026-06-02
date: 2026-05-14
title: "W04 — Meeting Capture and Action Distribution"
archive: true
client: Ackroyd-Lowrie
project: Audit
---
# Coordination Meeting Capture and Distribution Process

> **Audit source trace:** Alahni Brown (`26-05-07-Audit-Team-02`, lines 47–48, 64–66, 78–88) · Joe Maguire (`26-05-07-Audit-Team-03`, lines 38, 42, 50) · Jon Ackroyd (`26-05-06-Audit-Leadership-01`, lines 106–114) · Biyi Sogbesan (`26-05-06-Audit-Team-01`, line 134 — Zoom project chats). Complements `ALAQEP-005 Internal Project Meetings Policy` (policy exists; no process flow document found).

## Roles
*   **Project Lead** (Green)
*   **Meeting Owner / Chair** (Yellow) — usually the Project Lead or a Project Director
*   **Attendees (Consultants + AL Team)** (Light Blue)
*   **Client** (Pink) — when present
*   **Technical Director** (Purple) — when QA sign-off of decisions is required

## Flowchart

```mermaid
flowchart TD
    Start([Project requires recurring<br/>coordination cadence]) --> S1

    subgraph PHASE1[Phase 1 · Pre-Meeting Setup]
        S1[1 · Schedule recurring meeting<br/>weekly or fortnightly ·<br/>Google Calendar]
        S1 --> S1a{Meeting platform?}
        S1a -->|Standing project channel| S1z[Zoom]
        S1a -->|Ad-hoc| S1g[Google Meet]
        S1a -->|Client mandates| S1t[MS Teams]
        S1z --> S1ag
        S1g --> S1ag
        S1t --> S1ag
        S1ag[Issue agenda to attendees]
        S1ag --> S1rec{Record meeting?}
        S1rec -->|Yes| S1con[Confirm consent +<br/>select transcription tool ·<br/>Granola / Otter / Zoom AI / Meet]
        S1rec -->|No| S1man[(Minutes will be manual)]
        S1con --> S2
        S1man --> S2
    end

    subgraph PHASE2[Phase 2 · During the Meeting]
        S2[2 · Run meeting · 2 hrs typical ·<br/>up to 4 hrs with consultants]
        S2 --> S2a[/Notes in parallel:<br/>Apple Notes · Google Doc ·<br/>auto-transcript/]
        S2a --> S2b[Capture decisions, actions,<br/>responsible party]
    end

    PHASE1 --> PHASE2
    PHASE2 --> S3

    subgraph PHASE3[Phase 3 · Minutes Production]
        S3[3 · Transcribe + consolidate<br/>raw notes into formal minutes]
        S3 --> S3a[Format onto AL Word/Docs<br/>template that 'looks nice']
        S3a --> S3qa{Time for second<br/>QA pass?}
        S3qa -->|Yes| S3qa2[Peer reviews minutes<br/>for accuracy]
        S3qa -->|No · commonly skipped| S4
        S3qa2 --> S4
    end

    subgraph PHASE4[Phase 4 · Distribution + Filing]
        S4[4 · Email minutes<br/>to all attendees]
        S4 --> S4a[File in project Egnyte folder ·<br/>D Team Comms or F Notes & Agenda<br/>· OQ#1 unresolved]
        S4a --> S4b[(Drop notes into Zoom chat<br/>as backup tracker · Joe practice)]
        S4b --> S4out[/Minutes Distributed/]
    end

    subgraph PHASE5[Phase 5 · Follow-Up + Action Tracking]
        S5[5 · Issue follow-up emails ·<br/>~1 hr/day estimate · Alahni]
        S5 --> S5a[Cross-reference decisions<br/>against project tracker /<br/>Google Sheet]
        S5a --> S5note[(Inconsistent in practice ·<br/>Joe: 'don't have time')]
        S5note --> S5dec{Meeting produced<br/>contradiction with<br/>prior decision?}
        S5dec -->|Yes| S5res[Raise contradiction ·<br/>resolve before next cycle]
        S5res --> End
        S5dec -->|No| End
    end

    PHASE3 --> PHASE4
    PHASE4 --> PHASE5

    End([Loop closed ·<br/>actions feed MOL-W05 RFI])

    classDef startEnd fill:#E8F5E9,stroke:#2E7D32,stroke-width:2px,color:#000
    classDef lead fill:#C8E6C9,stroke:#388E3C,color:#000
    classDef owner fill:#FFF4B3,stroke:#B89A00,color:#000
    classDef att fill:#BBDEFB,stroke:#1565C0,color:#000
    classDef client fill:#FFC0CB,stroke:#A04060,color:#000
    classDef td fill:#D1B3FF,stroke:#5E35B1,color:#000
    classDef io fill:#FFFFFF,stroke:#555,stroke-dasharray:4 3,color:#000
    classDef decision fill:#FFFACD,stroke:#B8860B,color:#000
    classDef note fill:#F5F5F5,stroke:#999,stroke-dasharray:2 2,color:#444,font-style:italic
    classDef plat fill:#E1F5FE,stroke:#0277BD,color:#000

    class Start,End startEnd
    class S1,S1ag,S3,S3a,S4,S4a,S5,S5a,S5res lead
    class S2,S2b owner
    class S3qa2,S1con att
    class S1z,S1g,S1t plat
    class S2a,S4out io
    class S1a,S1rec,S3qa,S5dec decision
    class S1man,S4b,S5note note
```

**Legend.** Oval = start / end. Rectangle = task (filled by responsible role colour). Parallelogram (dashed border) = data input or output. Diamond = decision. Dotted callout = system note or known gap. Role colours: Project Lead (green) · Meeting Owner / Chair (yellow) · Attendees (light blue) · Client (pink) · Technical Director (purple) · Platform options (sky blue) · start/end (green oval).

---

## Workflow

### 1. Pre-Meeting Setup
*   **Task:** Schedule recurring coordination meeting (weekly or fortnightly depending on project formality) via Google Calendar (Responsible: Project Lead)
*   **Task:** Confirm meeting platform — Zoom for standing project channels, Google Meet for ad-hoc, MS Teams when client mandates (Responsible: Project Lead) *[inferred from Alahni T-02 line 74 — "Google Meets or Zoom or Teams"]*
*   **Task:** Issue agenda to attendees ahead of meeting (Responsible: Project Lead) *[single source — Joe T-03 line 38: "structured meeting programs"; no fixed cadence rule confirmed]*
*   **Decision:** Will the meeting be recorded?
    *   *Yes* -> **Task:** Confirm consent with all attendees and select transcription tool (Granola / Otter / Zoom AI / Google Meet recording) (Responsible: Meeting Owner)
    *   *No* -> Proceed without recording; minutes will be manual.

> **Friction (Jon, L-01 lines 110–114):** "we've got like about 20 different ways… someone's got otter. We just need to kind of consolidate how we produce meeting minutes, ideally automated and with review process. I would like it to be very explicit. Is this a recorded conversation or not and how we can protect against… the legal aspects of when we want to have a private conversation." Tool choice is per-person, not standardised.

### 2. During the Meeting
*   **Task:** Run the coordination meeting — typical duration 2 hours, can extend to 4 hours if multiple consultants need workshop time (Responsible: Meeting Owner) *(Alahni T-02 line 66)*
*   **Task:** Take notes in parallel — typically in Apple Notes (Joe), in a Google Doc, or via auto-transcription if enabled (Responsible: Attendees, Project Lead)
*   **Task:** Capture decisions, action items, and the responsible party for each item (Responsible: Project Lead)

> **Friction (Alahni, T-02 lines 86–88):** Auto-transcription tools "sometimes generate random stuff or they don't really quite understand the context… we can't really rely on that and then sometimes it becomes like a privacy thing too because someone said something in the meeting that they probably shouldn't have said."

### 3. Post-Meeting — Minutes Production
*   **Task:** Transcribe / consolidate raw notes into formal minutes — capture decisions, actions, owners, deadlines (Responsible: Project Lead)
*   **Task:** Format minutes onto AL Word/Docs template so the document "looks nice" (Responsible: Project Lead) *(Jon L-01 line 114)*
*   **Decision:** Is a second QA pass on the minutes time-permitting?
    *   *Yes* -> **Task:** Second set of eyes reviews minutes for accuracy (Responsible: Project Lead or peer) *(Alahni T-02 line 80)*
    *   *No* -> Proceed (commonly skipped under time pressure — Alahni T-02 line 82)

> **Friction (Alahni, T-02 lines 64–66):** "meeting minutes can take depending how long their meeting is can take up to anywhere for like 45 minutes if it's quite thorough and quite detailed."
> **Friction (Joe, T-03 line 38):** "kind of like intermittent phone calls… that can take quite a lot of time like taking formal notes and minutes from meetings. Um sometimes longer than the meeting itself to be honest."

### 4. Distribution and Filing
*   **Task:** Send minutes to all attendees by email (Responsible: Project Lead)
*   **Task:** File final minutes in the project's Egnyte folder (Responsible: Project Lead) *[inferred — no specific sub-folder rule confirmed in sources; ALAQEP-001 Egnyte Folder Structure Policy governs but content not extracted]*
*   **Task:** Drop a copy of notes into the project's Zoom chat as a backup project tracker (Responsible: Project Lead — current practice by Joe) *(Joe T-03 line 50: "I just copy and paste the notes from notes into into the Zoom chat usually to try and like as a tracker of what's happened in meetings if we're not issuing meeting minutes.")*
*   **Status:** Minutes Distributed.

### 5. Follow-Up and Action Tracking
*   **Task:** Issue follow-up emails on individual action items as needed (Responsible: Project Lead — ~1 hour/day estimate by Alahni T-02 line 66)
*   **Task:** Cross-reference any decision against the project tracker / Google Sheet (Responsible: Project Lead) *[inferred — actually carried out inconsistently per Joe T-03 line 42: "I don't do that very regularly usually because I don't have time"]*
*   **Decision:** Did the meeting produce a contradiction with a prior decision?
    *   *Yes* -> **Task:** Raise contradiction to project team; resolve before next coordination cycle (Responsible: Project Lead) *(Joe T-03 line 154: "if they're contradicting themselves, it comes up and tells them the contradiction. Because that happens a lot.")*
    *   *No* -> Close meeting loop.

## Tools Used
Zoom · Google Meet · MS Teams · Granola · Otter · Apple Notes · Google Docs · Word · Email · Egnyte · Google Sheets (project tracker) · Zoom chat (informal tracker).

## Cross-References
*   `ALAQEP-001 Egnyte Folder Structure Policy` — governs minutes filing location.
*   `ALAQEP-005 Internal Project Meetings Policy` — parent policy.
*   `MOL-W05 Consultant Coordination and RFI Tracking` — picks up the action items generated here.

## Open Questions
1.  Which Egnyte sub-folder (D Team Comms? F Notes & Agenda?) is the official minutes home — both exist in the per-project A–G structure but no rule is documented.
2.  Is there an approved AL minutes template? Jon (L-01) references "our Word format or Docs format that looks nice" but no template was located in the Resources pull.
3.  Who is responsible for storing the consent record when a meeting is recorded? (Jon raised the legal exposure; no current owner.)
4.  What is the formal minutes-approval cadence (24h? next meeting?) — not confirmed.
