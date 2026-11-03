#=====================================================================
# busyreg_battery.ps1 -- P3(b): does registering the quiescence path buy back
# the board frequency? (report 6.34)
#
# Why this lever: the measured Z-7020 critical path is
#     phase -> bank read -> st_out mux -> o_busy_c -> |qnow -> CE
# (20 levels, 82% routing), i.e. the COMBINATIONAL quiescence term.  §6.33 showed
# that confining the whole design to 1/6 of the device changes the period by
# 1.6%, so the cost is that path, not placement.
#
# `SNOW_BUSYREG` (ported from `snowflake_pe_array.sv`) makes the test read a row
# of registers captured at each merging-step boundary, so `any_step_busy` becomes
# FF -> OR tree -> CE with nothing in front.  Cost: one extra (provably no-op)
# merging step per pass, hidden from the trace by the dbg_valid rule.
#
# Functional evidence BEFORE any number is quoted: all 7 line-exact regressions
# pass with `-ExtraDefs SNOW_BUSYREG` (rep d3, surface d3/d5, rotated d3/d5,
# rotated d3/d5 circuit-level, surface d3 circuit-level).
#
# Serial by construction: every run rewrites design/generated/snowflake_lattice.svh
# and snowflake_graph.svh, and two Vivado processes would fight over them.
#=====================================================================
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Z7   = 'xc7z020clg484-1'
$Rev  = 'v2busyreg'

$runs = @(
  @{ code = 'rotated'; d = 3; s = 2; noise = 'phenomenological'; period = '10.0'; why = 'd3 phen  (was 18.291 ns / 54.7 MHz)' },
  @{ code = 'rotated'; d = 3; s = 2; noise = 'circuit-level';   period = '10.0'; why = 'd3 CL    (was 27.838 ns / 35.9 MHz)' },
  @{ code = 'rotated'; d = 5; s = 2; noise = 'phenomenological'; period = '10.0'; why = 'd5 phen  (was 27.088 ns / 36.9 MHz)' },
  @{ code = 'rotated'; d = 5; s = 2; noise = 'circuit-level';   period = '10.0'; why = 'd5 CL    (was 46.927 ns / 21.3 MHz -- the marginal one)' },
  @{ code = 'rotated'; d = 3; s = 2; noise = 'phenomenological'; period = '6.5';  why = 'does D1 6.5 ns close now?' }
)

foreach ($r in $runs) {
  $Csv = Join-Path $Flow 'summary_impl.csv'
  Write-Host ("==== BUSYREG {0} d={1} {2} @ {3} ns -- {4} -- {5}" -f `
    $r.code, $r.d, $r.noise, $r.period, (Get-Date -Format 'HH:mm:ss'), $r.why)
  & (Join-Path $Flow 'synth_lattice1.ps1') -Code $r.code -D $r.d -Slices $r.s `
      -Part $Z7 -Period $r.period -Mode impl -Noise $r.noise -Rev $Rev `
      -ExtraDefs 'SNOW_BUSYREG'
  $row = (Get-Content $Csv | Select-Object -Last 1)
  Write-Host ("---- {0} d={1} -- {2}" -f $r.code, $r.d, (Get-Date -Format 'HH:mm:ss'))
  Write-Host ("---- csv row: {0}" -f $row)
  if ($row -match ',impl,FAIL') { Write-Host "!!!! FAIL recorded, continuing" }
}
Write-Host ("==== BUSYREG BATTERY FINISHED @ {0}" -f (Get-Date -Format 'HH:mm:ss'))
