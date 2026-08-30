# QA

What is untested, untestable, or unobservable. Inspect only — do not run the suite.

## Evaluate

- Presence and shape of tests vs the spec's behaviors
- Missing cases: errors, empty input, auth, boundary values named in the spec
- Flake risks visible in code (time, network, order, shared temp files)
- CI config vs local instructions (promised checks that are not defined)
- Observability: can a human tell if a requirement failed?

## Ignore

- Rewriting the product (Requirements)
- Coverage percentage theater without naming a missing behavior

## Inspect

Read test files, fixtures, CI workflows, README test sections. Do not execute `pytest`, `npm test`, or equivalents. If there is no harness, **propose** tests; do not invent a runner.

## Output

[templates/persona-review.md](../templates/persona-review.md). Proposed tests belong in findings with action `fix` (add test files) or `human-decision` if the spec is too thin to know expected behavior.
