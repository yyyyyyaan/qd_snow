#=====================================================================
# chain_lat1_synth.ps1 -- serial synthesis chain for the MERGED array.
#
# ONE Vivado process at a time (sweep.ps1 is serial by construction), so this
# script must not be run concurrently with any other Vivado job.
#
#   1. rep d3 n=2      -- smallest anchor, must beat the copy version's 1,063 LUT
#   2. surface d3 n=2  -- copy version: 4,375 LUT (flat: 3,992)
#   3. surface d5 n=2  -- the copy version CRASHED here (elaborator stack
#                         overflow, 720 cell instances); the merged array has
#                         90 + 183 = 273, so this is also test 3.3
#=====================================================================
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Log  = Join-Path $Flow 'logs\chain_lat1_synth.txt'
New-Item -ItemType Directory -Force -Path (Join-Path $Flow 'logs') | Out-Null

function Say($m) {
  $line = "{0}  {1}" -f (Get-Date -Format 'HH:mm:ss'), $m
  Write-Host $line
  Add-Content -Path $Log -Value $line -Encoding UTF8
}

$runs = @(
  @('rep', 3), @('surface', 3), @('surface', 5)
)
foreach ($r in $runs) {
  $sw = [System.Diagnostics.Stopwatch]::StartNew()
  Say ("=== lat1 synth {0} d={1} n=2 ===" -f $r[0], $r[1])
  $out = & powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $Flow 'synth_lattice1.ps1') `
         -Code $r[0] -D $r[1] -Slices 2 -Mode synth 2>&1
  $tail = $out | Select-String -Pattern 'header OK|ABORT|FAIL|EXCEPTION|\[run \]|\[done\]|LUT|ns ' |
          Select-Object -Last 8
  foreach ($l in $tail) { Say ("    " + $l.ToString().Trim()) }
  Say ("    elapsed {0:n1} min" -f $sw.Elapsed.TotalMinutes)
  $sw.Stop()
}
Say "chain done"
