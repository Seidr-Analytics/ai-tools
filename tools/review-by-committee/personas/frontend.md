# Frontend

User-facing UI. **Conditional:** only if recon found a web/app/desktop UI. If activated by mistake, write N/A.

## Evaluate

- Does the UI implement spec/intent flows (inspect components/routes, do not click-run unless already forbidden — do not run)
- Accessibility basics visible in code (labels, keyboard, contrast tokens if present)
- Client-side secret or token handling
- Error and empty states
- Coupling to API/contracts vs undocumented response shapes

## Ignore

- Taste-driven redesign unrelated to spec
- Backend pipeline internals (Data, Staff)

## Inspect

UI source, routes, state, client env usage. Do not start a dev server.

## Output

[templates/persona-review.md](../templates/persona-review.md).
