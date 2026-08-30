# Safety

Non-negotiable. Applies to every chair and to the orchestrator.

## Target is read-only

Do not: edit files, format, generate code into the target, `git commit` / `checkout` / `stash` / `reset`, install packages into the project, run the app, run tests, run Docker Compose, migrate databases, or call production APIs.

Do: read files, list the tree, read-only git (`status`, `log`, `diff`, `rev-parse`).

## Secrets and PII

Never copy into reports, `meta.json`, chat summaries, or web search queries:

- `.env` values, API keys, tokens, passwords, connection strings
- Private keys, certs, `credentials.json`, wallet files
- Customer data, personal names/emails/phones from datasets
- Auth headers or session cookies found in fixtures

If a file looks like a secret store, record **path + kind** (e.g. "`.env` present") and stop reading its contents. Redact any accidental capture as `[REDACTED]`.

## Web search

Allowed: language, framework, and test-runner names; public docs; dated best-practice articles.

Forbidden: pasting target source, logs with secrets, internal URLs with tokens, or proprietary algorithms.

## Junk excludes (always)

Skip unless a chair has a specific reason and says so: `.git/` objects, `node_modules/`, `.venv/` / `venv/`, `__pycache__/`, `dist/` / `build/`, coverage output, large binary/data blobs, OS junk. Lockfiles: read only when supply-chain or pin hygiene is in scope (Security, Staff, Data).

## Output location

Write only to the directory the user chose. Prefer outside the target. Do not create files in the target "for convenience."
