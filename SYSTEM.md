# SYSTEM — Architecture, repos, stack, credentials, ops

## 1. Repo map

Four repos, one deployment. The boundary: *does a human invoke it, or does a clock?* — plus,
as of 2026-08-20, *which access zone does this content belong to?*
(`docs/decisions/0001-director-os-split.md`)

| Repo        | Owns                                                                         | Who opens it                            | Location                   |
| ----------- | ---------------------------------------------------------------------------- | --------------------------------------- | -------------------------- |
| `AL-BRAIN`  | The vault — what the firm knows. Written **only** through `gbrain`           | Nobody directly                         | al-vps, github `AL-BRAIN`  |
| `AL-AGENT`  | Unattended runtime — crontab, jobs, deterministic scripts                    | Cron;                                   | al-vps, github `AL-AGENT`  |
| **`AL-OS`** | **How the practice works** — Firm + Practice tier: identity, context, skills, roles, docs, roadmap | **Jon, Oliver, senior team → practice** | github `AL-OS` (this repo) |
| `DIRECTOR-OS` | Administration + Personal tier — finance, governance, pipeline/fee strategy, each director's own drafts | Jon, Oliver, Jo Greenoak only | al-vps `~/DIRECTOR-OS`, github `MoliorOS/DIRECTOR-OS`. Checked in here as a git submodule. |

**AL-BRAIN detail, since a skill or context file here may read it:** runs the stock
`gbrain-base` (v1) schema pack — not `-v2` — specifically because v1 is the only bundled pack
with a `meeting` type; the override lives in `Molior-app`'s docker-compose `environment:`, not
`~/.gbrain/config.json` (which gets reverted on every container start). Vault trimmed to exactly
7 folders: `people/ companies/ deals/ projects/ sources/ extracts/ meetings/`. Two known bugs
worth checking before trusting a read: `add_timeline_entry` on an *existing* page writes the DB
row but not the vault markdown file (fixed in gbrain 0.42.73.2+ — check the al-vps version
before assuming a workaround is still needed); and `list_pages` (Postgres-cache-backed) has been
observed silently omitting real files from `deals/` — `gbrain get` on the same slug is correct,
so a missing-from-list-but-gettable page is this bug, not a deleted page.

---
## 2. Tool Stack

| Tool                 | Role at AL                                                                                                                                                              | Integration path                                                  |
| -------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------- |
| **CMap**             | Project + finance spine — fees, timesheets, resourcing, invoicing, stage, DocuSign templates                                                                            | No API on AL's current plan → daily CSV export → ETL, when needed |
| **Pipedrive**        | **BD system of record** — Monthly Sales / Targets / Accounts / Lapse / Partners boards                                                                                  | Official MCP                                                      |
| **Notion**           | CRM (4 databases: People, Companies, Interactions, Deals) + AI meeting-notes capture                                                                                    | Official MCP                                                      |
| **Xero**             | P&L, VAT, payroll, aged debt. Futurli sits on top for the board-pack P&L deck                                                                                           | Official MCP                                                      |
| **Egnyte**           | File storage / CDE — root `000-Job Files … 009-Scans`, per-project A–G structure.                                                                                       | Official MCP                                                      |
| **Google Workspace** | Gmail (where most real decisions live), Calendar, Drive. `hub@ackroydlowrie.com` is the single CRM intake point. Google auth is AL's standing default identity strategy | Official MCP                                                      |
| **ArchiCAD**         | Primary BIM authoring tool. Biyi Sogbesan built a custom HTTP CLI integration — auto-layout, compliance checks, schedule automation                                     | No MCP; productizing the CLI firm-wide.                           |
| **JumpCloud**        | SSO across ~20 apps                                                                                                                                                     | Official MCP                                                      |
