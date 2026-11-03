#=====================================================================
# battery_lat1_cycles.ps1 -- P0b: the measured n-axis cycle slope.
#
# For every (code, d, slices) it runs the standard line-exact lattice
# regression and collects the testbench's per-round cycle report
# (`[cyc] round=<i> cycles=<c>`, printed by tb_snowflake_pe_array_lat1.sv to
# stdout only -- rtl_trace.txt is untouched, so PASS/FAIL is unaffected).
#
# Why: the d21 `ns/round <= ~1 us` budget rests entirely on a cycle count that
# had never been measured on the n axis.  With `-Slices n` the per-round cost is
# ~ n x (per-slice execution) + overhead, so the slope in n IS the per-slice
# cost, and the flat array (n=1 by construction: one stage per clock) anchors
# the d scaling.
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\battery_lat1_cycles.ps1
#=====================================================================
param(
  [string[]] $Cfgs = @(
    'rep:3:2', 'rep:3:3',
    'rep:5:2', 'rep:5:3', 'rep:5:5',
    'surface:3:2', 'surface:3:3',
    'surface:5:2', 'surface:5:3', 'surface:5:5'
  )
)
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$out  = Join-Path $Flow 'logs\battery_lat1_cycles.txt'
New-Item -ItemType Directory -Force -Path (Join-Path $Flow 'logs') | Out-Null
"# P0b cycles-per-round battery -- $(Get-Date -Format s)" | Set-Content -Encoding ASCII $out

foreach ($cfg in $Cfgs) {
  $f = $cfg -split ':'
  $code = $f[0]; $d = [int]$f[1]; $n = [int]$f[2]
  $tag = "lat1_${code}_d${d}_s${n}"
  $log = Join-Path $Flow "logs\msim_$tag.log"
  $before = 0
  if (Test-Path $log) { $before = (Get-Item $log).Length }

  Write-Host "[cyc-bat] $tag"
  powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $Flow 'msim_regress_lat1.ps1') `
      -Code $code -D $d -Slices $n *>> $out
  $rc = $LASTEXITCODE

  $verdict = (Select-String -Path $out -Pattern 'REGRESS_VERDICT' | Select-Object -Last 1).Line
  # ModelSim prefixes $display output with `# `, so the TB's report arrives as
  # "# [cyc] round=..." -- match the marker, not the line start.
  $cyc = @(Select-String -Path $log -Pattern '\[cyc\] round=(\d+) cycles=(\d+)' -AllMatches |
           ForEach-Object { [int]$_.Matches[0].Groups[2].Value })
  if ($cyc.Count -gt 12) { $cyc = $cyc[($cyc.Count - 12)..($cyc.Count - 1)] }
  $mean = 0.0
  if ($cyc.Count -gt 0) { $mean = ($cyc | Measure-Object -Average).Average }
  $line = ("RESULT {0,-22} rounds={1,2} mean_cycles={2,7:N2}  min={3,3} max={4,3}  rc={5}  {6}" -f `
           $tag, $cyc.Count, $mean, ($cyc | Measure-Object -Minimum).Minimum,
           ($cyc | Measure-Object -Maximum).Maximum, $rc, $verdict)
  Write-Host $line
  $line | Add-Content -Encoding ASCII $out
}
Write-Host "[cyc-bat] done -> $out"
