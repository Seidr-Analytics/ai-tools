# Copy this skill into Cursor personal skills (available in any project).
$ErrorActionPreference = "Stop"
$src = $PSScriptRoot
$skillsRoot = Join-Path $HOME ".cursor\skills"
$dest = Join-Path $skillsRoot "review-by-committee"

if (-not (Test-Path $skillsRoot)) {
    New-Item -ItemType Directory -Path $skillsRoot | Out-Null
}
if (Test-Path $dest) {
    Remove-Item -Recurse -Force $dest
}
Copy-Item -Recurse $src $dest
Write-Host "Installed to $dest"
Write-Host "Open your target repo in Cursor and ask for a committee review."
