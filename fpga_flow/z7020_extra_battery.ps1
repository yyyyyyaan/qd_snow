#=====================================================================
# z7020_extra_battery.ps1 -- P4 step 5d follow-ups (report 6.31)
#
# Three questions the first on-board column raised, each answered by one run:
#
#  (a) `lat1_rotated_d3 ... xc7z020clg484_p10p0` came out at 18.859 ns with
#      `route 14.667ns (82.2%)` -- 667 ps of route per logic level against the
#      VU9P's 113 ps/level on the older lattice top.  That is far more than the
#      ~1.5-2x a 28nm -1 part should lose to a 20nm -2L part, so the suspicion
#      is PLACEMENT, not silicon: a 2.9K-LUT design in a 53K-LUT device is
#      spread out by the placer unless the timing constraint forces it to
#      cluster.  (d) re-runs the identical config at 5.0 ns; if the achieved
#      period improves a lot, the 10 ns number was constraint-limited and the
#      board column must be built with an aggressive constraint (or a
#      floorplan), not quoted from the relaxed run.
#
#  (b) The "d7 does not fit the board" row in 6.27 (72,982 LUT / 137%) is the
#      FLAT PE array (`snowflake_pe_array`); the merged lattice
#      (`snowflake_pe_array_lat1`) has never been measured at d7 on any device.
#      The comparison that decides D16 -- "d7 only fits with the rotated code"
#      -- needs that row, so it is measured here (synth: the design is over
#      capacity, impl could not place).
#
#  (a2/a3) The VU9P column is the only other device measured, and every lat1 row
#      in it is SYNTH-mode, whose timing is an estimate (on the older lattice
#      top synth said 10.07 ns where route said 7.30 ns).  These two rows put
#      the same configs on VU9P in impl mode at the same 10.0 ns constraint, so
#      the device comparison is like for like.
#
# Serial by construction: every run rewrites design/generated/snowflake_lattice.svh
# and snowflake_graph.svh, and two Vivado processes would fight over them.
#=====================================================================
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Z7   = 'xc7z020clg484-1'
$VU9P = 'xcvu9p-flga2104-2L-e'

$runs = @(
  @{ code = 'rotated'; d = 3; s = 2; period = '5.0';  mode = 'impl';  part = $Z7;   why = '(d) pacing test: same config, aggressive constraint' },
  @{ code = 'surface'; d = 7; s = 2; period = '10.0'; mode = 'synth'; part = $Z7;   why = '(b) the REAL unrotated d7 row for the same top (does it fit?)' },
  @{ code = 'rotated'; d = 3; s = 2; period = '10.0'; mode = 'impl';  part = $VU9P; why = '(a2) same config, same constraint, other device' },
  @{ code = 'surface'; d = 3; s = 2; period = '10.0'; mode = 'impl';  part = $VU9P; why = '(a3) unrotated A/B in impl mode on VU9P' }
)

foreach ($r in $runs) {
  $Csv = Join-Path $Flow ("summary_{0}.csv" -f $r.mode)
  Write-Host ("==== Z7020 EXTRA {0} d={1} n={2} @ {3} ns {4} {5} -- {6} -- {7}" -f `
    $r.code, $r.d, $r.s, $r.period, $r.mode, $r.part, (Get-Date -Format 'HH:mm:ss'), $r.why)
  & (Join-Path $Flow 'synth_lattice1.ps1') -Code $r.code -D $r.d -Slices $r.s `
      -Part $r.part -Period $r.period -Mode $r.mode
  $row = (Get-Content $Csv | Select-Object -Last 1)
  Write-Host ("---- {0} d={1} @ {2} ns {3} -- {4}" -f $r.code, $r.d, $r.period, $r.mode, (Get-Date -Format 'HH:mm:ss'))
  Write-Host ("---- csv row: {0}" -f $row)
  if ($row -notmatch (',' + $r.mode + ',') -or $row -match (',' + $r.mode + ',FAIL')) {
    Write-Host "!!!! EXTRA BATTERY: the run above did not produce a FLOW_RESULT"
    Write-Host "!!!! tag=$($row.Split(',')[0])"
    exit 1
  }
}
Write-Host ("==== Z7020 EXTRA BATTERY FINISHED @ {0}" -f (Get-Date -Format 'HH:mm:ss'))
