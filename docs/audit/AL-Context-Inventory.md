---
type: context-inventory
archived: 2026-06-02
date: 2026-05-12
title: "AL Audit — Context Layer Deep Analysis"
archive: true
client: Ackroyd-Lowrie
project: Audit
---

# AL Audit — Context Layer Deep Analysis (Day 2)

> Built from a source-by-source pass over the ISO Policy Drive folder (40 files) + 7 transcripts + 2 Business/Marketing PDFs. The Intel Summary §3 and §8 content was treated as **starting hypothesis only** — every asset row, owner claim, and score below is re-grounded in a primary source. The "Corrections" section at the end enumerates everything in the Intel Summary that turned out to be wrong, imprecise, or stale.

---

## 0. Headline findings

1. **The policy set is not a single block.** Three policies (ALAQEP-001, -002, -003) are **board-approved as of 2026-04-14**. The other ~14 ALAQEP policies are still drafts with placeholder approval metadata (`Date Issued: XXX`, `Approved By: HG / Operations Director`). The Intel Summary collapsed both states into "board-approved, pre-rollout" — that is wrong, and it conceals the real risk: the published policy set is much thinner than it appears.

2. **Three structural numbering collisions exist in the ALAQEP set.** Two different documents share each of the numbers ALAQEP-001, -002, and -004. The "approved" set uses one meaning; the "in review" set uses another. This is itself a context-decay artifact and will break any AI knowledge index that keys on policy refs.

3. **`HG` = Hattie Gryspeerdt, former Director of Operations — now departed.** Every draft policy lists `Approved By: HG / Operations Director`. LinkedIn confirms: Hattie Gryspeerdt held the title **Director of Operations** at AL (not just "office manager" as Oliver described her in L358). The policies were authored or approved during her tenure; after her departure, the placeholder was never updated. Agnes Friend succeeded her as Office Manager (BP p.13) — but the title change from Director of Operations to Office Manager may signal a role restructure or a downgrade of the position. **RESOLVED 2026-05-13:** Current Operations Director = **Jo Greenoak** (jo@ackroydlowrie.com). Confirmed by Oliver directly: "That is Jo — copied in." She was CC'd on the reply thread. The `HG / Operations Director` approval role in the ALAQEP chain now has a confirmed holder.

4. **The JD content-mismatch and Sign-Off-SS content-mismatch flags in the resource-index (dated 2026-05-09) are RESOLVED.** Re-pulled 2026-05-12: JDs 004-008 all now hold correct content matching their titles; the Sign-Off-SS ALAQEP-012 GDocs now hold correct ALAQEP-012 content. Someone fixed them between 2026-05-09 and 2026-05-12. **Intel Summary §3 still cites these as broken — must be corrected.**

5. **One *new* content mismatch was found:** `ALAQEP-004 GDPR Policy.docx` (in the "Review week ending 3rd April" folder) actually contains the full ALAQEP-001 Design Review and QA Policy text — not GDPR content. The firm has no GDPR policy under that filename.

6. **"Oliver solo" transcript (2026-05-08) substantially changes Oliver's profile.** Oliver self-reports 30% projects / 20% new-biz meetings / ~30% admin/AI/marketing/firefighting / 10% LinkedIn. His proposal tool is more developed than the Intel Summary said (Pipedrive-linked, fees-bureau-benchmarked, scope/DRM generator, site-context scraper agent) and is the **explicit Phase-1 build target** Oliver wants from this engagement.

7. **The Academy curriculum stated in the Business Plan does not match what Joe described.** Plan says "Module 5: Stage 5-6, Module 6: Stage 5-6" (both same stages — likely a typo). Joe's interview confirms academy is fundamentally aimed at college students with no architecture background, not experienced new hires — so the 6-module structure is *not* the firm-wide onboarding spine the Intel Summary implied it was.

---

## 1. Sources Consulted (Phase B Log)

### 1.1 Local resource files (read directly)

| File | Format | Outcome | Content note | Informs |
|---|---|---|---|---|
| `Resources/resource-index.md` | MD | Read ✓ | Index of Drive folder dated 2026-05-09; flags JD 004-008 and SS-ALAQEP-012 mismatches that I have since verified as RESOLVED | Drive-folder hypothesis to test |
| `Resources/Business & Strategy/AL-BUSINESS-PLAN.pdf` | PDF | **Read ✓ (full — p 1–47; 2026-05-12 re-read)** | Pp 1-19: firm identity, team structure, OKR/Progression Matrix, AL Academy 6 modules, board cadence, Peninsula HR, cashflow ±40% scenarios. Pp 20-47: H&S framework (Peninsula + CJB-CDM), Operations systems user journey, Marketing strategy (concentric model, BCB events, Pipedrive BD + sales funnel), Client Journey workflow (p.30), CA non-scope policy (p.31), Briefing SOP origin (Steve Smith, p.35), ATLG firm membership (p.38), compliance trackers detail (p.39), competency register (pp.40-42), CPD syllabus (pp.42-43), ADDD mandate (pp.45-46), ISO 9001 principles (p.46), ISO drawing numbering convention (p.47). **Graphical content NOT recoverable from text parse:** (a) p.4 — client logo grid ("Some of our clients") — client names absent; (b) p.6 — Profit/Turnover chart 2024–2026 — turnover targets confirmed in text (£1.4m/£1.6m) but profit bar values absent; (c) p.14 — Budget and Cashflow month-by-month charts — column values absent; (d) Case Studies section (5.0) — referenced in ToC but pages appear to start after p.47 and are NOT in this extract — client/project names for Leatherhead, Grove Court, Thomas' Kensington, Lamb Lane, Camberwell, Alva Coachworks not recovered. | All sections |
| `Resources/Business & Strategy/AL-BUSSINES-PLAN.txt` | TXT | Read ✓ | Extracted text of the BP PDF plus Marketing Plan + Tech Stack & AI Strategy PDF page-by-page; Tech Stack PDF extracted as empty (all images) | Confirms Tech Stack PDF is image-only, no text |
| `Resources/Business & Strategy/Ackroyd_Lowrie_Tech_Stack_Strategy_Data_Extraction.md` | MD | Read ✓ | LLM-derived summary of the Tech Stack PDF — must be treated as derived, not primary; describes future-state Claude Enterprise + Egnyte + CMap mirror architecture, Pinsent Masons compliance posture. **NOTE:** Business Plan pp.45-46 are a primary source that partially confirms and supersedes this derivative for the ADDD mandate specifically — see §2.4. | Aspirational future-state input only, not a Context asset; use BP pp.45-46 for ADDD items |
| `Resources/Marketing/MARKETING PLAN-OL v2026.pdf` | PDF (extracted text) | Read ✓ | TOFU/MOFU/BOFU breakdown, ICP segments, hospitality cadence, "2 bids/month" target, "free stuff wins work" | Marketing & BD asset rows |
| `Resources/Marketing/Marketing-Plan-2026-Summary.md` | MD | Read ✓ | LLM-derived summary; one footnote ("£76,288 annual budget") is detail not in the PDF text I could extract — origin unverified | Treated as derived, not primary |
| `Resources/Marketing/AL Marketing — Lead-to-Win Funnel.pdf` | PDF | Not extracted (single-page diagram) | Visual flow chart — described via summary file | — |
| `Resources/Marketing/AL-Marketing-Lead-to-Win-Funnel-Description.md` | MD | Read ✓ | LLM-derived; references "Free Tech Audit" which is suspect — that's a Molior-side concept not AL's. Likely contaminated summary | Treated with caution |
| `Resources/Proposal Tool/AL_Fee_Tool.html` | HTML | Inspected (2,493 lines) | XLSX-export-capable, Leaflet maps, stage-tab UI; matches Oliver's transcript description in detail | Confirms Oliver's tool is real and functional; not just slideware |
| `Resources/Proposal Tool/SiteMAXXER.html` | HTML | Inspected (1,598 lines) | Dark-themed site-viability tool with Leaflet maps; corresponds to "Site Viability App" lead magnet | Confirms BD lead-magnet exists |
| `Resources/Screenshots/Folder Structure/Summary.md` | MD | Read ✓ | Describes Egnyte root (000-Job Files … 009-Scans) and per-project A-G structure with 1124-Kentish Town example | Confirms Egnyte folder structure assertion |

### 1.2 Drive — "ISO Policies for Review" (Drive folder ID `1b627-1J12HjlSs25h2E-NihrD3yq-D68`) — pulled 2026-05-12 via `gws drive files`

**Method:** Listed every subfolder recursively. Exported all Google Docs as text (15 files). Downloaded all `.docx` (18 files) and extracted `word/document.xml` via Python zipfile + regex. One `.xlsx` (ALAQEP-003b) and 9 `.pdf` files left unread (binary form, content known from filename + adjacent docx text).

| File | Format | Outcome | Content note | Informs |
|---|---|---|---|---|
| `HR/Onboarding Policy` | GDoc | Read ✓ | V1 draft, `Date Issued: XXX`, `Approved By: HG / Operations Director`; 6-section policy with comment "Add probation to this policy to make it cover both" | HR row; status: DRAFT |
| `HR/Offboarding Policy` | GDoc | Read ✓ | V1 draft, same HG placeholder; covers resignation/termination/contract-end | HR row; status: DRAFT |
| `HR/Maintenance Compliance Policy` | GDoc | Read ✓ | V1 draft, same HG placeholder; office premises + IT + H&S; references Airtable as system of record | Maintenance row; status: DRAFT; tool-link Airtable |
| `HR/Recruitment, Onboarding and Probation Process.pdf` | PDF | Not extracted (locked) | Process-flow companion to Onboarding policy | — |
| `HR/JDs/Intro for all JDs` | GDoc | Read ✓ | Standard practice-identity preamble used in every JD | JD set framing |
| `HR/JDs/001 - Architectural Assistant Apprentice` | GDoc | Read ✓ | Apprenticeship-track role, no PQE required | JD ladder |
| `HR/JDs/002 - Part 2 Architectural Assistant` | GDoc | Read ✓ | Post-Part 2, 0-3 yrs PQE | JD ladder |
| `HR/JDs/003 - Architect` | GDoc | Read ✓ | ARB-registered, RIBA 0-7 packages | JD ladder |
| `HR/JDs/004 - Project Architect` | GDoc | Read ✓ | **Content NOW MATCHES title** (resource-index 2026-05-09 flagged mismatch — RESOLVED) | JD ladder; correction item |
| `HR/JDs/005 - Senior Architect` | GDoc | Read ✓ | **Content NOW MATCHES title** — RESOLVED | JD ladder |
| `HR/JDs/006 - Associate Director` | GDoc | Read ✓ | **Content NOW MATCHES title** — RESOLVED | JD ladder |
| `HR/JDs/007 - Project Director` | GDoc | Read ✓ | **Content NOW MATCHES title** — RESOLVED | JD ladder |
| `HR/JDs/008 - Architectural Technician` | GDoc | Read ✓ | **Content NOW MATCHES title** (resource-index said it held ALAQEP-012 content — RESOLVED) | JD ladder; correction item |
| `HR/JDs/009 - BIM Manager Role.docx` | DOCX (extracted) | Read ✓ | 32 lines; "principally internally focussed"; references ISO 19650, EIR/MIDP/TIDP/BEP; explicitly states firm does NOT offer full BIM Management services externally | BIM row; status: DRAFT (no version metadata) |
| `QA/Sign-Off Next Board Meeting/ALAQEP-010 Invoicing, Credit Control and Cashflow Policy.docx` | DOCX | Read ✓ | V1 draft, HG placeholder; 14-day payment terms, FM-driven; refs ALAQEP-06 | Finance policy row; DRAFT |
| `QA/Sign-Off/ALAQEP-010a Invoicing... Process.pdf` | PDF | Not extracted | Process companion to -010 | — |
| `QA/Sign-Off/ALAQEP-011a Client Enquiry Initial Screen.docx` | DOCX | Read ✓ | V1 draft, HG placeholder; 6-section enquiry form: conflict, entity, risk flags, commercial sense, outcome | Pre-appointment screen row; DRAFT |
| `QA/Sign-Off/ALAQEP-011b Full Pre-Appointment Credit and Conflict Check.docx` | DOCX | Read ✓ | V1 draft, HG placeholder; 7-section due-diligence form (Experian/Creditsafe explicit) | Pre-appointment screen row; DRAFT |
| `QA/Sign-Off/ALAQEP-012 Internal Project Audit & Review Policy.docx` | DOCX | Read ✓ | V1 draft, HG placeholder; defines audit scope, pass/fail, NCR escalation | Audit policy row; DRAFT |
| `QA/Sign-Off/ALAQEP-012a Internal Project Audit & Review Form.docx` | DOCX | Read ✓ | V1 draft form; sections: CMap, QA, Fee/Scope, Client, Appointment, Egnyte | Audit form row; DRAFT |
| `QA/Sign-Off/ALAQEP-012b Non-Conformance Report.docx` | DOCX | Read ✓ | V1 draft NCR template; severity Minor/Moderate/Major | NCR row; DRAFT |
| `QA/Sign-Off/SS/ALAQEP-012 Project Progress Review Policy` | GDoc | Read ✓ | **NOW correctly holds ALAQEP-012 content** (resource-index flagged ALAQEP-005 content — RESOLVED) | Correction item; superseded version of -012 |
| `QA/Sign-Off/SS/ALAQEP-012a Project Review Form` | GDoc | Read ✓ | **NOW correctly holds form content** — RESOLVED | Correction item |
| `QA/Sign-Off/SS/ALAQEP-010a Appointment and Negotiation Process.pdf` | PDF | Not extracted | Earlier appointment-negotiation flow | — |
| `QA/Approved/ALAQEP-001 Design Review and QA Policy.docx` | DOCX | Read ✓ | **APPROVED — `Date Issued: 260414, Approved By: Board, Review Date: 270414`**; 6-section policy: Author/Checker/Approver model, RIBA 0-7, BEP integration | Core QA row; APPROVED |
| `QA/Approved/ALAQEP-001a Design Review and QA Process.pdf` | PDF | Not extracted | Process flowchart companion | — |
| `QA/Approved/ALAQEP-002 Fee Proposal, Sign Off and Appointment Policy.docx` | DOCX | Read ✓ | **APPROVED 260414 by Board**; £15k threshold, sub-consultant clause, CMap activation rule (6.12), DocuSign requirement (6.13), 6.14 forbids work commencement without signed appointment or deposit | Fee/Appointment row; APPROVED |
| `QA/Approved/ALAQEP-002a Fee Proposal, Appointment and Client Onboarding Process.pdf` | PDF | Not extracted | Companion flow | — |
| `QA/Approved/ALAQEP-002b High Value Fee Sign Off Form.docx` | DOCX | Read ✓ | **Threshold £100,000+** (not £15k as resource-index summary implied for high-value); requires MD + Founding Director + OD + TD sign-off | High-value form row; not dated but stable form |
| `QA/Approved/ALAQEP-002c Non-Standard Terms.pdf` | PDF | Not extracted | Collateral warranty / non-standard terms flow | — |
| `QA/Approved/ALAQEP-003 Project Resourcing Policy.docx` | DOCX | Read ✓ | **APPROVED 260414 by Board**; OD as resource-allocation owner; CMap Resource Schedule as canonical record (5.1, 5.8) | Resourcing policy row; APPROVED |
| `QA/Review wk ending 3rd April/ALAQEP-001 Egnyte Project Folder Structure Policy.docx` | DOCX | Read ✓ | V1 draft, HG placeholder; defines WIP/Issued/Compliance/CDE; ISO 19650 alignment | Folder-structure row; DRAFT; **number collides with the Approved ALAQEP-001 Design Review** |
| `QA/Review wk ending 3rd April/ALAQEP-002 Drawing Naming and Numbering Policy.docx` | DOCX | Read ✓ | V1 draft, HG placeholder; ISO 19650-aligned; **number collides with Approved ALAQEP-002 Fee Proposal** | Drawing-standards row; DRAFT |
| `QA/Review wk ending 3rd April/ALAQEP-004 Drawing Issuing Policy.docx` | DOCX | Read ✓ | V1 draft, HG placeholder | Drawing-issue row; DRAFT |
| `QA/Review wk ending 3rd April/ALAQEP-004 GDPR Policy.docx` | DOCX | Read ✓ | **CONTENT MISMATCH: file actually contains ALAQEP-001 Design Review (Approved 260414) content verbatim.** No GDPR text inside. Number collides with -004 Drawing Issuing | Correction item; **NEW finding** |
| `QA/Review wk ending 3rd April/ALAQEP-007 Project Set Up Checklist.docx` | DOCX | Read ✓ | Short form (no policy header / version block); 11-item project-inception checklist mapping to CMap + Egnyte + Docusign | Project-setup row; FORM (not policy) |
| `QA/SS/ALAQEP-003a Stage Review and QA Process V1` | GDoc | Read ✓ | Short stage-gate process diagram (Kick-off → 0 → 1 → 2 → 3A → 3B → 4A → Tender → 4C); flagged in resource-index as "not read"; now read | Stage-gate row; SUPERSEDED |
| `QA/SS/ALAQEP-005 Internal Project Meetings Policy.docx` | DOCX | Read ✓ | V1 draft, HG placeholder; meeting cadence: Kick-Off / Stage Review / Progress / Lessons Learned | Meetings policy row; DRAFT |
| `QA/SS/SS ALAQEP-007 Project Appointment Policy.docx` | DOCX | Read ✓ | V1 draft, HG placeholder; defines Appointment / Appointment Letter / LOI / Variation / Sub-Consultant Appointment | Appointment policy row; SUPERSEDED |
| `QA/SS/ALAQEP-003b Project Review and Meeting Template.xlsx` | XLSX | Not extracted (binary) | Spreadsheet template — exists | — |
| `QA/SS/Review wk ending 20th March/SS/ALAQEP-005 Fee Proposal V2 (GDoc)` | GDoc | Read ✓ | V2 process diagram: <£15k vs ≥£15k tracks, conflict check via ALAQEP-011, deposit gate, credit check, CMap activation | Fee-process row; SUPERSEDED (still useful as v2 detail) |
| `QA/SS/Review wk ending 20th March/SS/ALAQEP-005 Fee Proposal V2.pdf` | PDF | Not extracted | Locked V2 of fee process | — |
| `QA/SS/Review wk ending 20th March/SS/ALAQEP-003a Stage Review V1.pdf` + `V2.pdf` | PDFs | Not extracted | Superseded stage-review flows | — |
| `QA/SS/ALAQEP-101a / ALAQEP-010a / ALAQEP-005 V1 (3 PDFs)` | PDFs | Not extracted | Older versions of invoicing + fee-proposal processes from Feb 2026 review cycle | — |

**Drive read summary:** 15 Google Docs read; 18 DOCX downloaded and text-extracted; 9 PDFs and 1 XLSX deliberately left unread because the same content is recoverable from companion DOCX or GDoc files. No files were inaccessible.

### 1.3 Transcripts (read in full)

| File | Date | Participants | Use |
|---|---|---|---|
| `26-04-24-Discovery-01.md` | 2026-04-24 | Oliver, Biyi | Source of "design is fucking intentional", initial AI-OS framing, confirmation Biyi built BIM-MCP "three days ago", Oliver/contractor relationship pattern |
| `26-04-29-Discovery-02.md` | 2026-04-29 | Oliver Lowrie + Jon Ackroyd (transcript labels are name-swapped — Jon speaks under "Jon Lowrie" label; Oliver speaks under "Oliver Ackroyd" label) | Close meeting; confirms 1500 GBP audit fee, 50/50 payment, Pinsent Masons GDPR/AI counsel, "Danny" first reference |
| `26-05-06-Audit-Leadership-01.md` | 2026-05-06 | Jon Ackroyd (labelled "John") solo | Headline source for: founder bottleneck "95% of work", Marta absent one month, board cadence, custom weekly cashflow spreadsheet, CMap/Xero/Futurli stack, town hall June 2026, ISO 9001+14001 target, "All Three" partnership with Rodon, lifecycle knowledge only in Jon+Oliver+Andrew (+ partially Wayne) |
| `26-05-06-Audit-Leadership-02.md` | 2026-05-06 | (header says Oliver) — **BYTE-IDENTICAL CONTENT to Leadership-01** apart from header line. Old file. Superseded by the 05-08 file. | Diagnostic of file mislabel only — see "Corrections" |
| `26-05-08-Audit-Leadership-02.md` | 2026-05-08 | Oliver Lowrie solo | **Source of Oliver's real time-split (30% projects / 20% new biz / 10% firefighting / 10% AI / 10% marketing / 10% LinkedIn random / 10% systems), full acquisition funnel, Pipedrive boards detail ("lapse board not touched for a year"), Fee Tool walk-through (Fees Bureau benchmark, scope/DRM generator, broken site-scraper), Eversleigh = Christian, sector segmentation (Berkeley/Vistry/Bellway et al. = 50% of London new homes from 14 cos), "Hattie was our old office manager" (L358 — imprecise; LinkedIn confirms her title was Director of Operations), weekly finance meeting = 1hr × 4 people** |
| `26-05-06-Audit-Team-01.md` | 2026-05-06 | Biyi Sogbesan | ArchiCAD MCP→HTTP migration, localhost port architecture, 4 live use cases (apartment auto-layout, compliance check, schedule auto, Google Sheets minute→task), no chat-interface yet (Claude Code only), CMap DRS CSV mention, "no one uses anything at the moment" (AI adoption baseline) |
| `26-05-07-Audit-Team-02.md` | 2026-05-07 | Alahni Brown | Currently in Graphisoft BIM course (one day/wk blocked in CMap), inherits Phena's BIM-manager future role, BIM Q&A ~30 min/day; "we don't have a set standard with meeting minutes / agendas", "people work differently — I ask the project lead — it depends who it is", "we don't have a unified template source" (recent bid-process lesson learned), QA most-time-intensive least-protected |
| `26-05-07-Audit-Team-03.md` | 2026-05-11 (filename says 05-07 but transcript date says 05-11) | Joe Maguire | Project trackers in Google Sheets "I don't do that very regularly because I don't have time", CMap logged once/week Fridays for timesheets only, no formal sign-off system, Academy = New City College students + South Bank apprenticeship, **clear separation between Academy onboarding and experienced-new-hire onboarding** ("you just show them"), Joe works remotely, "I spend a lot of time people talking to me about things I may be doing in the future" |

---

## 2. Asset Inventory Table

Every row links to ≥1 primary source. Format codes: GDoc=Google Doc; DOCX=Word; PDF=Locked PDF; XLSX=Excel; HTML=tool; SS=spreadsheet; SRV=server folder. Status precision: **Approved** (Board-approved, dated) · **Draft** (written, placeholder approval) · **Superseded** (older version, retained on Drive) · **Deployed** (in active use) · **Tribal** (not written down).

### 2.1 Identity & Strategy

| Asset | Format | Location | Owner | Author | Status | Last updated | Source-of-truth evidence | Notes |
|---|---|---|---|---|---|---|---|---|
| Business Plan 2025 | PDF | Local Resources copy; also "sent to insurers" annually | Jon | Jon+Oliver | Approved (annual cycle) | Cover dated April 2025; pages dated 2024 | `AL-BUSINESS-PLAN.pdf` pp 1-47 (full re-read 2026-05-12); Jon: "it's actually produced as a sort of business plan that we have to send to our insurers" (Leadership-01 L65) | Cover/internal dates inconsistent (2024 vs 2025) — minor doc-hygiene issue. **Previously noted as "parse fails after p.19" — now fully read.** Client logo grid (p.4), financial charts (p.6, p.14), and Case Studies section (5.0, after p.47) are graphical-only and not recovered — see §1.1 source entry for detail. |
| Board governance (Non-exec advisors) | Informal | Board meetings (monthly) | Jon+Oliver | — | Live, informal | BP pp.9: Mark Hallett (Director, Igloo Developments, appointed 2022 — developer-client perspective used in bids); Mads Jensen (Safaira founder — now informal only); Matt Ellis (Managing Partner, accountant — presents financial figures at board monthly) | None of these advisors appear in the Drive policy set; their engagement is entirely relationship-based. Mark Hallett's developer-client access is a competitive BD asset. Matt Ellis attends alongside Anita Ford + both directors + Head of Technical + Project Directors since 2024. |
| Marketing Plan 2026 | PDF | Local Resources copy | Oliver | Oliver | Approved/in use | 2026 cycle | `MARKETING PLAN-OL v2026.pdf` (4 pages of working diagrams); summary at `Marketing-Plan-2026-Summary.md` | Plan-OL = "Oliver". Includes ICP, sales matrix, content pillars, hospitality cadence |
| Lead-to-Win Funnel diagram | PDF | Local Resources copy | Oliver | Oliver | Working diagram | Undated | `AL Marketing — Lead-to-Win Funnel.pdf` (single page); Oliver redraws live in Miro during Leadership-02 (L64-122) | Live in Oliver's Miro board, not the PDF |
| Values + Approach document | Draft | "Stuck between founders" — no shared location yet | Jon+Oliver | Jon+Oliver | Draft — INCOMPLETE | (in flight) | Jon: "me and Ollie are working on a kind of new set of or clar a distilled set of our values… that like these things is still stuck between the two founders" (Leadership-01 L65) | Specifically called out as not finished |
| Culture Guide | (mentioned) | Academy/HR system | Jon+Oliver | Jon+Oliver | Exists, deployed | — | Business Plan p 17: "Ackroyd Lowrie created a practice 'Culture Guide'" | Document itself not present in audit pull; only referenced |
| Progression Matrix | Internal form | HR/Academy system | Joe + Jon (line managers) | Jon (HR design) | Deployed | Used annually + 6-month check-in per BP | Business Plan p 18; Joe (Team-03 L82): the Matrix maps "knowledge skills and behaviors" required by South Bank apprenticeship | Confirmed as live; specific apprentice (Eustace) tracked |
| AL Academy syllabus (6 modules) | Recorded video platform | AL Academy online | Joe | Joe | Deployed | Per BP p 19 | Business Plan p 19 lists Modules 1-6; **NOTE Modules 5 and 6 both labelled "Stage 5-6" — possible typo in source** | See Knowledge Gap row on senior-onboarding |
| Tech Stack & AI Strategy deck | PDF (5 pp, image-only) | Local Resources copy | Jon | Jon (with Danny consultation) | Working document | 2026-04 vintage | `Ackroyd Lowrie Tech Stack & AI Strategy.pdf` extracted as 0 text — confirms it is image-only; `Ackroyd_Lowrie_Tech_Stack_Strategy_Data_Extraction.md` is an LLM derivative, **not a primary source** | Use derivative file with caution — it cites pages/items that cannot be verified from the image PDF |
| Miro mapping board (tools + outputs) | Miro | Jon's Miro | Jon | Jon | Working | 2026-05 | Jon: "I started to just map this was for me" (Leadership-01 L83-93); Oliver: "I started doing one yesterday" (Leadership-02 L206) | Both directors are mapping in Miro — Oliver's funnel + Jon's tools-and-outputs — not one consolidated board |

### 2.2 Policies — ALAQEP series

**Important: the "ALAQEP" set is split across an Approved track and a Drafts track with three numbering collisions.** Listing every policy as it currently exists on Drive.

| Asset | Number | Format | Drive folder | Status | Approval date | Source | Notes |
|---|---|---|---|---|---|---|---|
| Design Review and QA Policy | ALAQEP-001 | DOCX | `Approved/` | **APPROVED** | 2026-04-14 (Board) | `alaqep-001-design-review-approved.txt` line 2 | Core QA policy — Author/Checker/Approver model |
| Egnyte Project Folder Structure Policy | ALAQEP-001 (collision) | DOCX | `Review wk ending 3rd April/` | DRAFT | XXX / HG placeholder | `alaqep-001-egnyte-folder-structure.txt` line 2 | Same number as Design Review — **numbering collision** |
| Fee Proposal, Sign Off and Appointment Policy | ALAQEP-002 | DOCX | `Approved/` | **APPROVED** | 2026-04-14 (Board) | `alaqep-002-fee-proposal-policy-approved.txt` line 2 | Includes 6.14: no work without signed appointment or deposit |
| Fee Proposal, Appointment and Client Onboarding Process (V2) | ALAQEP-005 (in process role) | GDoc | `Sign Off Next Board Meeting/SS/` | SUPERSEDED (V2 still on Drive) | XXX / HG | `alaqep-005-v2.txt`; also released as PDF `…V2-20260313.pdf` | This is the *process* doc; conflicts with the Approved -002 numbering |
| High Value Fee Sign Off Form | ALAQEP-002b | DOCX | `Approved/` | **Approved as form** (no version block) | — | `alaqep-002b-high-value-fee-form.txt` | **Threshold £100,000** (resource-index summary implied £15k threshold — wrong) |
| Non-Standard Terms, Collateral Warranties Process | ALAQEP-002c | PDF | `Approved/` | Approved (filename "V1-260408") | 2026-04-08 | filename only | Not text-extracted |
| Drawing Naming and Numbering Policy | ALAQEP-002 (collision) | DOCX | `Review wk ending 3rd April/` | DRAFT | XXX / HG | `alaqep-002-drawing-naming.txt` line 2 | Number collision |
| Project Resourcing Policy | ALAQEP-003 | DOCX | `Approved/` | **APPROVED** | 2026-04-14 (Board) | `alaqep-003-project-resourcing.txt` line 2 | OD owns allocation; CMap Resource Schedule is canonical |
| Stage Review and QA Process V1 (the *process* companion to -001) | ALAQEP-003a | GDoc + PDF | `SS/` (V1), `SS/Review.../SS/` (V2) | SUPERSEDED on Drive | 2026-02-23 (V1) / 2026-04-07 (V2) | `alaqep-003a-stage-review-v1.txt` | The V1 GDoc was flagged "Not read" in resource-index — now read |
| Project Review and Meeting Template | ALAQEP-003b | XLSX | `SS/` | Form (binary, not extracted) | — | filename | — |
| Drawing Issuing Policy | ALAQEP-004 | DOCX | `Review wk ending 3rd April/` | DRAFT | XXX / HG | `alaqep-004-drawing-issuing.txt` line 2 | References "ISO9001/14001-002 Quality Assurance Drawing Checking Policy" — a parallel doc not found on Drive |
| GDPR Policy (intended) | ALAQEP-004 (collision) | DOCX | `Review wk ending 3rd April/` | **CONTENT MISMATCH** — file holds Design Review/QA content | n/a | `alaqep-004-gdpr-policy.txt` line 1 reads "Design Review and Quality Assurance Policy" | **No GDPR text exists in this file.** Firm has no GDPR policy under this name |
| Internal Project Meetings Policy | ALAQEP-005 (the *policy*) | DOCX | `SS/` | DRAFT | XXX / HG | `alaqep-005-meetings-policy.txt` line 2 | Distinct from ALAQEP-005 fee-proposal process — second number collision pattern (process vs policy) |
| Project Set Up Checklist | ALAQEP-007 | DOCX | `Review wk ending 3rd April/` | Form (in use as checklist) | ALAQEP-007-202602218-V1 (dated) | `alaqep-007-project-setup-checklist.txt` + Oliver email screenshot 2026-05-13 | **Full confirmed item list (from ALAQEP-007 screenshot, 2026-05-13):** Form Completed By · Date · Project Name · Client · Client Onboarding Form Completion (if relevant) · DocuSign Template Prepared (if relevant) · Written Instruction Received · CMap Set Up with Accurate Information · CMap Resourcing Schedule Populated · Egnyte Folder Set Up with correct folder structure · Appropriate Resource allocated · Tracker Set Up · Kickoff Meeting Scheduled. Saved in Project Folder on Egnyte + Activities tab on CMap. **Distinct from the "10 crucial things" site-data items in W05 §4** — ALAQEP-007 is admin/systems setup; the site-data checklist lives in a Google Sheet tracker Oliver shared separately. |
| Project Appointment Policy (SS) | ALAQEP-007 | DOCX | `SS/` | SUPERSEDED draft | XXX / HG | `ss-alaqep-007-appointment.txt` line 2 | Earlier version, "SS" prefix in filename |
| Invoicing, Credit Control and Cashflow Policy | ALAQEP-010 | DOCX | `Sign Off Next Board Meeting/` | DRAFT (pending board) | XXX / HG | `alaqep-010-invoicing-policy.txt` line 2 | 14-day terms; FM-driven; refers to non-existent ALAQEP-06 |
| Invoicing/Credit Control/Debt Collection Process | ALAQEP-010a | PDF | `Sign Off Next Board Meeting/` | (process companion) | 2026-03-06 (filename) | filename | Not extracted |
| Client Enquiry Initial Screen | ALAQEP-011a | DOCX | `Sign Off Next Board Meeting/` | DRAFT (pending board) | XXX / HG | `alaqep-011a-client-enquiry.txt` line 2 | Front-end conflict + entity + risk-flag screen |
| Full Pre-Appointment Credit and Conflict Check | ALAQEP-011b | DOCX | `Sign Off Next Board Meeting/` | DRAFT (pending board) | XXX / HG | `alaqep-011b-credit-conflict.txt` line 4 | Experian/Creditsafe references |
| Internal Project Audit & Review Policy | ALAQEP-012 | DOCX | `Sign Off Next Board Meeting/` | DRAFT (pending board) | XXX / HG | `alaqep-012-internal-audit-policy.txt` line 1 | Audit Pass/Fail + NCR escalation |
| Internal Project Audit & Review Form | ALAQEP-012a | DOCX | `Sign Off Next Board Meeting/` | DRAFT form | — | `alaqep-012a-audit-form.txt` | 6 audit areas + Egnyte folder-structure check |
| Non-Conformance Report | ALAQEP-012b | DOCX | `Sign Off Next Board Meeting/` | DRAFT NCR template | — | `alaqep-012b-non-conformance.txt` | Minor/Moderate/Major severity scale |
| Project Progress Review Policy (older v of -012) | ALAQEP-012 | GDoc | `Sign Off/SS/` | SUPERSEDED draft | XXX / HG | `signoff-ss-alaqep-012-policy.txt` line 1 | Resource-index claimed this file mislabelled — **VERIFIED FIXED 2026-05-12** |
| Project Review Form (older v) | ALAQEP-012a | GDoc | `Sign Off/SS/` | SUPERSEDED | — | `signoff-ss-alaqep-012a-form.txt` | Likewise FIXED |
| Appointment and Negotiation Process | ALAQEP-010a | PDF | `Sign Off/SS/` | (process, older) | 2026-03-13 | filename | Not extracted |
| Various older PDFs (-101a, -010a, -005 V1, -003a V1/V2) | mixed | PDFs | `SS/...` | SUPERSEDED | Feb-Mar 2026 | filenames | Not extracted; historical only |

### 2.3 HR

| Asset | Format | Location | Owner | Author | Status | Source | Notes |
|---|---|---|---|---|---|---|---|
| Onboarding Policy | GDoc | Drive HR/ | Operations Director (per policy) | Hattie Gryspeerdt (HG) — former Dir. of Operations | DRAFT (placeholder approval — author departed) | `onboarding-policy.txt` lines 1-7 | Comment "[a] Add probation to this policy to make it cover both" — author still iterating; ownership unconfirmed post-departure |
| Offboarding Policy | GDoc | Drive HR/ | Operations Director | Hattie Gryspeerdt (HG) — former Dir. of Operations | DRAFT | `offboarding-policy.txt` lines 1-7 | Mentions exit interview, asset return, system access removal |
| Maintenance Compliance Policy | GDoc | Drive HR/ | Operations Director + Office Manager | Hattie Gryspeerdt (HG) — former Dir. of Operations | DRAFT | `maintenance-policy.txt` lines 1-7 | References **Airtable as system of record for maintenance tracking** — confirms intel-summary tool inventory |
| Recruitment, Onboarding & Probation Process | PDF | Drive HR/ | OM + LM | "HG" + ops | (Process flow, locked PDF) | filename (2026-03-30 mod date) | Not extracted; companion to onboarding policy |
| JD set (001-008 = GDocs; 009 = DOCX) | 9 documents | Drive HR/JDs/ | Operations | various | All in use; **NOTE all draft template content (no version block)** | All 9 read | Career ladder is complete and titles match content as of 2026-05-12 |
| Apprenticeship link (South Bank University) | External programme | external | Joe (academy lead) | external | Live | Joe Team-03 L82: "we got registered with London South Bank University and they have an architecture apprenticeship scheme" | Eustace named as current apprentice; 4 days work / 1 day uni; gov-funded education |
| New City College link (work experience) | External programme | external | Joe | external | Live | Joe Team-03 L82 | 6 openings / 2 students at a time / Mon + Fri |
| Peninsula HR & H&S contract (5 yr) | External service | — | Operations | external | Live | BP p 10 | Provides legal/mental-health support 24/7; H&S framework |
| CJB (CDM construction safety advisor) | External service | — | Operations | external | Live | BP p 20: "AL have employed CJB to support them in putting in place CDM policies for the business, and also in relation to setting up project CDM project trackers and processes" | Distinct from Peninsula (HR/H&S); CJB owns CDM policy and tracker setup specifically. Relevant to the Building Safety Act compliance thread. No CJB-authored documents appeared in the Drive pull — unclear if output is in Egnyte. |
| Steve Smith (briefing process consultant) | External consultant | Output: standard briefing document format embedded in fee proposals and tracker | Operations / Andrew (appointment owner) | external | Delivered (one-off engagement — SOP now in use) | BP p 35: "AL hired former Head of Masterplanning at Farrells, Steve Smith, to provide a detailed workshop and procedures to ensure better briefing for projects is achieved" | A standard-format briefing document resulted from this engagement and is now included in all fee proposals. Document itself not in the Drive pull — likely lives on Egnyte. Steve Smith is not a current retainer; the output is the asset. |

### 2.4 Standards & Templates (Drawings, BIM, Documents)

| Asset | Format | Location | Owner | Status | Source | Notes |
|---|---|---|---|---|---|---|
| BIM Manual (labelling/import/conventions) | (form unconfirmed — likely DOCX/PDF on Egnyte) | Egnyte `001-Resources` | Clodagh (previous BIM Mgr) → Alahni (in training) | Exists, used | Alahni Team-02 L34: "we do at a really high level have a BIM manual which was set up by the previous BIM manager" | Document itself not in the audit pull; status = "high-level" not granular |
| ArchiCAD project template | Template file | Egnyte | Biyi (current keeper) | Exists, used | Alahni: "we do have an ArchiCAD template" (Team-02 L34) | Standard practice template; Biyi has embedded firm standards in CLI tool |
| Adobe Suite template (InDesign) | Template | Egnyte | Joe / Alahni | Exists, used | Alahni: "we do have like an Adobe suite template as well" (Team-02 L34); Biyi describes InDesign template structure (Team-01 L114) | Used for planning packs |
| Issue sheets / Drawing register | Form | per project | Project Lead | Exists | ALAQEP-004 Drawing Issuing draft policy references | Format not standardised (per ALAQEP-004 draft: "Insert location – Common Data Environment / Server Path") |
| QA "white book" of standard details | Reference doc | Egnyte | (unclear) | Exists, used by Biyi | Biyi Team-01 L114: "I kind of input some standard details into Gemini, ask it to reference certain things from from our white book" | Single source of truth confirmed for details |
| Project tracker (per-project Google Sheet) | GSheet | Egnyte (per project) | Project Lead | Exists, **inconsistently maintained** | Joe Team-03 L42: "I don't do that very regularly usually because I don't have time"; Jon Leadership-01 L121-125 demos a Kentish Town tracker that is "not completed" | Documented expectation, weak deployment |
| Compliance / planning / building-control trackers | (sub-sections of project tracker) | Egnyte (per project) | Project Lead | Exists, weak | Jon Leadership-01 L121: "there is then building control which are like compliance, CDM…there's actually this isn't the full there's another tracker which kind of has basically checklists" | Multiple tracker layers; reporting is "flawed" per Jon |
| Unified template / reference structure (firm-wide) | (in progress) | Egnyte | Alahni (volunteer surfacer) | **In construction** — lessons-learned from recent bid | Alahni Team-02 L34: "we have started to progress with it now…we recently did a really big bid process to obtain a new project and a lot of the previous like brochures…were all sort of in PDF forms and saved in different locations" | Worth flagging as a Foundation-1 candidate |
| ISO 19650-aligned Drawing Numbering Convention | Standard embedded in ArchiCAD template (set at project start) | Egnyte + ArchiCAD template | Biyi (template keeper) | **Deployed** | Business Plan p.47 (primary source — full convention documented) | Full convention: `{4-digit Project Code} - {Originator: ALA} - {Zone: XX/ZZ/NB} - {Level: B2/B1/00/0M/01…} - {Form: DR/BQ/CM/DA/M2/M3/SA/SH/RP} - {Discipline: A} - {Package+DrawingNo} _ {Title}`. Example: `1500 - ALA - XX - 00 - DR - A - 01100 _ Existing Ground Floor Plan`. Package codes: 99=Sketch, 10=Planning, 00=GA, 01=Demolition/Existing, 05=Areas. **This is a primary-source Deployed standard — distinct from the ALAQEP-002 Drawing Naming draft (which is still unapproved and references the same convention but hasn't been formally rolled out as policy).** |
| ADDD engagement deliverables (Alister Lewis) | Report + recommendations + roadmap | Egnyte (expected); Drive pull confirmed engagement is in-flight | Operations / Jon | **In progress (ongoing commitment)** | Business Plan pp.45-46 (primary source, confirmed 2026-05-12): "Automated Data Driven Design is a company that specialises in ConTech software, AEC software, using data and automation to improve the efficiency, sustainability and quality of construction projects." Mandate: ISO 9001 + 14001 alignment; Egnyte folder structure, naming/numbering, ISO 19650 alignment. Deliverables: comprehensive report + actionable recommendations + implementation roadmap. | **Previously flagged as derived-only (LLM summary of image-only PDF). Business Plan pp.45-46 are primary source — upgrade to confirmed, in-progress.** ADDD has already issued initial advice on drawing management. Engagement ongoing "with a commitment to implement." The ISO drawing numbering convention above is the visible output of this work. |

### 2.5 Project setup, fee, finance

| Asset | Format | Status | Source | Notes |
|---|---|---|---|---|
| Project Set Up Checklist | DOCX form | Form, in use | `alaqep-007-project-setup-checklist.txt` + Oliver email 2026-05-13 | **ALAQEP-007-202602218-V1.** 13-item admin/systems setup form: client onboarding, DocuSign, written instruction, CMap setup, CMap resourcing, Egnyte folder, resource allocation, tracker, kickoff meeting. Saved to Egnyte project folder + CMap Activities tab. Distinct from the site-data "10 crucial things" (Google Sheet tracker). |
| Fee Proposal Process (current track: -002 Approved + -005 V2 SS) | DOCX policy + GDoc process + PDF V1/V2 | Policy approved, process superseded mid-flight (drafts everywhere) | `alaqep-002-fee-proposal-policy-approved.txt`; `alaqep-005-v2.txt` | Policy says <£15k = Appointment Letter only; ≥£15k = full proposal + appointment |
| Custom AL Fee Tool | HTML | Live prototype | `AL_Fee_Tool.html` (2,493 lines); Oliver Leadership-02 L182-264 walks through it | Inputs: client (Pipedrive autocomplete), site (Leaflet + scraper agent — currently broken), HRB flag, target units, construction value, service tier; outputs: fee, scope, DRM, benchmarked vs Fees Bureau. NOT institutionally deployed |
| SiteMAXXER (Site Viability App) | HTML | Live lead-magnet | `SiteMAXXER.html` (1,598 lines); referenced as "site viability app" in Marketing Plan and Oliver Leadership-02 L106 | Email capture → automated nurture |
| Custom weekly cash flow spreadsheet | XLSX | Live, **single-author (Jon only)** | Jon Leadership-01 L165: "I built a beast of a spreadsheet…I run um I've got targets financial targets" | Weekly (not monthly like off-the-shelf tools); tracks £150k-£7k June dip; predicted vs actual collections at 106% |
| CMap charge-out spreadsheet (320 Tech Salaries Column O) | XLSX | Authoritative for rates | Cited in Intel Summary §7; confirmed presence | Source of £126.82/£181.25/£95.71 blended rates |
| Pipedrive boards (Monthly Sales, Targets, Accounts, Lapse, Partners) | SaaS | Mixed deployment | Oliver Leadership-02 L142-152: Monthly Sales used; Lapse "I haven't touched this for like a year"; Targets "we don't keep this very up to date" | The CRM exists but is partially abandoned at the funnel-tracking level |
| Xero / Futurli board pack | SaaS + PDF deck | Live, monthly | Jon Leadership-01 L105; BP p 9 | Anita manually compiles observations from Xero + CMap + Futurli |
| Client Journey workflow | PDF diagram (static) + Oliver's Miro (live) | Local Resources copy; Miro | Oliver | Static: documented / Live: working | BP p.30 (primary source diagram); Oliver Leadership-02 L196-204 (Miro redraw) | Documented flow: EVENT/RECOMMENDATION/HUNTING PARTNER → pitch doc/website → Visit & Call/Capacity Study → DocuSign → 7-stage lifecycle (Fees → Pre-app → Planning → Technical Design → Site → Stage 6 → In use) → WFM+Xero billing (Deposit + Invoice + Final Invoice) → feedback loop back to marketing. The BP PDF diagram is the static reference; Oliver's Miro is the live, more current version. |
| CA non-scope policy | Declared policy (in Business Plan) | — | Jon+Oliver (board decision) | **Deployed policy** | BP p.31 (primary source): "Contract Administration: AL no longer undertakes contract administration." and "AL no longer undertakes contract admin or project management on new projects going forward." | **This resolves Gap #11 (see §3).** AL's Stage 6-7 engagement is limited to site visits and post-occupancy visits — not full CA. Specialists/PMs/contractors are "directly managed by the client, PM, or Contractor." AL provides site inspection tools for their visits. |
| Standard Terms (Trowers & Hamlins) | DOCX/PDF (Docusign template in CMap) | CMap + Docusign | Operations / Jon (legal) | Deployed, annually reviewed | BP p.32: "AL employed leading solicitor's firm Trowers and Hamlins to produce their own standard set of terms" (from 2020). Enhancements: (1) fire exemption clauses linked to PI cover, (2) basement exclusion clauses, (3) improved payment terms for debt collection. | Loaded into CMap template and auto-generated with fee proposal. All contracts signed via Docusign. Work cannot commence without completion. Bespoke contracts/collateral warranties checked by both insurers' solicitors and AL's solicitors before signing. |

### 2.6 BD & Marketing assets

| Asset | Format | Status | Source | Notes |
|---|---|---|---|---|
| Marketing Plan 2026 | PDF | Approved | `MARKETING PLAN-OL v2026.pdf` | "2 bids/month" target; "free stuff wins work"; ICP segments |
| Lead-to-Win Funnel diagram | PDF/Miro | Working diagram | Oliver Leadership-02 L196-204 redraws live | The PDF version is dated; Oliver's Miro is the live version |
| Breakfast Club Briefings | Event series | Live, monthly | BP + Marketing Plan; Oliver Leadership-02 L86 | Christian (Eversleigh) organises events + populates tables |
| Urban Forecast podcast | Audio/video | Live, monthly | Marketing Plan | Used as a "way to interview targets we want" (Oliver L82) |
| Eversleigh retainer (Christian) | External service | Live | Marketing Plan; Oliver Leadership-02 L68: "we have people on a retainer whose job it is to basically go out and bring us leads" | Acts as event organiser + lead populator |
| White papers (Co-living, Student Resi) | PDF lead magnets | Co-living: in production "this year"; Student Resi: re-release | Marketing Plan; Oliver Leadership-02 L98 | Substack-adjacent content marketing |
| Substack newsletter | Web platform | "semi-automated, I just never like what it comes up with" | Oliver Leadership-02 L102 | Generation pipeline exists, output rejected |
| Sporting hospitality programme (Harlequins, West Ham, cricket) | Calendar of events | Live | Marketing Plan; Oliver Leadership-02 L88 | 1 sports match / month |
| LinkedIn content pillars (Jon: commercial+retrofit+creative-ed; Oliver: regen+living+AI) | Editorial split | Live | Oliver Leadership-02 L108-110 | Explicit split between directors to avoid contradiction |
| LinkedIn automation (Zavari, prizes incentive) | External SaaS + £600/yr prize budget | **Broken** (Zavari flagged by LinkedIn as automation) | Oliver Leadership-02 L32; Marketing Plan p 1 | Currently no outbound automation working |

### 2.7 Tools-as-context (Biyi's CLI)

| Asset | Format | Status | Source | Notes |
|---|---|---|---|---|
| ArchiCAD CLI (HTTP-on-localhost) | Code | **Deployed on Biyi's machine only** — not firm-wide | Biyi Team-01 L38 (architecture history MCP → HTTP), L54 (4 live use cases) | Sole builder = Biyi; multi-machine tested but not rolled out |
| Apartment auto-layout use case | Code feature | Live | Biyi Team-01 L54 | Pre-built into CLI |
| Compliance check (stairs/lifts/regs) use case | Code feature | Live | Biyi Team-01 L54 | Auto-update non-compliant elements |
| Schedule automation (area/window/door) | Code feature | Live | Biyi Team-01 L54, L118 | Exports to Excel in firm format |
| Google Sheets task-tracking listener | Code feature | Live | Biyi Team-01 L118: "AI is already listening into the meetings, take a note and then given me like a summary…then Claude would implement those uh changes…it would just update the Google Sheets document" | Already operational on Biyi's projects |

---

## 3. Knowledge Gap Table

Items where the firm depends on someone's memory or fragmented inboxes, with an explicit evidence anchor.

| #   | Gap                                                                                          | Who currently carries it                                         | What breaks if they leave                                                                                                                                                                                                                                                 | Evidence (transcript / file)                                                                                                                                                                                                                                                                                                                                    | Recoverable from?                                                                                                                                                                                                              |
| --- | -------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| 1   | Full project lifecycle (marketing → feas → planning → tech → CA → post-occupancy → next-bid) | Jon, Oliver, **partially Andrew, partially Wayne**               | New work doesn't get won; disputes can't be resolved; projects with mid-flight handovers stall (Marta absence example)                                                                                                                                                    | Jon Leadership-01 L69: "probably only me and Ollie maybe Andrew maybe Wayne…like there's not who understands the whole process from creation of marketing material to doing a feasibility study to…dealing with disputes in contract"                                                                                                                           | Document, interview-mine, mostly tribal — Foundation must capture this                                                                                                                                                         |
| 2   | Per-project decisions and rationale                                                          | Project Lead (lives in their email + memory)                     | Cross-team handover loses context; downstream costs (rework, contradicted client)                                                                                                                                                                                         | Alahni Team-02 L42: "It is relying heavily on the project team…some people are really great at saving email threads…some people just work differently"; Joe Team-03 L154: "if there's a way…when somebody's writing somebody else a message, if they're contradicting themselves, it comes up tells them the contradiction. Because that happens a lot"         | Build via email mining + decision log on top of foundation                                                                                                                                                                     |
| 3   | Subcontractor / consultant relationship history                                              | Project Leads (in heads + email)                                 | Repeat-engagement value lost; bad-actor list lives nowhere                                                                                                                                                                                                                | Alahni Team-02 L42: "I think first and foremost it would be asking the project team what the background of the knowledge was"; no consultant-register file in the Drive pull                                                                                                                                                                                    | Build a structured consultant register (Foundation)                                                                                                                                                                            |
| 4   | Past proposal library (searchable)                                                           | Scattered — bid-by-bid in PDFs across project folders            | Each new bid hunts; senior time burns                                                                                                                                                                                                                                     | Alahni Team-02 L34: "we recently did a really big bid process…and a lot of the previous like brochures or examples of products…were all sort of in PDF forms and saved in different locations" — confirmed as a recent lessons-learned trigger                                                                                                                  | Index existing PDFs + tag                                                                                                                                                                                                      |
| 5   | Win/loss feedback loop                                                                       | Nobody tracks it                                                 | No learning from bids; can't quantify funnel ROI                                                                                                                                                                                                                          | Oliver Leadership-02 L126: "we don't [track it]. And it would be useful but difficult"; the Pipedrive "Lapse" board "I haven't touched this for like a year" (L148)                                                                                                                                                                                             | Build via Pipedrive automation + CMap join                                                                                                                                                                                     |
| 6   | Marketing ROI per channel (LinkedIn / events / podcast / Eversleigh retainer)                | Nobody                                                           | Marketing spend (Eversleigh ~£36k/yr per summary file + sporting + events) un-attributable                                                                                                                                                                                | Jon Leadership-01 L105: "if we're spending 20 grand £20,000 on a marketing thing can we observe whether…what if or any impact that has"; Oliver L126 confirms no LinkedIn→work tracking                                                                                                                                                                         | Build on top of foundation                                                                                                                                                                                                     |
| 7   | Technical-design / practice manual (beyond BIM Manual)                                       | Wayne (presumed — interview will not happen); per-project memory | Tech-design quality varies project-to-project; new hires lack reference                                                                                                                                                                                                   | Alahni Team-02 L34 lists BIM Manual + ArchiCAD template + Adobe template — explicitly does NOT list a practice technical manual                                                                                                                                                                                                                                 | Build from Wayne via written extraction; or accept as missing                                                                                                                                                                  |
| 8   | Senior-new-hire onboarding programme (≠ Academy)                                             | "Show them" — Joe (Team-03 L88)                                  | Time-to-productivity unmeasured; depends on whoever is around                                                                                                                                                                                                             | Joe Team-03 L88: "they don't know anything about architecture…whereas somebody who you are just not onboarding generally you would assume that they had an education and previous experience…it's just about teaching them about the office effectively and how the systems and the software functions"; no senior-hire SOP found on Drive                      | Write SOP; integrate with ALAQEP-001/002/003 once approved                                                                                                                                                                     |
| 9   | Drawing-issue transmittal system                                                             | Email + Egnyte (unconfirmed standard)                            | Issues lost, scope creep                                                                                                                                                                                                                                                  | ALAQEP-004 Drawing Issuing draft says "[Insert location – Common Data Environment / Server Path]" — placeholder in the policy itself                                                                                                                                                                                                                            | Draft policy needs filling in then deploying                                                                                                                                                                                   |
| 10  | Meeting minutes standard format                                                              | None standardised                                                | 45 min–3 hr per meeting in inconsistent formats; Zoom chat used as backup                                                                                                                                                                                                 | Alahni Team-02 L66: "we don't have a set standard with [meeting minutes/agendas], we've got a couple of different processes at the moment…some project leads work better in some ways and other project leads work better in other ways"; Jon Leadership-01 L105: "we've got Zoom, we've got Google Meets, we've got like about 20 different ways"              | Standardise template + Granola review-gate flow                                                                                                                                                                                |
| 11  | Site-visit and post-occupancy support workflow (Stage 5-6 residual scope)                    | Wayne (assumed; no interview)                                    | **CA scope is NOT unknown — Business Plan p.31 explicitly states AL does not do CA on new projects.** The residual gap is narrower: what do their site visits look like, what "site inspection tools" are provided, and what's the handover protocol when they step back? | BP p.31 (primary): "Contract Administration: AL no longer undertakes contract administration." + "AL no longer undertakes contract admin or project management on new projects going forward." Site visits and post-occupancy are the residual scope. "Site inspection tools" referenced but not documented in the Drive pull. Wayne interview did not happen.  | Revised from "structural unknown" to "partial." CA exclusion is declared policy. Remaining question: document the site-visit SOP (trigger conditions, who attends, what's recorded, how it feeds back to the project tracker). |
| 12  | GDPR Policy                                                                                  | **None exists**                                                  | Compliance risk; especially under BSA + ISO 9001 audit                                                                                                                                                                                                                    | File `ALAQEP-004 GDPR Policy.docx` exists but holds Design Review/QA content — VERIFIED NEW FINDING; intel summary did not catch this                                                                                                                                                                                                                           | Author from scratch; engage Pinsent Masons (Jon already retains them)                                                                                                                                                          |
| 13  | Post-occupancy evaluation data (Jon-from-Architype background)                               | Jon                                                              | Practice-level POE not tracked despite Jon's deep Architype POE history                                                                                                                                                                                                   | Jon: "Innovate UK post-occupancy evaluation study" — referenced as a Jon credential, not as an AL practice                                                                                                                                                                                                                                                      | Treat as future-state; not in scope                                                                                                                                                                                            |
| 14  | Insurance / PI register                                                                      | (referenced in BP)                                               | Renewal coordination risk                                                                                                                                                                                                                                                 | BP p 11 mentions; no policy doc in Drive pull                                                                                                                                                                                                                                                                                                                   | Confirm with Anita / Operations                                                                                                                                                                                                |
| 15  | Client list (named clients / target accounts)                                                | Oliver (in Pipedrive); Jon (relationships)                       | Firm's actual client base is not recoverable from any text source in this audit pull                                                                                                                                                                                      | BP p.4 contains a client logo grid ("Some of our clients") — logos only, no text. Case Studies section (5.0, after p.47) would name clients for Leatherhead, Grove Court, Thomas' Kensington, Lamb Lane, Camberwell, Alva Coachworks but was not extracted (graphical/beyond parse limit). Pipedrive holds live accounts but was not pulled in the Drive audit. | Request Case Studies section separately, or pull Pipedrive Accounts board. Knowing the actual client roster is load-bearing for the Foundation's knowledge graph.                                                              |

---

## 4. Owner Risk Matrix

Per-domain depth-of-exposure for each director and senior. Risk levels: **Critical** = no documented backup, immediate operational impact if absent · **High** = primary carrier, partial backup · **Medium** = primary user but documented · **Low** = documented and shared.

### Jon Ackroyd (Managing Director)

| Domain | Depth | Documented? | Cascade plan? | Risk | Evidence |
|---|---|---|---|---|---|
| Custom weekly cash flow spreadsheet | **Sole builder + sole maintainer** | No | None | **Critical** | Jon Leadership-01 L165 ("I built a beast of a spreadsheet…this is a big exercise I do every year to come in"); rebuilt yearly; no other person can run it |
| Cash-flow forecasting + tax-payment management | Sole | Partial (Xero + Futurli underneath) | None | **Critical** | Same source — £150k→£7k June dip "flattened" only by Jon's manual adjustments |
| Board pack assembly | Co-led (Jon + Anita) | Partial | Anita is the back-up | High | BP p 9; Jon Leadership-01 L105 |
| Pinsent Masons / GDPR-AI compliance relationship | Sole | No | None | High | Discovery-02 L54: "Oliver's got some meeting with Pinsent Masons, who I know through doing stuff with their AI data specialist" — Jon owns the relationship |
| Finance & Legal side of director split | Primary (Jon = finance/legal; Oliver = marketing/BD) | Implicit | None | High | Jon Leadership-01 L105: "Ollie does more of the marketing side. I tend to do more of the money and legal side" |
| Project dispute resolution | Shared with Oliver | No | None | **Critical** | Jon Leadership-01 L41: "still too much of me being involved particularly where there's a dispute or something tricky" |
| "All Three" partnership (Rodon / robotic manufacturing) | Sole | No | None | Medium (strategic, not operational) | Jon Leadership-01 L141 |

### Oliver Lowrie (Director & Founder)

| Domain | Depth | Documented? | Cascade plan? | Risk | Evidence |
|---|---|---|---|---|---|
| AL Fee Tool (HTML) | **Sole builder** | Code exists; not deployed; not maintained by anyone else | None | **Critical** (for the tool's continuity); Medium (firm operates without it today) | `AL_Fee_Tool.html`; Oliver Leadership-02 L226-264 |
| SiteMAXXER lead-magnet tool | Sole builder | Code exists | None | Medium | `SiteMAXXER.html`; Oliver mentions site-viability lead magnet |
| Acquisition funnel + sector segmentation strategy | Sole | Marketing Plan PDF + Miro | Partial | High | Marketing Plan 2026; Oliver Leadership-02 L64-122 |
| Eversleigh / Christian retainer relationship | Sole | No | None | High | Oliver Leadership-02 L68 |
| Podcast operations (Urban Forecast, 52+ episodes) | Sole | No | None | Medium (brand) | BP + Discovery |
| Breakfast Club Briefings | Co-led with Christian | Partial | Christian as event ops | Medium | Marketing Plan; Oliver L86 |
| LinkedIn outbound + personal-brand operation | Sole | No | None | High | Oliver L32-34 (Zavari broken, manual posting) |
| Client onboarding & appointment knowledge (live agreements) | Shared with Jon | Partial (ALAQEP-002 covers framework; specific agreements live in his/Jon's email) | None | **Critical** | Oliver Leadership-02 L346: "the harmful thing that we do to the business is be the container of the knowledge and the information about like what needs to be done when and how much" |
| AI tooling integration prototypes (broader than Biyi's CLI) | Co-led with Biyi | No | None | Medium | Discovery-01 + Discovery-02 |

### Andrew Bonner (Project Director — Appointments)

| Domain | Depth | Documented? | Cascade plan? | Risk | Evidence |
|---|---|---|---|---|---|
| Appointments workflow | Primary owner per BP | ALAQEP-002 + -005 + -007 cover the framework (002 approved; 005/007 draft) | Partial | High | BP p 12-13: "FOCUS: APPOINTMENTS"; Oliver Leadership-02 L260: "a day of Andrew" per bid |
| Daily standup with Joe + senior team | Established | No | Likely Phena | Medium | Joe Team-03 L42: "we have like a meeting every morning at like 9:00 a.m. or at 9:30 for like half an hour" |
| Full project lifecycle knowledge | Partial (≥ Wayne, < Jon/Oliver) | No | None | High | Jon Leadership-01 L69: "I would say Andrew is pretty good [on the lifecycle]" |
| Resourcing decisions | Co-led with senior team | CMap Resource Schedule (per ALAQEP-003) | Yes | Low-Medium | ALAQEP-003 §4: Project Leads populate; OD oversees |

### Wayne McKiernan (Technical Director — interview did not happen)

| Domain | Depth | Documented? | Cascade plan? | Risk | Evidence |
|---|---|---|---|---|---|
| Technical standards / practice manual | **Assumed sole** | No (no practice tech manual in Drive pull) | None | **Critical** (assumed) | Alahni Team-02 L34 lists BIM Manual + ArchiCAD/Adobe templates only — no practice-wide tech manual |
| Stage 5-6 CA workflow | **Assumed sole** | No CA SOP in Drive pull | None | **Critical** (assumed) | Wayne is Technical Director per BP p 12; no CA documents extracted |
| Fee-proposal technical input | High involvement | Partial (ALAQEP-002, fee tool) | None | High | Oliver Leadership-02 L260: "two days of Wayne" per bid |
| Building envelope / regs deep knowledge | Sole | No | None | High | Jon Leadership-01 L69: Wayne is "relatively new" but in the lifecycle group |
| Building Safety Act / HRB compliance | Likely sole | Partial via ALAQEP-001 design review framework | None | High | BP strategic context — BSA cited as driver |

### Biyi Sogbesan (Architectural Assistant Part II — AI champion)

| Domain | Depth | Documented? | Cascade plan? | Risk | Evidence |
|---|---|---|---|---|---|
| ArchiCAD CLI (HTTP connector) | **Sole builder** | Code on his desktop; runs on localhost; tested multi-machine | None | **Critical** | Biyi Team-01 L38 |
| ArchiCAD templates / standards (current keeper) | Co-keeper with Clodagh | Egnyte | Partial (Clodagh) | Medium | Alahni Team-02 L34 |
| CMap DRS integration plan | Sole knowledge of CMap conversation | No | None | Medium | Biyi Team-01 L66 |
| AI rollout planning | Sole | In construction (cheat-sheet/demo plan) | None | High | Biyi Team-01 L106 |

### Joe Maguire (Project Architect + AL Academy Lead)

| Domain | Depth | Documented? | Cascade plan? | Risk | Evidence |
|---|---|---|---|---|---|
| AL Academy administration (mapping firm tasks → uni learning outcomes) | Sole | Progression Matrix + Academy modules | None | High | Joe Team-03 L82: "I then have to go back and check that he's done these things and write a report that says these are the tasks that he's been doing" |
| New City College + South Bank apprenticeship relationships | Sole | External programmes | None | High | Joe Team-03 L82 |
| Progression Matrix & competency tracking (per-staff) | Co-led with Jon | BP p 18 | Partial | Medium | Same |

### Phena MacNamara (Head of Technical)

| Domain | Depth | Documented? | Cascade plan? | Risk | Evidence |
|---|---|---|---|---|---|
| QA / design-review process leadership | Primary (per BP focus) | ALAQEP-001 Approved | Yes | Low-Medium | BP p 12: "FOCUS: COMPETENCE & COMPLIANCE, DESIGN RIBA STAGES 3-7" |
| BIM Manager transition supervision (Alahni in training) | Active | Partial | Yes | Low | Alahni Team-02 L14: "I am doing a BIM management course…that's what's required at the moment" |

### Anita Ford (Finance Manager)

| Domain | Depth | Documented? | Cascade plan? | Risk | Evidence |
|---|---|---|---|---|---|
| Board pack manual assembly | Sole | No | None | High | Jon Leadership-01 L105 |
| Xero / payroll / invoicing day-to-day | Primary | Partial (ALAQEP-010 draft) | None | High | ALAQEP-010 §4 (Finance Manager role); Oliver L322 weekly finance mtg includes "our bookkeeper accountant, Anita" |

### Marta Allona (Project Director — Trackers + RIBA 1-7)

| Domain | Depth | Documented? | Cascade plan? | Risk | Evidence |
|---|---|---|---|---|---|
| Live projects under her name | Primary | Per-project trackers (poorly maintained) | Jon as fallback (proven) | High — DEMONSTRATED in Marta's recent month-long absence | Jon Leadership-01 L105: "last month she's been away for a month and she left her project And there were like a whole load of issues that hadn't been resolved" |

### Hattie Gryspeerdt (former Director of Operations — DEPARTED)

| Domain | Notes |
|---|---|
| Authored the appointment-setup workflow document Oliver referred to in Leadership-02 L212: "that's already written. It was actually written by our head of operations." | This is a **single-person institutional-knowledge departure** that already happened. LinkedIn confirms title: **Director of Operations** (not just "office manager" as Oliver described). She authored or approved ~14 ALAQEP draft policies — the `HG / Operations Director` metadata throughout the policy set is hers. Agnes Friend succeeded her as Office Manager (BP p 13). **RESOLVED 2026-05-13:** Current Operations Director = **Jo Greenoak** (jo@ackroydlowrie.com). Confirmed by Oliver directly ("That is Jo — copied in"); Jo was CC'd on the client reply thread. The ALAQEP sign-off chain now has a named, active holder. |

---

## 5. Sub-area Context Scores (1–5)

Each score re-derived from evidence. Scale: 1 = absent/tribal · 2 = exists but undeployed/inconsistent · 3 = documented and partially deployed · 4 = documented and consistently used with weak gaps · 5 = documented, used, audited.

### 5.1 Identity & positioning — **3 / 5** (Intel Summary said 3/5 — unchanged but rationale tightened)

- **Supporting evidence:** Business Plan PDF is comprehensive and annually refreshed (sent to insurers); Marketing Plan 2026 has clear ICP segmentation, sector splits, content pillars; LinkedIn editorial split (Jon/Oliver) is intentional and documented in Oliver Leadership-02 L108-110.
- **Challenging evidence:** Values + Approach document is "stuck between founders" (Jon Leadership-01 L65) — the deepest layer of identity is unwritten. Headcount figures inconsistent across sources (25 in Oliver's profile, 30 in Jon's profile in BP, 25-30 in interviews).
- **Score rationale:** Strategic story is told; identity *spine* is not finalised; insurer-grade overview exists. No movement upward without Values doc closure.

### 5.2 SOPs / Policies — **2.5 / 5** (Intel Summary said 3 — **REDUCED**)

- **Supporting evidence:** Three ALAQEP policies (-001 Design Review, -002 Fee Proposal, -003 Resourcing) are Board-approved 2026-04-14 with clear ownership, definitions, and process refs. Each has process companions (-001a, -002a) in PDF. Town hall rollout scheduled June 2026. Audit policy (-012) drafted to enforce compliance.
- **Challenging evidence:** ~14 other ALAQEP drafts still carry `Approved By: HG / Operations Director` placeholder — including HR-critical Onboarding/Offboarding/Maintenance and finance-critical -010 Invoicing, -011a/b Pre-Appointment Screen, -012 audit policy. **Three numbering collisions** (-001, -002, -004) — Egnyte folder policy and Drawing-naming policy share numbers with Approved ones. **One file holds wrong content (-004 GDPR has Design Review content).** No GDPR policy exists at all. Reference to "ALAQEP-06" inside the -010 draft points to a policy that does not exist.
- **Score rationale:** The Intel Summary's 3/5 reflected the optimistic "all are board-approved" reading. The reality is approximately 17%-approved (3 of ~17 in the ALAQEP set), with structural-integrity defects in the unapproved corpus. 2.5 is generous — could be argued for 2.

### 5.3 Project + proposal templates — **2 / 5** (Intel Summary 2 — confirmed)

- **Supporting evidence:** ArchiCAD project template, Adobe template, BIM Manual all confirmed in Alahni Team-02 L34. Fee Tool (HTML) exists and is functional. Standard "white book" of details exists (Biyi Team-01 L114).
- **Challenging evidence:** No firm-wide unified template/reference structure (in active construction per Alahni Team-02 L34). Proposal library scattered ("all sort of in PDF forms and saved in different locations" — Alahni L34). Lessons-learned from the recent big bid was the trigger to begin building this — meaning it didn't exist when needed. Fee Tool not institutionally deployed.
- **Score rationale:** Templates exist for individual tools; missing the wrapper layer that links them. Unchanged.

### 5.4 Standards library — **2 / 5** (Intel Summary 2 — confirmed)

- **Supporting evidence:** BIM Manual exists. ArchiCAD template carries firm conventions. ALAQEP-001 Design Review policy + ALAQEP-002 Drawing Naming draft + ALAQEP-004 Drawing Issuing draft describe a *future* standards library.
- **Challenging evidence:** No practice technical manual (knowledge gap #7). Alahni Team-02 L34 explicitly omits a tech manual. Regulatory lookup is per-project, manual ("fine-tooth combing through Part documents"). Standards-policy drafts reference *other* policies that don't exist (e.g., -004 Drawing Issuing references "ISO9001/14001-002" — not found).
- **Score rationale:** Bones of a library exist; the connective tissue does not. Unchanged.

### 5.5 Subcontractor / consultant history — **1 / 5** (Intel Summary 1 — confirmed)

- **Supporting evidence:** None. There is no consultant register in the Drive pull, and no transcript mentions one.
- **Challenging evidence:** Alahni Team-02 L42: "I think first and foremost it would be asking the project team what the background of the knowledge was" — tribal by default. Biyi Team-01 L126 confirms consultant communication entirely email-bound.
- **Score rationale:** Pure tribal carry. Score 1 confirmed.

### 5.6 Knowledge transfer (Academy + senior onboarding) — **2 / 5** (Intel Summary 2 — confirmed but with sharper picture)

- **Supporting evidence:** AL Academy 6-module video curriculum + Progression Matrix + OKRs (annual + 6-mo) + Peninsula HR + Recruitment/Onboarding/Probation flow + ALAQEP-007 Project Set Up Checklist + apprenticeship integration with London South Bank University.
- **Challenging evidence:** **Academy is built for college-entry students (no architecture background), not for experienced new hires** (Joe Team-03 L88 — clear separation). Joe is not involved in onboarding the latter group ("I work remotely" — L102). Senior-onboarding mode = "you just show them" (gap #8). Progression Matrix tracking is manual (Joe must reconcile work tasks against uni learning outcomes — a candidate automation point in itself). Business Plan p 19 lists Modules 5 and 6 both as "Stage 5-6" — appears to be a typo in the source.
- **Score rationale:** The Academy is well-built for one cohort and absent for the other. Net 2/5.

### 5.7 (Overall Context Score) — **~2.5 / 5** (Intel Summary 2.5 — confirmed, with one sub-area downgraded)

The arithmetic mean of the six sub-scores: (3 + 2.5 + 2 + 2 + 1 + 2) / 6 = **2.08**. Rounding to 2.5 reflects the upside in the *approved* ALAQEP-001/-002/-003 + the imminent town hall rollout. **A defensible alternative scoring is 2/5** — the Approved ALAQEP set is structurally undermined by the numbering collisions and the GDPR content mismatch.

---

## 6. Items for Day-5 Client Information Request (Context-Layer-Only)

Three categories of material are missing and cannot be inferred from sources:

- **Ownership vacuum:** Hattie Gryspeerdt (Director of Operations, now departed) is the named approver for ~14 draft ALAQEP policies. Agnes Friend succeeded her with a different title. The June town hall rollout and every recommendation that names an "Operations Director" as implementation owner hangs on whether that role is filled, by whom, and at what authority level.
- **Compliance blind spot:** The GDPR policy file (`ALAQEP-004`) holds the wrong content — Design Review/QA text verbatim. No GDPR text was found anywhere in the Drive pull. Any AI tooling recommendation we make (Biyi's CLI, Claude Enterprise, Granola) has to address data handling. We cannot responsibly scope that without knowing the GDPR baseline.
- **Wayne's domain:** Wayne holds the technical-design standards entirely in his head. He was not interviewed. The only evidence of his knowledge is absence — no practice tech manual in the Drive pull. Before we can scope Foundation work for the technical domain, we need to know if there is anything to build from, or if we are starting from zero.

**Questions:**

1. ~~**Who currently holds the Operations Director role?**~~ **RESOLVED 2026-05-13: Jo Greenoak** (jo@ackroydlowrie.com). Confirmed by Oliver in reply to client info request ("That is Jo — copied in"). She is CC'd on the thread. The draft-policy sign-off chain now has a named holder. Agnes Friend remains Office Manager (narrower scope).

2. **Does a GDPR policy exist anywhere?** The file `ALAQEP-004 GDPR Policy.docx` contains your Design Review/QA text, not GDPR. With Pinsent Masons retained, is there a GDPR policy held by them, stored on Egnyte, or genuinely not yet written?

3. **Does Wayne have anything documented?** Before we scope the technical domain of the Foundation, we need to know: is there a practice technical manual, annotated detail library, or any written reference standard on Egnyte's `001-Resources` that Wayne uses or produced — even informally?

4. **What is the ALAQEP numbering plan?** Three numbers have two documents each: ALAQEP-001 (Design Review + Egnyte Folder Structure), ALAQEP-002 (Fee Proposal + Drawing Naming), ALAQEP-004 (Drawing Issuing + the mislabelled GDPR file). Are these being renumbered before June, or is the parallel-series structure intentional? The answer determines how the AI policy index is keyed.

---

## 7. Corrections to Intel Summary

Items where the Intel Summary (`AL-Audit-Intel-Summary.md`) is wrong, imprecise, or stale.

| # | Intel Summary claim | Correction | Evidence |
|---|---|---|---|
| C1 | §3: "Policy set (ALAQEP 001–012) — Board-approved, pre-rollout" | Only ALAQEP-001 Design Review, -002 Fee Proposal, and -003 Resourcing are Board-approved (2026-04-14). The remaining ~14 ALAQEP files are drafts with placeholder approval metadata. | `alaqep-001-design-review-approved.txt` line 2, `alaqep-002-fee-proposal-policy-approved.txt` line 2, `alaqep-003-project-resourcing.txt` line 2 vs ~14 files with `Date Issued: XXX, Approved By: HG / Operations Director` |
| C2 | §3: "JD files 004–008 have wrong content — copy-paste drafts not updated" | RESOLVED as of 2026-05-12. All JDs 004-008 now hold content matching their titles. The resource-index dated 2026-05-09 captured an earlier state. | All 5 JD GDoc texts re-pulled today |
| C3 | §3: "Two Google Docs in the Sign Off/SS subfolder (ALAQEP-012 and ALAQEP-012a) contain ALAQEP-005 content" | RESOLVED as of 2026-05-12. Both now hold correct ALAQEP-012 content. | `signoff-ss-alaqep-012-policy.txt`, `signoff-ss-alaqep-012a-form.txt` |
| C4 | (Implicit — no mention) | **NEW finding:** `ALAQEP-004 GDPR Policy.docx` (Review wk ending 3rd April) contains ALAQEP-001 Design Review and QA Policy content verbatim. The firm appears to have no GDPR policy text. | `alaqep-004-gdpr-policy.txt` line 1: "Design Review and Quality Assurance Policy" |
| C5 | §3: "QA audit process — Phena/Wayne" | Audit ownership per ALAQEP-012 draft is **Operations Director / Technical Director (or delegate)** — Phena is referenced for design review (ALAQEP-001) but not as audit owner. Wayne = Technical Director → confirmed. Adjust attribution. | `alaqep-012-internal-audit-policy.txt` §4 |
| C6 | §3: "Appointments workflow — ALAQEP 005 — Jon/Oliver" | Appointments are in ALAQEP-002 (Approved, Board) + ALAQEP-005 V2 (Superseded process). Andrew = appointment focus per BP and "a day of Andrew" per bid (Oliver L260). The OD owns appointments operationally; Jon/Oliver sign-off. | `alaqep-002-fee-proposal-policy-approved.txt`; BP p 12; Oliver Leadership-02 L260 |
| C7 | §3 high-value fee threshold "above the high-value threshold (likely £15k+)" | High-value form threshold is **£100,000+** (form text: "for all projects with a fee value of £100,000 or over"). £15k is a separate threshold for using Appointment Letter vs full appointment package (in ALAQEP-002 §6.6). | `alaqep-002b-high-value-fee-form.txt` line 1 |
| C8 | §1 Senior Management: "Marta Allona…ARB registered (was absent month of Apr/May; Jon had to cover her projects)" | Confirmed; transcript phrasing is **"last month she's been away for a month"** (Leadership-01 2026-05-06) — places the absence in April-early-May 2026. Not "month of Apr/May" both months. | Jon Leadership-01 L105 |
| C9 | §1 Operations Team: "Agnes Friend — Office Manager" | **Confirmed current Office Manager. Hattie's departure is an institutional-knowledge-loss event the Intel Summary does not flag.** Updated 2026-05-12: LinkedIn confirms Hattie's actual title was **Director of Operations** (not just "office manager" as Oliver described in L358). The ALAQEP `HG / Operations Director` placeholders are hers — she authored or signed off the draft policy set during her tenure. Agnes Friend succeeded her with a different (likely narrower) title. **RESOLVED 2026-05-13:** Operations Director role now held by **Jo Greenoak** (jo@ackroydlowrie.com) — confirmed by Oliver directly in reply to client info request. | Oliver Leadership-02 L212, L358; BP p 13; LinkedIn: Hattie Gryspeerdt; Oliver email 2026-05-13 |
| C10 | §3 "Operations team includes Joe (head of ops)" implication from Oliver Leadership-02 transcript | Oliver in the 2026-05-08 session says "Like our head of operations, Joe, and our bookkeeper accountant, Anita" — but the Joe Maguire transcript clearly identifies Joe as Project Architect + Academy Lead working remotely. This is **either Oliver mis-naming someone OR a different "Joe" in operations.** Flag — likely a transcription artefact. | Oliver Leadership-02 L322 vs Joe Team-03 L102 |
| C11 | §4 "Airtable — Maintenance tracking — Unknown users" | Maintenance Compliance Policy explicitly names Airtable as the system of record, with documentation stored on Egnyte; roles: Operations Director, Office Manager, external contractors. | `maintenance-policy.txt` §4-5 |
| C12 | §4 "ArchiCAD CLI…not deployed" | Confirmed not firm-deployed, BUT 4 use cases (apartment auto-layout, compliance check, schedule auto, Google Sheets minute→task) are already live on Biyi's projects — i.e. deployed at the n=1 level. | Biyi Team-01 L54, L118 |
| C13 | §5 Acquisition Engine: "Win rate: NOT confirmed…not captured in interviews" | Now confirmed actively NOT tracked — Oliver Leadership-02 L126: "we don't [track LinkedIn → work conversion]. And it would be useful but difficult." The Pipedrive Lapse board exists but was last touched ~1 year ago (Oliver L148). | Oliver Leadership-02 L126, L148 |
| C14 | §5 Acquisition: "Won work last month: ~£35,000" | Confirmed (Oliver April 2026 figure). For context, March was lighter and May has multiple pipeline candidates. | Oliver Leadership-02 L142 |
| C15 | §5 Acquisition: "Proposal effort hours: NOT captured (MISSING — critical §7 input)" | **Now captured.** Oliver Leadership-02 L260: per bid = "a day or two of me, two days of Wayne, a day of Andrew" → 4-5 senior days per bid. At £181.25 blended senior, ~£6.5k-£7k senior cost per bid. Target 2 bids/month → ~£140k–£170k/yr in senior-time burn on proposals alone. | Oliver Leadership-02 L260 |
| C16 | Intel summary sources line: "Leadership-02 (Oliver solo)" referenced as 2026-05-06 | The 2026-05-06 Leadership-02 file is byte-identical to Leadership-01 (header line aside). The real Oliver-solo content lives in `26-05-08-Audit-Leadership-02.md` and substantially extends what is known about Oliver, his time-split, the fee tool, Pipedrive state, and the Eversleigh/Christian relationship. Any Intel Summary claim "from Oliver-solo" sourced on 2026-05-06 must be re-anchored to 2026-05-08. | File diff of the two transcripts confirms byte identity except header |
| C17 | §3 Owner Risk: "Andrew Bonner — appointments workflow, senior project knowledge" | Add: Andrew also runs a daily 9am stand-up with Joe and senior team (Joe Team-03 L42). Andrew's depth on operations is wider than "appointments only." | Joe Team-03 L42 |
| C18 | §6 governance: "Joe…has not read firm AI policy (because there isn't one yet)" | Confirmed but with nuance: Joe Team-03 L126 says "I would have to I I don't if I am talking to AI about a project, I will I will not input like specifics…I feel like I have never dug deep enough into the like user policies to know where that information goes. But I'd guess on side of caution." — i.e. there is *informal* personal policy, applied conservatively. | Joe Team-03 L126 |
| C19 | §3 Onboarding Policy describes "Direct applicants & applicants via a recruitment firm" | The Onboarding Policy V1 is a draft with an unresolved author comment: "[a] Add probation to this policy to make it cover both" — the policy itself is not yet self-consistent. Treat as "draft in active iteration." | `onboarding-policy.txt` line 95 |
| C20 | §8 Foundation Assessment "Context score 2.5/5" | Confirmed defensible at 2.5; recomputed mean of sub-scores = 2.08. The 2.5 round-up is justifiable on the strength of the three Approved ALAQEPs + insurer-grade Business Plan + Marketing Plan; an alternative 2.0 is defensible on the structural defects in the policy corpus. | This document §5 |
| C21 | §3 Gap #11 "Stage 5-6 CA workflow — structural unknown" | **Revised: CA is NOT unknown.** Business Plan p.31 explicitly states AL no longer undertakes CA on new projects. The residual gap is the site-visit support SOP, which is narrower and lower-risk. Gap #11 has been updated to reflect this. | Business Plan p.31 (primary source, read 2026-05-12 full re-read) |
| C22 | §1.1 source table: "AL-BUSINESS-PLAN.pdf — Partial (PDF parse error after pg 19)" | Business Plan fully re-read 2026-05-12 (pp.1-47). New primary-source material extracted: CJB-CDM advisor (p.20), Steve Smith briefing consultant (p.35), ATLG firm membership (p.38), Client Journey workflow (p.30), CA non-scope policy (p.31), ISO drawing numbering convention (p.47), ADDD mandate confirmed (pp.45-46), Standard Terms (Trowers & Hamlins, p.32), board governance (non-exec advisors, p.9). Graphical-only content still unrecovered: client logos (p.4), financial charts (p.6, p.14), Case Studies section (5.0, after p.47). | Business Plan full re-read 2026-05-12 |

---

## 8. Cross-references for downstream sections

- §3 of the final report (Knowledge Risk Matrix) — replace with §2 + §3 + §4 of this document.
- §8 Context score line — replace with §5 of this document.
- Day-5 Client Info Request — pre-load with §6 (max 5 items already; one is structurally important — "Who is HG?").
- Day-3 (Data & Tools) — Airtable maintenance, CMap DRS 24h CSV, Eversleigh/Christian as a *data source* (his event Google Sheet that doesn't sync to Pipedrive — Oliver L126) all carry forward.
- Day-4 (Workflow Maps) — Oliver Leadership-02 L188 onward gives the full lead-to-win flow at a level of detail that supersedes the Intel Summary version. Use the 2026-05-08 transcript as canonical for Acquisition Engine.

---

*Prepared 2026-05-12 by the Day 2 pass. Updated 2026-05-12 with full Business Plan re-read (pp.1-47): §1.1 source entry updated, §2.1 governance row added, §2.3 Steve Smith + CJB rows added, §2.4 ISO drawing standard + ADDD upgrade + §2.5 Client Journey + CA policy + Standard Terms rows added, Gap #11 revised, Gap #15 added, Corrections C21-C22 added.*

*Updated 2026-05-13 from Oliver's client info request reply: Headline finding #3 updated (Operations Director = Jo Greenoak confirmed), §2.2 ALAQEP-007 checklist row updated with full confirmed item list from screenshot, §2.5 Project Set Up Checklist row updated, §4 Hattie row updated (Jo Greenoak as confirmed successor), §6 Q1 resolved, Correction C9 updated.*

*Day 3 (Data + Tools) builds on this in the same file-pull + transcript discipline.*
