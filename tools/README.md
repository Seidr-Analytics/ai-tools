# Tools

Each tool is a self-contained folder:

```
tools/
  <tool-name>/
    README.md          # what it does, prerequisites, how to run
    requirements.txt   # or pyproject.toml — pin what this tool needs (if Python)
    SKILL.md           # if this tool is a Cursor skill
    ...                # scripts, notebooks, configs, protocol files
```

## Adding a tool

1. Create `tools/<tool-name>/` (kebab-case).
2. Add a README with: purpose, install steps, usage example, and any API keys the user must supply (never commit secrets).
3. Keep dependencies minimal — only what that tool needs.
4. Update the tool table in the root `README.md`.

## Running a tool

**Cursor skill:** follow that tool's README (usually copy the folder to `~/.cursor/skills/<name>/`). Do not install it into the repo you are reviewing.

**Python:**

```bash
cd tools/<tool-name>
python -m venv .venv
# Windows
.\.venv\Scripts\Activate.ps1
# macOS/Linux
source .venv/bin/activate
pip install -r requirements.txt
# follow the tool README from here
```
