#=====================================================================
# dirs_ablation.ps1 -- fairness ablation for the rotated area claim (report 6.31)
#
# The question: `surface`(unrotated) x phenomenological needs only 6 of the 12
# direction names its code defines, but `generate_snowflake.py --dirs all`
# (the default, and what every row in the report used) still emits all 12, so
# SNOW_NDIR = 12 and the PE carries a 12-way direction search for a 6-direction
# graph.  `rotated` defines exactly 6 names and uses all of them.  So part of the
# measured 1.68x could be "we gave the unrotated column 6 ports it never uses"
# rather than anything about the rotated LATTICE.
#
# `-Dirs used` emits only the names an edge actually uses, i.e. the same 6-port
# PE, same lattice, same noise model, same top, same device -- the only variable
# is the direction set.  (Report 6.15 already ran `--dirs used` on the FLAT PE
# array and got +3.1% area, i.e. it did NOT help there; the merged lattice has
# never been tested.  If it does not help here either, the rotated win is slot
# geometry, not port count.)
#
# VU9P @ 5.0 ns synth, because that is exactly how the four-cell table in 6.30
# was measured (surface d3 = 4,343 LUT / 1,241 FF).
#
# Serial by construction: every run rewrites design/generated/snowflake_lattice.svh
# and snowflake_graph.svh, and two Vivado processes would fight over them.
#=====================================================================
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$VU9P = 'xcvu9p-flga2104-2L-e'

$runs = @(
  @{ code = 'surface'; d = 3; s = 2; period = '5.0'; dirs = 'used'; why = 'ablation vs the 4,343 baseline' },
  @{ code = 'surface'; d = 5; s = 2; period = '5.0'; dirs = 'used'; why = 'ablation vs the 20,524 baseline' }
)

foreach ($r in $runs) {
  $Csv = Join-Path $Flow 'summary_synth.csv'
  Write-Host ("==== DIRS ABLATION {0} d={1} n={2} dirs={3} @ {4} ns {5} -- {6} -- {7}" -f `
    $r.code, $r.d, $r.s, $r.dirs, $r.period, $VU9P, (Get-Date -Format 'HH:mm:ss'), $r.why)
  & (Join-Path $Flow 'synth_lattice1.ps1') -Code $r.code -D $r.d -Slices $r.s `
      -Dirs $r.dirs -Part $VU9P -Period $r.period -Mode synth
  $row = (Get-Content $Csv | Select-Object -Last 1)
  Write-Host ("---- csv row: {0}" -f $row)
  if ($row -notmatch ',synth,' -or $row -match ',synth,FAIL') {
    Write-Host "!!!! DIRS ABLATION: the run above did not produce a FLOW_RESULT"
    exit 1
  }
}
Write-Host ("==== DIRS ABLATION FINISHED @ {0}" -f (Get-Date -Format 'HH:mm:ss'))
