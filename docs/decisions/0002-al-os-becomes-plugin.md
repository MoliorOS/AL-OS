# ADR 0002 — AL-OS becomes a plugin; DIRECTOR-OS retired for per-person personal-os repos

**Status:** Decided, 2026-08-20 (supersedes part of ADR 0001)

## Decision

Two changes, one motivation:

1. **AL-OS becomes an installable Claude Code plugin** (`.claude-plugin/plugin.json`) rather than
   a repo people open directly. It keeps everything it already had — `context/`, `skills/`,
   `roles/`, `docs/`, `ontology/` — but is now the **shared skill layer**, installed once, used
   from wherever a person's own working directory is.
2. **`DIRECTOR-OS` is retired.** It's replaced by one repo per person — a **personal-os** —
   scaffolded by `skills/os/onboard`. The first two, `JON-OS` and `OLI-OS`, replace what
   `DIRECTOR-OS` held for Jon and Oliver. There is no shared director repo anymore; each director
   has their own.

## Why

ADR 0001 solved the read-access problem (Administration content shouldn't be in a repo the wider
practice can clone) by moving it to a second repo, shared by all three directors via a submodule
back to AL-OS. That fixed *who can see Administration content* but left two things unsolved:

- **AL-OS was still something people had to `cd` into and read**, rather than a capability that
  travels with them — every new person meant explaining "clone this, read these files in this
  order" by hand.
- **A shared `DIRECTOR-OS` still mixed Jon's and Oliver's own material in one repo** — the same
  "separate store, not label" problem ADR 0001 named, one level down. Jon's `working-style.md`
  living next to Oliver's in the same clone was the same shape of issue the original split fixed
  for the wider practice.

Reframing AL-OS as a plugin and giving every person their own personal-os repo resolves both:
skills become something you *install*, not a folder you *read*; and each person's own facts and
drafts get their own real store, not a shared folder inside a repo three people happen to have
access to.

## What this means concretely

- `context/`, `roles/`, `docs/`, `ontology/`, and all of `skills/` — including the two
  director-tier skills, `cashflow-brief` and `invoice-ready`, moved **back** into AL-OS from
  `DIRECTOR-OS` — stay in this repo, now shipped as plugin content.
- Legacy `.claude/commands/` and the flat `.claude/skills/` folder are deleted — both fully
  superseded by `skills/{domain}/{name}/SKILL.md`, which is the plugin's real skill source.
- `admin/*.md` (finance, governance, pipeline-fee-strategy, project-commercials, resourcing) is
  no longer AL-OS content at all — it lives in each director's own personal-os repo
  (`JON-OS/admin/`, `OLI-OS/admin/`), seeded at scaffold time from an existing peer's copy, then
  free to diverge.
- A skill that reads `admin/finance.md` (like `cashflow-brief`) does so as a **bare,
  working-directory-relative path** — it resolves correctly in `JON-OS` or `OLI-OS` precisely
  because those are the working directory, and does nothing useful anywhere else. See
  `skills/CLAUDE.md`'s path-convention section — this is now a load-bearing distinction for every
  skill in this repo, not just these two.
- `skills/os/onboard` is the mechanism that produces a new personal-os repo — see that file for
  the full procedure. It scaffolds by role: director-tier is a proven shape (`JON-OS`, `OLI-OS`);
  every other tier is a first draft, honestly marked as unvalidated until a real Tier B/C
  onboarding runs through it.

**2026-08-20, same day, addendum:** `JON-OS` and `OLI-OS` were built out further, backwards —
the repos first, `skills/os/onboard` updated to match second, so the scaffold logic reflects a
real working structure rather than a guess. Every personal-os now gets its own `AGENTS.md`/
`CLAUDE.md` (this repo's own manifest, not a copy of AL-OS's) and a `skills/` folder for
genuinely personal skills — matching the original architecture diagram's Personal-OS box (Team /
Working Style / Private drafts / Personal skills). This is *not* AL-OS's `context/`/`skills/`
duplicated into each repo — that was explicitly rejected to avoid drift; a personal skill is one
that doesn't belong in the shared plugin at all, and graduates there via `skills/os/capture` if
it turns out to.

## Not decided here

- Whether `admin/*.md` drift between `JON-OS` and `OLI-OS` needs an active reconciliation
  mechanism, or stays a manual `skills/os/capture`-style edit indefinitely.
- Where a plugin marketplace (`marketplace.json`) might live if AL-OS is ever distributed to more
  than the current install-by-git-URL flow — not needed at current scale.
