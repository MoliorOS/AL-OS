#!/usr/bin/env bash
# AL-OS plugin — session start, read-only orientation, no side effects.
cat <<'MSG'
[AL-OS plugin active]
This is the shared skill layer, not a working directory — it ships skills, firm context,
role definitions, and process. Your own facts and drafts live in your personal-os repo (e.g.
JON-OS, OLI-OS), not here. New to the fleet? Run skills/os/onboard to scaffold your own
personal-os repo, gated by role.
MSG
