# Policies (ALAQEP series + AL-WIKI source)

Source: `AL-WIKI/` (client-supplied) — the practice's own onboarding/offboarding/maintenance/
sign-off policies and JD (job description) ladder.

**Known data-quality issue, flagged in the May 2026 audit and not yet resolved by AL:** there are
**three live numbering collisions** in the ALAQEP series — two different documents each carry the
same reference number for ALAQEP-001, ALAQEP-002, and ALAQEP-004. Do not key any index or lookup
on policy number alone; disambiguate by title and content. Any future knowledge system built on
top of this repo should model policy identity as (number, track, version), not number alone — see
`docs/decisions/` once that's opened.

Also flagged: the file named `ALAQEP-004 GDPR Policy` (referenced in the audit, not present in
this migrated set) reportedly contains QA-process text rather than GDPR content — i.e. **AL
currently has no written GDPR policy**, despite handling personal data through the CRM intake
pipeline. See `context/governance.md`.

## Files in this folder

- `jd-intro.txt` + `jd-001` through `jd-008` — the JD career ladder (Apprentice → Project
  Director). Note: `009-bim-manager-role.txt` is JD-009, the BIM Manager role, added later.
- `onboarding-policy.txt`, `offboarding-policy.txt`, `maintenance-policy.txt`
- `signoff-ss-alaqep-012-policy.txt` — ALAQEP-012, sign-off policy
