# Context

Published project snapshot for **ai-tools**. Sanitized from private `.memory/CONTEXT.md`. Safe to commit. Keep under ~80 lines.

## What this is

Open collection of practical AI tools and experiments from Seidr Analytics — built so others can clone and use them easily. Each tool lives under `tools/<name>/` with its own README and setup steps.

## Current state

- Initialized 2026-08-30. First published tool: `tools/review-by-committee` (Cursor skill; copy to `~/.cursor/skills/`).
- Public README includes clone instructions (SSH and HTTPS).

## How we work

- Python-first unless a tool is a Cursor skill (or otherwise needs something else); minimal dependencies per tool.
- See root README and `tools/` for setup and conventions.
- New tools: self-contained folder, own README, update root tool table.

## Constraints

- Private session notes live in `.memory/` (gitignored). This file is the shared view only.
- No secrets, API keys, or credentials in committed docs.

## Out of scope

- Production SaaS hosting (clone/local use first).
