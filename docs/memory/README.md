# Shared project memory

Committed, sanitized view of project context. **Private** notes (sessions, worklog, open threads) stay in `.memory/` (gitignored).

| File | Role | Promoted on wrap |
|---|---|---|
| CONTEXT.md | Onboarding snapshot | Auto (from private CONTEXT) |
| DECISIONS.md | ADRs | Auto (new entries this session) |
| LEARNINGS.md | Curated insights | Ask user (0–3 entries) |

Never put secrets, API keys, local paths, or raw session dumps here.
