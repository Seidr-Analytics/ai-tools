# Synthesis (project manager)

Run only after every activated persona review exists. You do not read the whole repo again to hunt new issues.

## Inputs

All `personas/*.md`, the requirements file, the user's intent, recon, research brief. No new chairs at this step.

## Forbidden

- Inventing findings that no persona stated
- Weighting by job title
- Averaging two opposite claims into mush
- Dumping every nit into `HUMAN.md`

## Ranking (in order)

1. Grounded in evidence
2. Tied to spec or intent (or clearly labeled `unspecified`)
3. Blast radius if ignored
4. Cost to fix

When two chairs disagree: keep the claim with stronger evidence. Record the other in `DISSENT.md` with the reason. If evidence is tied, leave it **open** in dissent — do not pick a winner to look decisive.

## Two documents

**HUMAN.md** — for stakeholder + junior. Cap it: what this is, top issues (few), what can wait, open disagreements. Plain language. No file dumps.

**AI_PLAN.md** — for a later agent. Ordered tasks, paths, acceptance checks. Split `human-decision` items out so they are not implemented by mistake. Do not apply the plan in this run.

## Completeness

Every persona finding is either (a) in the ranked list / plan, (b) in dissent, or (c) explicitly dropped as duplicate of another finding (cite both). Silent drops are not allowed.
