# Copy the latest vocabulary build from the HD Quiz source into this public repo.
# Usage: .\sync-from-hdquiz.ps1   (default source: ..\source)
param([string]$Source = (Join-Path $PSScriptRoot '..\source'))

$ErrorActionPreference = 'Stop'
$here = $PSScriptRoot

Copy-Item (Join-Path $Source 'data\vocab\vocab-cefrj-vi.json') (Join-Path $here 'data\')
Copy-Item (Join-Path $Source 'data\vocab\HDQuiz-tu-vung-CEFR-J-A1-B2.xlsx') $here
Copy-Item (Join-Path $Source 'data\vocab\qa-overrides.json') (Join-Path $here 'qa\')
foreach ($l in 'A1', 'A2', 'B1', 'B2') {
  Copy-Item (Join-Path $Source "public\vocab\$l.json") (Join-Path $here 'data\theo-cap\')
  Copy-Item (Join-Path $Source "public\vocab\ctx-$l.json") (Join-Path $here "data\cau-vi-du\$l.json")
}
Write-Host 'Copied. Review with "git diff --stat", then commit and push.'
