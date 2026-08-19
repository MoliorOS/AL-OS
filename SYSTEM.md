# SYSTEM — Architecture, repos, stack, credentials, ops

## 1. Repo map

Four repos, one deployment. The boundary: *does a human invoke it, or does a clock?*

| Repo | Owns | Who opens it | Location |
|---|---|---|---|
| `Molior-app` | Platform: compose, Dockerfiles, gbrain, runner infra. Client-agnostic | Molior only | al-vps, `/opt/molior-app` |
| `AL-BRAIN` | The vault — what the firm knows. Written **only** through `gbrain` | Nobody directly | al-vps, github `MoliorOS/AL-BRAIN` |
| `AL-AGENT` | Unattended runtime — crontab, jobs, deterministic scripts | Cron; Molior on call | al-vps, github `MoliorOS/AL-AGENT` |
| **`AL-OS`** | **How the practice works** — identity, context, skills, roles, docs, roadmap | **Jon, Oliver, senior team → practice** | github `MoliorOS/AL-OS` (this repo) |

**Known naming fossil:** `AL-AGENT/package.json` still carries `"name": "al-os"` from before the
repo was renamed in August 2026. This repo is the real AL-OS — the fossil should be corrected in
AL-AGENT when next touched, not treated as a naming conflict.

**Skill-ownership rule** (settles a live contradiction between AL-AGENT's and AL-BRAIN's own
docs): `AL-BRAIN/skillpack.json` keeps `skills: []` permanently. Human-invoked skills live here,
in `AL-OS/skills/`. Unattended job code lives in `AL-AGENT/jobs/`. The vault holds knowledge,
never code.

**Graduation path:** a workflow starts as a skill here, gets used and hardened by hand, and only
then graduates to an AL-AGENT cron job. The AL-AGENT runbook links to the AL-OS skill rather than
restating it — a duplicated copy drifts the moment either one changes.

---

## 2. al-vps runtime (for context — this repo does not run on it)

AL owns a Hetzner VPS, `al-vps` (`100.111.195.123` on Molior's tailnet), deployed 2026-08-04 and
maintained by Molior under the hourly automation engagement. No public ingress; UFW default-deny;
Tailscale Serve terminates HTTPS. Three containers:

- `al-postgres` — pgvector/pg16
- `al-gbrain` — `gbrain serve --http`, bound to `127.0.0.1:3131`, the only write path to AL-BRAIN
- `al-agent` — supervises `gbrain autopilot` + `supercronic` over the crontab in `AL-AGENT/`

Model lock: `anthropic:claude-haiku-4-5`. Runner auth currently runs on Felipe's personal Claude
subscription — flagged open, not yet swapped to AL's own account.

---

## 3. Stack — status as found by the May 2026 audit, plus Notion

No Deskbook, no Supabase in this build — neither is in production. **CMap remains the
project/finance spine. Pipedrive remains AL's BD system of record**, with the Notion CRM running
as a parallel-run replacement candidate, not yet the record of truth.

| Tool | Role at AL | Status | Integration path |
|---|---|---|---|
| **CMap** | Project + finance spine — fees, timesheets, resourcing, invoicing, stage, DocuSign templates | Kept | No API on AL's current plan → daily CSV export → ETL, when needed |
| **Pipedrive** | **BD system of record** — Monthly Sales / Targets / Accounts / Lapse / Partners boards | Current record | No official MCP; community MCP/REST if needed |
| **Notion** | CRM (4 databases: People, Companies, Interactions, Deals — reached Pipedrive parity 2026-08-19) + AI meeting-notes capture | Live, **parallel run**, not yet authoritative for BD | Notion API (already wired via `al-meeting-notes` + `notion-sync`) |
| **Xero** | P&L, VAT, payroll, aged debt. Futurli sits on top for the board-pack P&L deck | Kept | Official MCP |
| **Egnyte** | File storage / CDE — root `000-Job Files … 009-Scans`, per-project A–G structure, `C Compliance` C00–C06 | Kept | Official MCP — **requires the Co-Pilot add-on** |
| **Google Workspace** | Gmail (where most real decisions live), Calendar, Drive. `hub@ackroydlowrie.com` is the single CRM intake point. Google auth is AL's standing default identity strategy | Core, live | Official MCP; already wired via `gws` in AL-AGENT's `email-ingest` job |
| **ArchiCAD** | Primary BIM authoring tool. Biyi Sogbesan built a custom HTTP CLI integration — auto-layout, compliance checks, schedule automation | Kept — n=1, runs on Biyi's machine only | No MCP; productizing the CLI firm-wide is the "highest-engineering item" in the original build plan, deferred |
| **JumpCloud** | SSO across ~20 apps | Kept — **also the permission model this repo mirrors** | Official MCP |
| **DocuSign** | Fee-proposal sign-off, appointment execution, Trowers & Hamlins standard terms | Kept | Official MCP (beta) |
| **Microsoft 365 / Excel** | Jon's weekly cashflow workbook (sole author, annual rebuild), `AL BUDGET.xlsx`, `Project Tracker.xlsx`, Teams | Read, don't migrate | Graph MCP |
| **Airtable** | Maintenance compliance system of record | Kept | Official MCP |
| **1Password** | Credentials for 20+ tools | Kept | — |
| **Miro** | Design workshop boards, and both directors' own live thinking (Jon's tools map, Oliver's funnel map) | Kept — a knowledge source, not an integration target | — |
| **Granola** | AI meeting-notes trial, tested by Jon | Conditional — only if it wins the trial vs Notion | Official MCP |
| **Adobe Suite / Nscape** | Documents/presentation, rendering | Kept | — |
| **Zoom** | Meeting recordings, ~£12k/yr | **Being dropped** | — |
| **Dr Logic** (Roman Marszalek, Shaun) | IT MSP — mailbox permissions, `hub@` setup, ticketing | Retained partner | — |

**The audit's own read on this list:** *"Eight of the firm's highest-value tools already ship
with official MCP servers. The core data spine can therefore be connected in days."*

---

## 4. Connector registry — `.mcp.json`

Declared per connector: server name, transport, and env var *names*. No values, no bearer tokens
committed. Live wiring today (via AL-AGENT / al-meeting-notes, not this repo):

- `gbrain` — HTTP MCP, `http://127.0.0.1:3131/mcp` (al-vps internal only)
- `notion` — REST, via the consolidated "AL Notion Automations" integration token
- `google-workspace` (`gws`) — `hub@ackroydlowrie.com` + `molano@molioros.com` scopes

Everything else in §3 marked "Kept" is a declared-not-yet-wired connector — add to `.mcp.json`
as each is actually connected, not speculatively.

---

## 5. Credentials — names and locations only

| Credential | Lives in |
|---|---|
| Notion integration token ("AL Notion Automations") | `Molior-app/secrets/` (al-vps, host-side) |
| Google service account / OAuth | `Molior-app/secrets/`, `~/.config/gws/credentials.json` |
| gbrain bearer (HTTP MCP) | AL-AGENT `.env`, never committed |
| Anthropic API key | Stripped by `/opt/molior/lib/claude-run.sh` — runner uses subscription OAuth, not API billing |
| Everything else in §3 | 1Password (AL's own vault) |

**Never commit a value.** This repo (`AL-OS`) holds no secrets at all — it is read by humans and
does not need runtime credentials of its own for its current scope (context, skills-as-spec,
roles, docs).

---

## 6. Ops

This repo has no daemon and no cron of its own. "Running" AL-OS means opening a Claude Code
session in it. There is nothing to start, stop, or restart here — that's AL-AGENT's and
Molior-app's domain, documented in their own repos.

For al-vps container status, logs, or restarts: those are Molior/CLAUDIO operations, not an
AL-OS concern. If something here needs an infra action it can't perform, write the request —
don't attempt a workaround.
