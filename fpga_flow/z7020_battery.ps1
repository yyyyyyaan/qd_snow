#=====================================================================
# z7020_battery.ps1 -- P4 step 5d : the ON-BOARD device column (report 6.31)
#
# Until now every area number in the report was measured on
# `xcvu9p-flga2104-2L-e` at 5.0 ns and merely COMPARED against the Z-7020's
# 53,200 LUT (report 6.27).  The board is an XC7Z020-CLG484 (D12), so the
# capacity claims for the rotated column -- "d7 fits: ~35-37K / 53.2K" -- were
# extrapolations from a different device family (UltraScale vs 7-series).
# This battery replaces them with measurements on `xc7z020clg484-1`.
#
# Why `-1` (and why it only makes the result pessimistic): the speed/temp grade
# is NOT on the top mark any more (AMD XCN16014), so 6.27 pins the slowest
# commercial bin until the board vendor confirms the ordering code.
#
# Why the board column is IMPL and not synth: the first two on-board runs were
# synth-mode and reported `wns=-15.487 / min_period=21.987 ns` -- 3.4x the
# VU9P's 6.48 ns for the SAME logic depth (24 levels).  The timing report says
# why: `logic 3.665ns (17.5%) route 17.314ns (82.5%)`.  That route term is
# Vivado's POST-SYNTHESIS route ESTIMATE, which for 7-series is wildly
# pessimistic before placement; the logic delay per level (153 ps) is exactly
# what one expects.  So: two synth rows are kept (they are the only ones
# directly comparable with the whole VU9P table, which is also synth-mode) and
# flag that its timing column must not be read; everything else is placed and
# routed (`-Mode impl`, real WNS).
#
# Serial by construction: every run rewrites design/generated/snowflake_lattice.svh
# and snowflake_graph.svh, and two Vivado processes would fight over them.
#=====================================================================
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Part = 'xc7z020clg484-1'

$runs = @(
  # 1-4 already done (rows in summary_synth.csv / summary_impl.csv):
  #   rotated d3 @6.5 synth, rotated d3 @10 synth, rotated d3 @10 impl,
  #   rotated d5 @10 impl, surface d3 @10 impl
  #
  # DROPPED: `surface d5 @10 impl`.  It sat in opt_design ("Cross Boundary and
  # Area Optimization") for over an hour with memory still climbing (6.4 GB) --
  # the 285-edge / 12-direction / 183-edge-slot unrotated lattice is not just
  # bigger than the rotated one (111 edge slots, 6 directions, whole impl in
  # 21 min), it makes the optimiser blow up.  Its scientific content is
  # redundant after surface d3, so the board VERSION of it is measured in synth
  # mode instead (comparable with the whole VU9P table, which is synth too).
  @{ code = 'rotated'; d = 3; s = 2; period = '6.5';  mode = 'impl';  why = 'pacing: does the placer do better when the constraint is aggressive?' },
  @{ code = 'rotated'; d = 7; s = 2; period = '10.0'; mode = 'impl';  why = 'A column d7 -- the whole point of D16 (long run)' },
  @{ code = 'surface'; d = 5; s = 2; period = '10.0'; mode = 'synth'; why = 'A/B baseline d5 on the board device' },
  @{ code = 'surface'; d = 7; s = 2; period = '10.0'; mode = 'synth'; why = 'the REAL unrotated d7 row for the same top (does it fit?)' }
)

foreach ($r in $runs) {
  $Csv = Join-Path $Flow ("summary_{0}.csv" -f $r.mode)
  Write-Host ("==== Z7020 BATTERY {0} d={1} n={2} @ {3} ns {4} -- {5} -- {6}" -f `
    $r.code, $r.d, $r.s, $r.period, $r.mode, $Part, (Get-Date -Format 'HH:mm:ss'))
  & (Join-Path $Flow 'synth_lattice1.ps1') -Code $r.code -D $r.d -Slices $r.s `
      -Part $Part -Period $r.period -Mode $r.mode
  $row = (Get-Content $Csv | Select-Object -Last 1)
  Write-Host ("---- {0} d={1} @ {2} ns {3} -- {4}" -f $r.code, $r.d, $r.period, $r.mode, (Get-Date -Format 'HH:mm:ss'))
  Write-Host ("---- csv row: {0}" -f $row)
  if ($row -notmatch (',' + $r.mode + ',') -or $row -match (',' + $r.mode + ',FAIL')) {
    Write-Host "!!!! Z7020 BATTERY: the run above did not produce a FLOW_RESULT"
    Write-Host "!!!! tag=$($row.Split(',')[0])"
    exit 1
  }
}
Write-Host ("==== Z7020 BATTERY FINISHED @ {0}" -f (Get-Date -Format 'HH:mm:ss'))
