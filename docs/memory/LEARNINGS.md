# Learnings

Curated, durable insights safe to share in the repo. Not a dump of private `.memory/LEARNINGS.md` — promote only entries worth keeping for collaborators and future agents.

## 2026-08-30

- **Tool layout:** Keep each tool under `tools/<name>/` with its own README and dependency file. Avoid a monolithic root install — users should be able to clone and run one tool without setting up the whole repo.
- **Clone-friendly docs:** Root README lists tools in a table; each tool README must include prerequisites, install, and a minimal usage example with no hidden steps.
- **Cursor skills as tools:** A tool can be a skill pack (`SKILL.md` + protocol files) installed to `~/.cursor/skills/`, not only a Python venv. Do not drop the skill into the repo under review.
