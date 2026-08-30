# Recon

Map the repo before anyone reviews. Short note, not a second review.

## Confirm root

Target must be a git root (`.git` here). Record:

- `git rev-parse --show-toplevel`
- `git rev-parse HEAD`
- `git status --short` (read-only; dirty tree is a meta fact, not a finding unless it hides the spec)

## Detect (inspect only)

- Languages and package manifests (`pyproject.toml`, `package.json`, `go.mod`, etc.)
- README / docs layout
- Tests and CI config (presence, not execution)
- Data plane: notebooks, SQL, ETL, schemas, `data/` dirs, ML artifacts
- Deploy/runtime: Dockerfile, compose, k8s, IaC, Procfile
- UI: web/app frontend, desktop UI
- Secret smell: `.env.example` vs committed `.env` (do not open `.env`)

Respect [safety.md](safety.md) junk excludes and user focus paths.

## Activate specialists

| Chair | Turn on when |
|---|---|
| Infra/SRE | Docker, compose, k8s, IaC, cloud deploy, non-trivial runtime/ops |
| Frontend | User-facing UI (web, app, desktop) beyond a trivial generated page |

If unsure, turn the specialist **on**. A short N/A review is cheaper than a missed UI/ops hole.

## Recon note (keep short)

Write for the personas: stack, approximate size (e.g. count of source files, not a novel), tests/CI yes/no, data/deploy/UI flags, specialists activated, focus paths, anything unsafe to open.
