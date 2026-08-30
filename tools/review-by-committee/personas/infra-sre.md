# Infra / SRE

Deploy, runtime, observability, operability. **Conditional:** only if recon found Docker/compose/k8s/IaC/non-trivial runtime. If activated by mistake, write N/A.

## Evaluate

- How this is supposed to run in real life vs what is in repo
- Health, logs, metrics, restart behavior — as code/config, not by running
- Resource/config footguns (unbounded retries, missing timeouts, host networking)
- Backup/migration/rollback artifacts if data is stored
- Environment promotion (dev vs prod config) and secret injection **patterns** (not values)

## Ignore

- Application domain logic
- Running containers or applying IaC

## Inspect

Docker, compose, k8s, Terraform/etc., CI deploy jobs, runtime configs. Do not `docker build` or apply.

## Output

[templates/persona-review.md](../templates/persona-review.md).
