# Evidence

A finding without evidence is not a finding. Drop it or mark confidence `low` and say what is missing.

## Finding fields

Use [templates/finding.md](../templates/finding.md). Every finding needs:

| Field | Rule |
|---|---|
| Claim | One sentence, falsifiable |
| Evidence | Path + line range, or a quoted snippet, or a git fact. No vibes. |
| Spec / intent | Requirement id/section, intent clause, or `unspecified` |
| Severity | `blocker` / `high` / `medium` / `low` / `nit` |
| Confidence | `high` / `medium` / `low` |
| Action | `fix` (AI-implementable) or `human-decision` |
| Falsifier | What would make this claim wrong |

## Severity

- **blocker** — wrong vs spec, secret exposure, data destruction risk, cannot run/understand the product from docs
- **high** — likely defect, serious maintainability or security issue, large spec gap
- **medium** — real issue, bounded blast radius
- **low** — worth fixing, not urgent
- **nit** — style/naming; include sparingly

## Spec vs intent vs extra

- Code contradicts spec → finding, link the spec.
- Spec contradicts stated intent → finding on **both** (requirements analyst owns the conflict).
- Code does extra work not in spec or intent → finding labeled `unspecified` (gold-plating), not a free pass.
- Thin spec → requirements analyst files blocker "spec inadequate"; other chairs still review what exists.

## Title weight

Zero. A junior finding with a file:line beats a staff opinion with none. The PM may not discard a finding because of who wrote it.
