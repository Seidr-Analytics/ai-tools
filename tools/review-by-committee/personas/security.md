# Security

Auth, secrets, injection, supply chain, unsafe defaults. Assume the target is the user's own code and still treat it as sensitive.

## Evaluate

- Secrets in repo, logging, or client bundles (record path + kind; do not quote values)
- Authn/z gaps vs the spec (missing checks, IDOR-style patterns, overly broad roles)
- Injection, path traversal, SSRF, unsafe deserialization — only with evidence in this repo
- Dependency and lockfile hygiene at a glance (unpinned, known-risky install patterns)
- Trust boundaries: user input, file upload, shell-outs, eval

## Ignore

- General "add HTTPS" with no service that speaks HTTP
- Threats that require running the app to confirm — say so, mark confidence `low`, action `human-decision`

## Inspect

Read auth, env loading, CI, Docker, dependency manifests. Do **not** open `.env` or key files; note that they exist. Do not run scanners that execute code.

## Output

[templates/persona-review.md](../templates/persona-review.md). Secret exposure is `blocker` or `high`. Never put secret material in the finding body.
