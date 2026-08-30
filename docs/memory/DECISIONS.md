# Decisions

Architecture and process choices. Append only; do not rewrite history.

## 2026-08-30 — Repo layout and naming

**Context:** New Seidr repo for sharing AI tools publicly.

**Decision:**

- GitHub repo: `Seidr-Analytics/ai-tools` (kebab-case, no prefix).
- Local folder: `seidr-ai-tools` (Seidr workspace convention).
- Tools live under `tools/<name>/`, each self-contained with its own README and dependencies.
- Private agent memory in `.memory/` (gitignored); shared snapshot in `docs/memory/`.

**Why:** Keeps local workspace consistent with other Seidr projects while presenting a clean public repo name. Per-tool folders make clone-and-run straightforward without a monolithic install.

## 2026-08-30 — Confirm-first project setup

**Context:** Starting new Seidr repos without a shared setup flow caused naming and auth drift.

**Decision:** Use `/new-project` in local-automation — agent asks intent, proposes names, waits for confirmation, then scaffolds locally, adds to workspace, and connects GitHub last.

**Why:** GitHub repo creation comes after local layout is agreed; workspace and memory are part of initialization, not optional follow-ups.

## 2026-08-30 — Review by committee is a Cursor skill

**Context:** First public tool is a multi-persona review of the user's own git repo.

**Decision:**

- Ship as `tools/review-by-committee/` with `SKILL.md`; users copy it to `~/.cursor/skills/review-by-committee/`. No CLI/SDK in v1.
- Target is a local git root. Requirements file (`.md`/`.txt`) is required. Tests are inspect-only. Reports go where the user says (sibling folder if they do not pick).
- Always-on chairs: staff, security, QA, junior, data (may N/A), stakeholder reader, requirements analyst, then PM. Infra/SRE and frontend are recon-activated. Title weight is 0.
- Spec + short intent; thin spec proceeds with a blocker finding. One thoroughness gear. No writes to the target. Secrets never in reports or search queries.

**Why:** Audience is Cursor users evaluating their own code. The product is a repeatable protocol, not a Python entrypoint. Hierarchy would launder findings; evidence ranking will not.
