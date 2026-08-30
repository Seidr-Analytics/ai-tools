# Review by committee

A Cursor skill that reviews **your** local git repo from several chairs (staff engineer, security, QA, junior, data, stakeholder reader, requirements analyst, plus infra/frontend when they apply). A project manager then ranks the evidence — **not the job title** — and writes a short human report plus an implementation plan for a later AI pass.

It does not change your code. It does not run your tests.

## Who this is for

People using [Cursor](https://cursor.com) who want a structured evaluation of a repo they already cloned, against a requirements document they actually have.

## Prerequisites

- Cursor
- A git clone on disk (you will point at the **repo root**, the folder that contains `.git`)
- A requirements file (`.md` or `.txt`) on disk
- Network optional: used only for a shared, stack-level research brief (no source dumps)

## Install (once)

This repo is the source of truth. Cursor loads personal skills from `~/.cursor/skills/`.

**Windows (PowerShell)**, from this folder:

```powershell
.\install.ps1
```

**macOS / Linux:**

```bash
chmod +x install.sh
./install.sh
```

Manual copy:

```text
tools/review-by-committee/  →  ~/.cursor/skills/review-by-committee/
```

Re-copy after you pull updates. Do not add this skill to the repo you are reviewing.

## Run

1. Open **your** project in Cursor (the git repo you want reviewed).
2. Ask for a committee review (name the skill: review-by-committee).
3. Answer intake:

   - Target git root (absolute path)
   - Path to the requirements file
   - 2–3 sentences of intent
   - Where to write outputs

If you say "you pick" for outputs, the agent uses a sibling folder:

`../<repo-name>-reviews/review-by-committee/<timestamp>/`

so reports stay **outside** the repo under review unless you insist otherwise.

## What you get

| File | Purpose |
|---|---|
| `personas/<lens>.md` | Each chair's review |
| `HUMAN.md` | Short summary for non-technical readers and juniors |
| `AI_PLAN.md` | Ordered, file-level plan for a later agent — not applied in this run |
| `DISSENT.md` | Conflicts and how they were resolved (or left open) |
| `meta.json` | Paths, git SHA, which chairs ran |

## What it will not do

- Edit, format, or commit in the target
- Run tests, the app, installers, or Docker
- Put secrets, `.env` values, or customer data in reports or search queries
- Let a "senior" voice override a better-evidenced junior finding
- Implement the AI plan

## Committee

**Always:** Staff engineer, Security, QA, Junior engineer, Data engineer (may be N/A), Stakeholder reader, Requirements analyst, then Project manager.

**If recon finds them:** Infra/SRE, Frontend.

A thin requirements file is still a review: the requirements analyst files "spec inadequate" as a blocker and the rest proceeds.

## Privacy

Treat the target as confidential. Redact credentials and PII. Web research may name languages and frameworks only — never paste proprietary source into a search box.
