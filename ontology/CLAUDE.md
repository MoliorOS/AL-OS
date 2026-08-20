# ontology/ — record schemas, not records

Each file here defines the **fields** a record type carries in AL-BRAIN — what makes a Person a
Person, a Deal a Deal — not the records themselves. The records live in AL-BRAIN, written only
through `gbrain put_page`; this folder is the schema those writes should validate against.

**Source:** transcribed from the practice's own Ontology diagram (2026-08-20 working session),
cross-check against AL-BRAIN's live schema pack (`mcp__molior_brain__get_active_schema_pack`)
before treating any field list here as authoritative — schema drift between this folder and
gbrain's actual pack is a known failure mode (see MOLIOR-OS memory:
`project_al_brain_review.md`).

**Four record types today:** `people.md`, `companies.md`, `deals.md`, `projects.md`. Each field
line is `NAME — what it means / allowed values`, with `→ TypeName` marking a relationship to
another record type.
