#=====================================================================
# run_lattice1_surface_d5.ps1 -- unattended long run for the one measurement
# that is left: the MERGED lattice on `surface d5 n=2`.
#
# Why it needs its own driver:
#   * it is BIG -- 273 datapaths, MEM = 5,460 words (109,200 state bits).
#     Measured on this machine: elaboration passes (that was the round-3
#     blocker), then it sits in "Cross Boundary and Area Optimization" for
#     >55 minutes at 8.3 GB without producing FLOW_RESULT.
#   * it can OOM the box (16 GB).  This driver watches free physical memory and
#     kills Vivado before the machine swaps itself to death -- the launch that
#     took 22 GB in round 3 cost a whole run.
#
# It is safe to re-run: the sweep writes one CSV row per tag, and the LAST row
# for `lat1_surface_d5_2to1_lattice_lat_xcvu9p` is the one to quote.
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\run_lattice1_surface_d5.ps1
#=====================================================================
param(
  [int] $FreeFloorMB = 400,       # kill below this much free physical memory
  [int] $MaxMinutes  = 180
)
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Log  = Join-Path $Flow 'logs\run_lattice1_surface_d5.txt'
New-Item -ItemType Directory -Force -Path (Join-Path $Flow 'logs') | Out-Null

function Say($m) {
  $line = "{0}  {1}" -f (Get-Date -Format 'HH:mm:ss'), $m
  Write-Host $line
  Add-Content -Path $Log -Value $line -Encoding UTF8
}

Say ("start: surface d5 n=2, floor ${FreeFloorMB}MB, cap ${MaxMinutes}min")
$sw = [System.Diagnostics.Stopwatch]::StartNew()

$job = Start-Job -ScriptBlock {
  param($flow)
  & powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $flow 'synth_lattice1.ps1') `
      -Code surface -D 5 -Slices 2 -Mode synth 2>&1
} -ArgumentList $Flow

$killed = $false
$low = 0
while ($job.State -eq 'Running') {
  Start-Sleep -Seconds 30
  $free = [int]((Get-CimInstance Win32_OperatingSystem).FreePhysicalMemory / 1024)
  $vw = Get-Process vivado -ErrorAction SilentlyContinue
  $mb = if ($vw) { [int](($vw | Measure-Object WorkingSet64 -Sum).Sum / 1MB) } else { 0 }
  if (($sw.Elapsed.TotalSeconds % 600) -lt 31) {
    Say ("  t={0:n1}min vivado={1}MB free={2}MB" -f $sw.Elapsed.TotalMinutes, $mb, $free)
  }
  if ($free -lt $FreeFloorMB) {
    # two consecutive samples, so a transient allocation spike does not kill a
    # run that would otherwise fit (measured: one sample dipped to 521MB)
    $low = $low + 1
    if ($low -ge 2) {
      Say ("!! free memory ${free}MB < floor ${FreeFloorMB}MB twice -- killing Vivado")
      Get-Process vivado -ErrorAction SilentlyContinue | Stop-Process -Force
      $killed = $true
      break
    }
  } else { $low = 0 }
  if ($sw.Elapsed.TotalMinutes -gt $MaxMinutes) {
    Say ("!! time cap ${MaxMinutes}min reached -- killing Vivado")
    Get-Process vivado -ErrorAction SilentlyContinue | Stop-Process -Force
    $killed = $true
    break
  }
}
if (-not $killed) {
  $out = Receive-Job $job 2>&1
  foreach ($l in ($out | Select-String 'done|FAIL|ABORT')) { Say ("  " + $l.ToString().Trim()) }
}
Remove-Job $job -Force -ErrorAction SilentlyContinue
Say ("elapsed {0:n1} min; killed=$killed" -f $sw.Elapsed.TotalMinutes)

# ---- POST-RUN CONFIG CHECK (the guard the flow was missing) ---------------
# `synth_lattice1.ps1` verifies the generated header BEFORE launching Vivado,
# but the header is a SHARED file: any other job that regenerates it (a
# ModelSim regression, another sweep) lands in the window between that check and
# Vivado's elaboration.  That is exactly how this tag once got a row with
# `lut=1149 ff=406` -- the numbers of `rep d3 n=2`.  So re-read the header now
# and refuse the row if it is not this configuration.
$Lat = Join-Path (Split-Path -Parent $Flow) `
       'Helios_scalable_QEC-main\Helios_scalable_QEC-main\design\generated\snowflake_lattice.svh'
$hdr = (Get-Content $Lat -TotalCount 6) -join ' '
$row = Select-String -Path (Join-Path $Flow 'summary_synth.csv') `
       -Pattern '^lat1_surface_d5_2to1_lattice_lat_xcvu9p,' | Select-Object -Last 1
if ($hdr -notmatch 'surface\s+d=5\b' -or $hdr -notmatch '\b2 slices\b') {
  Say "!! POST-CHECK FAILED: the header on disk is no longer surface d5 n=2:"
  Say ("   " + $hdr)
  Say "!! The row below is UNRELIABLE -- do not quote it.  Re-run with no other"
  Say "!! job running that regenerates design/generated/*.svh."
} else {
  Say "post-check OK: header is still surface d5 n=2"
}
Say "last CSV row for the tag:"
Say ("  " + $(if ($row) { $row.Line } else { '(none)' }))
