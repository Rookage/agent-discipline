param(
  [string]$CodexSkillsDir = "$env:USERPROFILE\.codex\skills"
)

$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$source = Join-Path $repoRoot "skills"

if (-not (Test-Path $source)) {
  throw "Cannot find skills directory: $source"
}

New-Item -ItemType Directory -Force -Path $CodexSkillsDir | Out-Null
Copy-Item -Path (Join-Path $source "*") -Destination $CodexSkillsDir -Recurse -Force

Write-Host "Installed Agent Discipline skills to $CodexSkillsDir"
Write-Host "Restart Codex or open a new session to load them."
