# SYSTEM — Architecture, repos, stack, credentials, ops

## 1. Repo map

Three repos, one deployment. The boundary: *does a human invoke it, or does a clock?*

| Repo        | Owns                                                                         | Who opens it                            | Location                   |
| ----------- | ---------------------------------------------------------------------------- | --------------------------------------- | -------------------------- |
| `AL-BRAIN`  | The vault — what the firm knows. Written **only** through `gbrain`           | Nobody directly                         | al-vps, github `AL-BRAIN`  |
| `AL-AGENT`  | Unattended runtime — crontab, jobs, deterministic scripts                    | Cron;                                   | al-vps, github `AL-AGENT`  |
| **`AL-OS`** | **How the practice works** — identity, context, skills, roles, docs, roadmap | **Jon, Oliver, senior team → practice** | github `AL-OS` (this repo) |

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
