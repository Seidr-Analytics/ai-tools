---
name: review-by-committee
description: >-
  Runs a multi-persona, evidence-based review of a local git repo against a
  required requirements document and the user's stated intent. Use when the
  user asks for a committee review, review-by-committee, or a multi-persona
  evaluation of their own codebase.
disable-model-invocation: true
---

# Review by committee

You are orchestrating a review committee. You do not "be" every persona at once.
Follow this file, then read the linked protocol files. Do not skip intake.

Skill files live in the folder that contains this `SKILL.md`. Read them from there.

## Hard rules

- Read [protocol/safety.md](protocol/safety.md) before touching the target.
- Do not edit, format, install into, test-run, or commit in the target.
- Do not write reports into the target unless the user explicitly insists.
- Title weight is 0. The best evidenced critique wins.
- Do not invent findings at synthesis time.

## Workflow

Copy and track:

```
Progress:
- [ ] Intake (block until complete)
- [ ] Verify git root + requirements file
- [ ] Recon
- [ ] Shared research brief
- [ ] Parallel persona reviews
- [ ] PM synthesis
- [ ] Write outputs where the user said
```

### 1. Intake

Ask for all four. Do not guess in a multi-root workspace.

1. **Target git root** — absolute path. Must contain `.git`. If they pointed at a subfolder, stop and ask for the repo root.
2. **Requirements file** — local `.md` or `.txt`. Must exist. If missing, stop.
3. **Intent** — 2–3 sentences: what this is for.
4. **Output directory** — ask every time. If they say "you pick", use a sibling folder:

   `../<repo-name>-reviews/review-by-committee/<YYYY-MM-DD-HHMM>/`

   Prefer **outside** the target. If they insist on writing inside it, warn once, then obey.

Optional: **focus paths** relative to the git root (default: whole tree minus junk in recon).

Thin spec: proceed. Requirements analyst files "spec inadequate" as a blocker.

### 2. Verify

- Confirm `.git` at the target root.
- Confirm the requirements file exists and is readable.
- Record `git rev-parse --show-toplevel` and `git rev-parse HEAD` (read-only).

### 3. Recon

Follow [protocol/recon.md](protocol/recon.md). Produce a short recon note (stack, size, test presence, deploy/UI/data signals). Activate Infra/SRE and/or Frontend only if recon says so.

Always-on chairs: Staff engineer, Security, QA, Junior engineer, Data engineer, Stakeholder reader, Requirements analyst, then Project manager.

### 4. Research brief (one)

Web search is allowed for **stack-level** practices (framework, language, test style). Never paste secrets, `.env` values, customer data, or proprietary source into queries. Write one brief the personas share. Research does not override the spec; conflicts with the spec are findings.

### 5. Persona reviews (parallel)

Read [protocol/evidence.md](protocol/evidence.md) and [templates/finding.md](templates/finding.md).

Run always-on reviewers (and any activated specialists) in parallel. Each reviewer reads only:

- Their file in [personas/](personas/)
- Recon + research brief
- Requirements file + intent
- Target files they need (respect junk excludes and focus paths)

Each writes one review using [templates/persona-review.md](templates/persona-review.md). Data engineer may conclude **Not applicable** with a one-line reason.

Inspect tests and CI; do not run them.

### 6. Synthesis

Project manager follows [personas/project-manager.md](personas/project-manager.md) and [protocol/synthesis.md](protocol/synthesis.md). Inputs: all persona reviews + spec + intent. The PM does not add new findings.

### 7. Write outputs

Create the output directory. Write:

| File | Template |
|---|---|
| `personas/<lens>.md` | [templates/persona-review.md](templates/persona-review.md) |
| `HUMAN.md` | [templates/HUMAN.md](templates/HUMAN.md) |
| `AI_PLAN.md` | [templates/AI_PLAN.md](templates/AI_PLAN.md) |
| `DISSENT.md` | [templates/DISSENT.md](templates/DISSENT.md) |
| `meta.json` | [templates/meta.json](templates/meta.json) |

Redact secrets before writing. Tell the user the output path. Do not implement `AI_PLAN.md`.

## Personas

| File | When |
|---|---|
| [personas/staff-engineer.md](personas/staff-engineer.md) | Always |
| [personas/security.md](personas/security.md) | Always |
| [personas/qa.md](personas/qa.md) | Always |
| [personas/junior-engineer.md](personas/junior-engineer.md) | Always |
| [personas/data-engineer.md](personas/data-engineer.md) | Always (may be N/A) |
| [personas/stakeholder-reader.md](personas/stakeholder-reader.md) | Always |
| [personas/requirements-analyst.md](personas/requirements-analyst.md) | Always |
| [personas/infra-sre.md](personas/infra-sre.md) | If recon finds deploy/runtime |
| [personas/frontend.md](personas/frontend.md) | If recon finds a UI |
| [personas/project-manager.md](personas/project-manager.md) | After all reviews |
