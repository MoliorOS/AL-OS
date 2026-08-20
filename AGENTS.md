# AL-OS — Agent Context

> AL-OS is **Ackroyd Lowrie's shared skill layer** — a Claude Code **plugin**
> (`.claude-plugin/plugin.json`), not a working directory. It ships fee-proposal, delivery-QA,
> cashflow/invoice, meeting-capture, and OS-level (`ask`/`capture`/`populate`/`onboard`) skills,
> plus the firm's context, roles, and process — but every person runs it from their own
> **personal-os** repo (`JON-OS`, `OLI-OS`, …), scaffolded by `skills/os/onboard`. There is no
> shared "AL-OS working directory" anymore — see `docs/decisions/0002-al-os-becomes-plugin.md`.
> It sits alongside `AL-BRAIN` (the vault, written only through `gbrain`) and `AL-AGENT` (the
> unattended runtime). See `SYSTEM.md` for the full repo map.

**The test that keeps the four repos apart:** *does a human invoke it, or does a clock?*
Human-invoked work lives here. Cron-invoked work lives in AL-AGENT. A workflow is designed and
hardened here first; once it runs unattended and reliably, it graduates to an AL-AGENT job whose
runbook *links back* to the skill here rather than copying it — a duplicated copy drifts the
moment either one changes.

---

## Who this serves

Built for Ackroyd Lowrie — a ~25-person RIBA-chartered architecture and design practice, ~40 live
projects, founded 2014 by Jon Ackroyd and Oliver Lowrie. Full identity: `IDENTITY.md`.

Installed today: **Jon (`JON-OS`), Oliver (`OLI-OS`)** — Tier A. Planned: Wayne, Andrew, Joe, Jo
(Tier B — role-scoped personal-os repos via `skills/os/onboard`), then the practice (Tier C). See
`roles/README.md` for the access-zone model — this plugin mirrors AL's existing JumpCloud
permissions rather than inventing a new one: *if an architect cannot see the finance folder,
Claude cannot either.*

---

## Session Startup

Applies whether you're in a personal-os repo with this plugin installed, or (rarely) working
inside this repo directly:

1. `date +%Y-%m-%d`
2. Read `IDENTITY.md`, `SYSTEM.md`
3. Read `ROADMAP.md` for current priorities
4. Check `roles/{your-role}.md` if known — it scopes what you should read next
5. If your working directory has its own `admin/*.md` or `working-style.md`, that's your
   personal-os content — not shipped by this plugin, see `skills/CLAUDE.md`'s path convention

---

## Routing table

*Every piece of information has a home. No catch-all.*

| Type of information | Goes in |
|---|---|
| Who AL is, mission, moat, scope boundary | `IDENTITY.md` |
| Repos, stack, connectors, credentials (names/locations only), ops | `SYSTEM.md` |
| Current priorities, module sequence, what's live vs next | `ROADMAP.md` |
| Fee logic, scope items, DRM, benchmarks | `context/commercial.md`, `context/scope.md` |
| Stage gates, deliverables, programme defaults | `context/delivery.md` |
| Standards, QA model, HRB/BSA, ISO 19650 | `context/technical.md` |
| Cashflow, invoice-release, terms | your personal-os repo's `admin/finance.md` (director-tier, not shipped by this plugin) |
| GDPR, consent, permissions decisions | your personal-os repo's `admin/governance.md` (director-tier) |
| Record schemas — what fields a Person/Company/Deal/Project carries | `ontology/{people,companies,deals,projects}.md` |
| Firm identity, sectors, service lines, org | `context/practice.md` |
| Staff, JD ladder, expertise | `context/people.md` |
| Clients, ICP, pipeline, hunting partners | `context/clients.md` |
| Marketing, channels, voice | `context/brand.md` |
| Tool-by-tool status | `context/stack.md` |
| A human-invoked workflow | `skills/{proposal,delivery,practice,knowledge,os}/{name}/SKILL.md` |
| Who can see what | `roles/{role}.md` |
| Audit findings, workflow specs, architecture, policies, decisions | `docs/{audit,workflows,architecture,policies,decisions}/` |


---

## Operating Rhythm

- **New workflow, human-run:** build it as a skill here (`skills/`), status `specified` until
  hardened, then `live`.
- **Same workflow, now reliable and unattended:** graduate it to AL-AGENT. Do not duplicate the
  procedure — the AL-AGENT job links here.
- **New fact about the practice:** goes in exactly one `context/` file. If unsure which, check
  the routing table above before creating a new one.
- **Fleet-state facts** (what's live, what's deferred, what repo owns what) belong in this file's
  header and `SYSTEM.md`'s repo map — nowhere else. Divergent copies of the same fact across
  files is a known failure mode; don't reintroduce it.

---

## Core Rules

1. **Augmented by default, not full-auto.** Most of what this repo automates is a *suggestion*,
   not a decision. Oliver: *"you don't want to automate the decisions. You want to automate the
   suggestion, and then the architect makes the choice."*
2. **Deterministic where possible.** Fee arithmetic, benchmark lookups, and stage-gate logic are
   calculations, not prompts. Reserve AI judgement for what's actually ambiguous.
3. **Permissions mirror JumpCloud.** A skill or context file scoped above someone's access tier
   is not shown to them, regardless of what they ask.
4. **GDPR is load-bearing.** Enrich ICP-matched contacts only; never delete non-ICP records;
   disclose before enrichment. AL currently has **no written GDPR policy** — treat a director's
   `admin/governance.md`'s open section on this as a live gap, not a formality.
5. **Confirm before irreversible or outward-facing actions.** Say what you're about to do first —
   this repo is client-owned; treat every write as visible to Jon and Oliver.
6. **This plugin is Firm + Practice tier — don't let Administration content back in.** If a
   conversation surfaces cashflow, invoice-release, or pipeline-strategy detail, that belongs in
   the relevant person's personal-os repo (`JON-OS/admin/`, `OLI-OS/admin/`), not here — see
   `docs/decisions/0002-al-os-becomes-plugin.md`.

---

## Command Routing

| Intent | Command |
|---|---|
| Draft a fee proposal / scope | `skills/proposal/scope-draft`, `fee-calc`, `drm`, `benchmark` |
| Ask a question about how the practice works | `skills/os/ask` |
| Log a decision, lesson, or capture a signal | `skills/os/capture` |
| Interview someone to close named `## Open` gaps | `skills/os/populate` |
| Onboard a new team member or role | `skills/os/onboard` |
| End of session | `skills/os/encode` |
| Everything else | check the routing table above before improvising |
