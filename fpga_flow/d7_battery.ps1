#=====================================================================
# d7_battery.ps1 -- P3 prerequisite (a): the configs the memory wall used to
# forbid (report 6.33)
#
# `snowflake_pe.sv` no longer includes the generated lattice table: SNOW_PE_STW
# (the only symbol it ever needed) now comes from the graph header, where it is a
# pure function of SNOW_PTR_W + SNOW_CID_W.  Before the hoist, RTL elaboration
# cost ~25-38 MB PER SLOT INSTANCE, so:
#     rotated d7 (548 instances) peaked at 13,152 MB -> RTL Elaboration failed
#     surface d7 (732 instances) peaked at 18,533 MB -> RTL Elaboration failed
# on this 15.9 GB machine.  This battery re-runs exactly those configurations.
#
# It also re-runs a config whose memory is already known (rotated d5, 5,454 MB
# before) so the improvement is a MEASUREMENT, not a claim.  Traces were verified
# unchanged first: rep d3 / rotated d3 phen / rotated d3 CL all PASS with
# byte-identical traces after the hoist.
#
# Serial by construction: every run rewrites design/generated/snowflake_lattice.svh
# and snowflake_graph.svh, and two Vivado processes would fight over them.
#=====================================================================
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Z7   = 'xc7z020clg484-1'
$Rev  = 'v2'

$runs = @(
  @{ code = 'rotated'; d = 5; s = 2; period = '10.0'; mode = 'synth'; why = 'CONTROL: 5,454 MB before the hoist' },
  @{ code = 'rotated'; d = 7; s = 2; period = '10.0'; mode = 'synth'; why = 'the D16 acceptance row: was 13,152 MB -> FAIL' },
  @{ code = 'surface'; d = 7; s = 2; period = '10.0'; mode = 'synth'; why = 'unrotated d7 for the same top: was 18,533 MB -> FAIL' },
  @{ code = 'rotated'; d = 7; s = 2; period = '10.0'; mode = 'impl';  why = 'real d7 area + timing on the board device (if memory allows)' }
)

foreach ($r in $runs) {
  $Csv = Join-Path $Flow ("summary_{0}.csv" -f $r.mode)
  Write-Host ("==== D7 {0} d={1} n={2} @ {3} ns {4} {5} -- {6} -- {7}" -f `
    $r.code, $r.d, $r.s, $r.period, $r.mode, $Z7, (Get-Date -Format 'HH:mm:ss'), $r.why)
  & (Join-Path $Flow 'synth_lattice1.ps1') -Code $r.code -D $r.d -Slices $r.s `
      -Part $Z7 -Period $r.period -Mode $r.mode -Rev $Rev
  $row = (Get-Content $Csv | Select-Object -Last 1)
  Write-Host ("---- {0} d={1} {2} -- {3}" -f $r.code, $r.d, $r.mode, (Get-Date -Format 'HH:mm:ss'))
  Write-Host ("---- csv row: {0}" -f $row)
  if ($row -match (',' + $r.mode + ',FAIL')) { Write-Host "!!!! FAIL recorded, continuing (the next rows are still informative)" }
}
Write-Host ("==== D7 BATTERY FINISHED @ {0}" -f (Get-Date -Format 'HH:mm:ss'))
