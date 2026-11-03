#=====================================================================
# chain_lat1_synth2.ps1 -- surface synthesis for the MERGED array.
#
#   1. surface d3 n=2  -- the second LUT(n) comparison point
#   2. surface d5 n=2  -- the copy version CRASHED here (elaborator stack
#                         overflow, 720 cell instances).  The merged array has
#                         90 + 183 = 273, so this is objective item 4.
#
# ONE Vivado process at a time.
#=====================================================================
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Log  = Join-Path $Flow 'logs\chain_lat1_synth2.txt'
New-Item -ItemType Directory -Force -Path (Join-Path $Flow 'logs') | Out-Null

function Say($m) {
  $line = "{0}  {1}" -f (Get-Date -Format 'HH:mm:ss'), $m
  Write-Host $line
  Add-Content -Path $Log -Value $line -Encoding UTF8
}

foreach ($r in @(@('surface', 3), @('surface', 5))) {
  $sw = [System.Diagnostics.Stopwatch]::StartNew()
  Say ("=== lat1 synth {0} d={1} n=2 ===" -f $r[0], $r[1])
  $out = & powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $Flow 'synth_lattice1.ps1') `
         -Code $r[0] -D $r[1] -Slices 2 -Mode synth 2>&1
  $tail = $out | Select-String -Pattern 'header OK|ABORT|FAIL|done|EXCEPTION|termination' |
          Select-Object -Last 6
  foreach ($l in $tail) { Say ("    " + $l.ToString().Trim()) }
  Say ("    elapsed {0:n1} min" -f $sw.Elapsed.TotalMinutes)
  $sw.Stop()
}
Say "chain2 done"
