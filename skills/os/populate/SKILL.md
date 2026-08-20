---
name: populate
version: 0.2.0
status: live
description: >
  Run a targeted interview with a named person to close the specific `## Open — not yet
  captured` gaps this repo already knows are theirs to answer — not a generic brain-dump, a
  scoped conversation against real, named open items. Use when someone says "interview me",
  "let's fill in the gaps", "populate the context", "I have time to sit down with you", or
  when a session opens with a person named in `${CLAUDE_PLUGIN_ROOT}/context/`'s owner headers.
domain: os
module: —
owner: —
access-tier: firm
triggers:
  - "interview me"
  - "let's populate the context"
  - "fill in the gaps"
  - "/populate"
allowed-tools: Read, Grep, Edit, WebFetch, Glob
fixes: L3 (email-as-knowledge-store) and the extraction backlog named throughout `${CLAUDE_PLUGIN_ROOT}/ROADMAP.md` — this is the mechanism that actually closes it, session by session
---

## What this does, and why it's not `os-setup`

This repo did not start empty — `${CLAUDE_PLUGIN_ROOT}/context/` already has real structure, real citations, and
honestly-marked gaps. The job here is narrower and higher-signal than a from-scratch vault
bootstrap: **find the specific things this repo already says a specific person needs to answer,
and ask that person exactly those things** — not twelve generic categories hoping something
sticks. A twenty-minute session that closes four named gaps beats an hour-long brain dump that
produces vague paraphrase.

This skill is a structured way of repeatedly invoking `skills/os/capture` — every answer gets
written the same way capture would write it (one home, no placeholders, correct or remove the
open item it closes). Read `skills/os/capture/SKILL.md` before running this; don't reimplement
its write logic here.

## Procedure

### 1. Discover the open gaps

Grep every file for `## Open` sections and header ownership lines — plugin content and the
working directory's own `admin/`, both:

```bash
grep -rn "^## Open" "${CLAUDE_PLUGIN_ROOT}/context/" "${CLAUDE_PLUGIN_ROOT}/roles/" "${CLAUDE_PLUGIN_ROOT}/ROADMAP.md" "${CLAUDE_PLUGIN_ROOT}/docs/decisions/" admin/ 2>/dev/null
grep -rln "^> \*\*Owner:\*\*" "${CLAUDE_PLUGIN_ROOT}/context/" admin/ 2>/dev/null
```

For each hit, read the file in full — the owner line, the `Status:` note, and the actual bullet
list under `## Open — not yet captured`. Build a working table: `{file, owner(s), each open
item verbatim}`. Also check `${CLAUDE_PLUGIN_ROOT}/skills/*/SKILL.md` files with
`status: specified` — many name exactly which `context/` gap blocks them (e.g.
`skills/proposal/*` blocked on `${CLAUDE_PLUGIN_ROOT}/context/scope.md`; `skills/practice/
cashflow-brief` blocked on the working directory's own `admin/finance.md` — that one only
applies if the person being interviewed has an `admin/` folder at all, i.e. is a director).

Also check `${CLAUDE_PLUGIN_ROOT}/roles/README.md`'s "Surface question — not yet settled" and
`${CLAUDE_PLUGIN_ROOT}/ROADMAP.md`'s "What's next" — open decisions live there too, not only
inside `context/`.

### 2. Identify who's in the room

If not already stated in the conversation, ask directly (`AskUserQuestion`, one question):
who is being interviewed. Offer the owners actually found in step 1 as options (typically Jon
Ackroyd, Oliver Lowrie, Wayne McKiernan, Andrew Bonner, Jo Greenoak, Anita Ford), plus "someone
else — I'll type the name."

### 3. Filter to their items only

Cross-reference the owner field against the person named in step 2. A file can name two owners
(e.g. `finance.md`: Jon + Anita) — only ask the parts attributable to the person in the room;
don't make Jon answer Anita's Xero/payroll mechanics if she's not present. If genuinely
ambiguous which open item belongs to which owner, ask a light disambiguating question rather
than guessing.

If the person in the room has few or no open items of their own, say so plainly and either end
the session or offer to interview them on someone else's gap they happen to know the answer to
(this happens — Oliver may know part of what's filed as Jon's).

### 4. Run the interview — one item at a time, not a form

For each open item, ask **the actual question that item already states**, not a rephrased
generic prompt. Example: `${CLAUDE_PLUGIN_ROOT}/context/finance.md`'s open item is "the full cashflow spreadsheet
logic — VAT handling, the seasonal £150k→£7k pattern" — ask exactly that, ideally inviting them
to walk through the live spreadsheet rather than describe it from memory.

Accept any answer shape:
- **Spoken/typed answer in the conversation** — take it directly.
- **A pasted transcript or dictation** — use as-is, don't paraphrase away specificity (exact
  numbers, exact phrasing, exact names).
- **A link** (a Notion page, a Google Doc, a spreadsheet URL) — `WebFetch` it.
- **A local file or folder path** (a spreadsheet export, a policy PDF) — `Read` it, or `Glob`
  then `Read` each file in a folder.

One follow-up question per item, maximum, if the first answer is genuinely incomplete — this
mirrors the rest of the repo's "augmented, not exhaustive" posture. Don't drill. If they don't
know, or don't have time to go deep on one item, move on — a partially-answered item with an
honest note beats stalling the whole session on one gap.

### 5. Write immediately, per item — don't batch to the end

As soon as an item is answered well enough to write, write it. **Which repo depends on which
file the open item lives in:**
- An item in `${CLAUDE_PLUGIN_ROOT}/context/*.md` — edit it there, then commit and push from
  inside `${CLAUDE_PLUGIN_ROOT}` back to `MoliorOS/AL-OS`, exactly as `skills/os/capture`
  describes. Don't defer this to the end of the interview — push per item, same reasoning as
  writing per item.
- An item in the working directory's own `admin/*.md` — edit it directly, bare relative path,
  no plugin-root prefix, no separate push-from-elsewhere step; it commits with the rest of that
  session's working-directory changes via `/encode`.

Either way:
- Edit the specific file's relevant section directly.
- Replace or remove the `## Open — not yet captured` bullet that item corresponds to — don't
  leave a stale open question sitting next to its own answer.
- Preserve the person's actual words, numbers, and phrasing; don't smooth them into generic
  prose.
- If the answer only partially closes the gap, keep an `## Open` entry, but rewrite it to state
  precisely what's still missing — never leave the original vague wording once a fuller
  understanding exists.
- **Never write a placeholder.** If they say "I don't know, ask Anita," write exactly that as
  the updated open item, naming Anita — same rule as everywhere else in this repo.

Writing per-item (not batching) means a session that gets interrupted after three of six items
still leaves three real improvements committed to memory, not lost in an unsaved draft.

### 6. Close the session

Summarize, briefly:
- Which items got closed, which got partially closed, which are still fully open.
- If any item surfaced as Administration-tier content (finance, governance, pipeline strategy)
  but the person in the room isn't a director — say so and note it belongs in a director's own
  `admin/`, not wherever this interview happened to surface it.
- Suggest who should run `/populate` next, based on remaining open items' owners.
- Point to `/encode` to close out both repos properly (working directory and, if `context/` was
  touched, the plugin install) if this was the last thing happening.

## What it does not do

Does not invent categories to ask about beyond what `## Open` sections and `status: specified`
skills already name — if there's a real gap this repo hasn't yet identified as open, that's a
`skills/os/capture` moment (someone volunteering new information), not this skill's job to go
fishing for. Does not ask a non-director about Administration-tier gaps — those only exist in a
director's own `admin/`, which a non-director's session has no reason to read at all.
