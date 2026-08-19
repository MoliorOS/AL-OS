# AL-OS — Agent Context

> AL-OS is **Ackroyd Lowrie's own operating repo** — the layer that answers *how does this
> practice work*. It sits alongside three other Molior-built repos but is the only one the
> practice itself opens: `AL-BRAIN` is the vault (written only through `gbrain`), `AL-AGENT` is
> the unattended runtime (cron, jobs, deterministic scripts), `Molior-app` is client-agnostic
> platform infra. **AL-OS is for Jon, Oliver, and — as access rolls out — the senior team and
> the practice.** See `SYSTEM.md` for the full repo map.

**The test that keeps the four repos apart:** *does a human invoke it, or does a clock?*
Human-invoked work lives here. Cron-invoked work lives in AL-AGENT. A workflow is designed and
hardened here first; once it runs unattended and reliably, it graduates to an AL-AGENT job whose
runbook *links back* to the skill here rather than copying it — a duplicated copy drifts the
moment either one changes.

---

## Who this serves

Built for Ackroyd Lowrie — a ~25-person RIBA-chartered architecture and design practice, ~40 live
projects, founded 2014 by Jon Ackroyd and Oliver Lowrie. Full identity: `IDENTITY.md`.

Access today: **Jon, Oliver, Biyi** (Tier A — full repo). Planned: Wayne, Andrew, Joe, Jo (Tier B
— role-scoped), then the practice (Tier C). See `roles/README.md` for the access-zone model —
this repo mirrors AL's existing JumpCloud permissions rather than inventing a new one: *if an
architect cannot see the finance folder, Claude cannot either.*

---

## Session Startup

1. `date +%Y-%m-%d`
2. Read `IDENTITY.md`, `SYSTEM.md`
3. Read `ROADMAP.md` for current priorities
4. Check `roles/{your-role}.md` if known — it scopes what you should read next

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
| Cashflow, invoice-release, terms | `context/finance.md` |
| GDPR, consent, permissions, ALAQEP index | `context/governance.md` |
| Firm identity, sectors, service lines, org | `context/practice.md` |
| Staff, JD ladder, expertise | `context/people.md` |
| Clients, ICP, pipeline, hunting partners | `context/clients.md` |
| Marketing, channels, voice | `context/brand.md` |
| Tool-by-tool status | `context/stack.md` |
| A human-invoked workflow | `skills/{proposal,delivery,practice,knowledge,os}/{name}/SKILL.md` |
| Who can see what | `roles/{role}.md` |
| Audit findings, workflow specs, architecture, policies, decisions | `docs/{audit,workflows,architecture,policies,decisions}/` |

Folders not yet built in this pass (`ontology/`, `projects/`, `memory/`, `intelligence/`,
`archive/`) are deferred, not abandoned — see `docs/decisions/` once they're opened.

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

1. **AL-BRAIN is never written directly.** All access to the vault goes through `gbrain` (MCP
   tool or CLI) — no exceptions, no "just this once."
2. **`AL-BRAIN/skillpack.json` keeps `skills: []` permanently.** The vault holds knowledge, never
   code. All skills and scripts live in AL-OS (human-invoked) or AL-AGENT (unattended).
3. **Augmented by default, not full-auto.** Most of what this repo automates is a *suggestion*,
   not a decision. Oliver: *"you don't want to automate the decisions. You want to automate the
   suggestion, and then the architect makes the choice."*
4. **Deterministic where possible.** Fee arithmetic, benchmark lookups, and stage-gate logic are
   calculations, not prompts. Reserve AI judgement for what's actually ambiguous.
5. **Permissions mirror JumpCloud.** A skill or context file scoped above someone's access tier
   is not shown to them, regardless of what they ask.
6. **GDPR is load-bearing.** Enrich ICP-matched contacts only; never delete non-ICP records;
   disclose before enrichment. AL currently has **no written GDPR policy** — treat
   `context/governance.md`'s open section on this as a live gap, not a formality.
7. **Never commit secrets.** Credential *names and locations* live in `SYSTEM.md`; values live in
   `.env` (gitignored) or `Molior-app/secrets/` host-side. Never a bearer token in a committed
   config file.
8. **Templates are scaffolds, not outputs.** No `[bracketed placeholder]` ships in any file. Where
   knowledge genuinely isn't captured yet, write a real `## Open — not yet captured` section
   naming the specific question and the person who can answer it.
9. **Confirm before irreversible or outward-facing actions.** Say what you're about to do first —
   this repo is client-owned; treat every write as visible to Jon and Oliver.
10. **Pipedrive is the BD system of record today; Notion is the parallel-run replacement.**
    Don't treat Notion as authoritative until `context/clients.md` says the switch has happened.

---

## Command Routing

| Intent | Command |
|---|---|
| Draft a fee proposal / scope | `skills/proposal/scope-draft`, `fee-calc`, `drm`, `benchmark` |
| Ask a question about how the practice works | `skills/os/ask` |
| Log a decision, lesson, or capture a signal | `skills/os/capture` |
| Onboard a new team member or role | `skills/os/onboard` |
| End of session | `skills/os/encode` |
| Everything else | check the routing table above before improvising |
