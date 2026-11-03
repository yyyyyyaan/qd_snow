#=====================================================================
# battery_netlist_lat1.ps1 -- gate-level (netlist) regression battery.
#
# Mirrors fpga_flow/battery_lat1.ps1 (the RTL line-exact battery) but runs the
# post-synthesis functional netlist through the SAME testbench and the SAME
# golden comparison, so "synthesis did not change the semantics" is a measured
# statement per configuration rather than an assumption.
#
# Costs are dominated by `synth_design`, so the list is ordered cheap-first and
# `surface d5` is deliberately NOT in the default set: its elaboration peak was
# 12.2 GB on a 16 GB machine (see the report), i.e. it must run alone.
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\battery_netlist_lat1.ps1
#   ... -Cfgs @('rep:3:2','rep:3:2:seam','surface:5:2')
#=====================================================================
param(
  [string[]] $Cfgs = @(
    'rep:3:2', 'rep:3:2:seam', 'rep:3:3',
    'surface:3:2', 'surface:3:2:seam', 'surface:3:3',
    'rep:5:2', 'rep:5:3', 'rep:5:5'
  )
)
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$out  = Join-Path $Flow 'logs\battery_netlist_lat1.txt'
New-Item -ItemType Directory -Force -Path (Join-Path $Flow 'logs') | Out-Null
"# gate-level netlist battery -- $(Get-Date -Format s)" | Set-Content -Encoding ASCII $out

foreach ($cfg in $Cfgs) {
  $f = $cfg -split ':'
  $code = $f[0]; $d = [int]$f[1]; $n = [int]$f[2]
  $pat = 'std'; if ($f.Count -gt 3) { $pat = $f[3] }
  $sub = $pat; if ($sub -eq 'std') { $sub = '' } else { $sub = "_$sub" }
  $synthLog = Join-Path $Flow "logs\netlist_synth_lat1_${code}_d${d}_s${n}${sub}_netlist.log"

  # Vivado's installer-script read flake -- `couldn't read file ".../scripts/rt/data/
  # common.tcl"` or `.../realtime/<top>.tcl` -- kills synth_design for reasons that
  # have nothing to do with the design (it is recorded in NEXT_SESSION_PROMPT.md
  # section 1).  Running configurations back to back makes it common, presumably
  # because the previous run's `.Xil` scratch is still being cleaned up, so retry
  # those automatically after a pause instead of reporting a bogus FAIL.
  $maxTry = 3
  for ($try = 1; $try -le $maxTry; $try++) {
    if ($try -gt 1) { Write-Host "[net-bat] retry $try/$maxTry (installer flake)"; Start-Sleep -Seconds 20 }
    Write-Host "[net-bat] $code d=$d n=$n $pat"
    powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $Flow 'netlist_regress_lat1.ps1') `
        -Code $code -D $d -Slices $n -Pattern $pat *>> $out
    $rc = $LASTEXITCODE
    $flaked = $false
    if ($rc -ne 0 -and (Test-Path $synthLog)) {
      $flaked = [bool](Select-String -Path $synthLog -Pattern "couldn't read file" -Quiet)
    }
    if (-not $flaked) { break }
  }
  Start-Sleep -Seconds 10

  $verdict = (Select-String -Path $out -Pattern 'REGRESS_VERDICT' | Select-Object -Last 1).Line
  $md = (Select-String -Path $out -Pattern 'netlist written' | Select-Object -Last 1).Line
  $line = ("RESULT {0,-6} d={1,-3} n={2,-2} {3,-4} rc={4} attempts={5}  {6}  |  {7}" -f `
           $code, $d, $n, $pat, $rc, $try, $verdict, $md)
  Write-Host $line
  $line | Add-Content -Encoding ASCII $out
}
Write-Host "[net-bat] done -> $out"
