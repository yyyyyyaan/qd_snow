#=====================================================================
# p2_battery.ps1 -- P2: the circuit-level column on rotated, plus the
# re-measurement that the `SNOW_PTR_DOWN_MASK` RTL fix forces (report 6.32)
#
# WHY THERE IS A RE-MEASUREMENT AT ALL (D7): the CL regression found a real RTL
# bug -- `find_broken_pointers()` compared the pointer against the single
# constant SNOW_PTR_D instead of testing "'D' in pointer", which silently failed
# to unroot bottom-sheet nodes whose pointer is SD/WD/NWD (unrotated) or
# E2D/SED/SWD (rotated).  The fix changes one line in `snowflake_pe.sv`, and
# `snowflake_pe.sv` is instantiated by the lattice array, so EVERY lattice area
# row is now "measured on the previous RTL".  The phen traces are byte-identical
# (proved: rotated d3 phen trace hash unchanged), so the numbers are expected to
# move by at most a LUT or two -- but D7 says numbers are cited only when bound
# to a regression-passing RTL, so they get measured again under `-Rev v2` (the
# old rows stay in the CSVs: `sweep.ps1` skips a tag that already has a row).
#
# Order: the cheap VU9P synth rows first (they answer "does the mask cost
# anything at all?"), then the board device, then the two long d5 rows.
#
# Serial by construction: every run rewrites design/generated/snowflake_lattice.svh
# and snowflake_graph.svh, and two Vivado processes would fight over them.
#=====================================================================
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$VU9P = 'xcvu9p-flga2104-2L-e'
$Z7   = 'xc7z020clg484-1'
$Rev  = 'v2'

$runs = @(
  @{ code = 'rotated'; d = 3; s = 2; part = $VU9P; period = '5.0';  mode = 'synth'; noise = 'phenomenological'; why = 'mask cost check vs 2,667 (pre-fix)' },
  @{ code = 'surface'; d = 3; s = 2; part = $VU9P; period = '5.0';  mode = 'synth'; noise = 'phenomenological'; why = 'mask cost check vs 4,343 (pre-fix)' },
  @{ code = 'rotated'; d = 3; s = 2; part = $VU9P; period = '5.0';  mode = 'synth'; noise = 'circuit-level';  why = 'CL d3 on the fixed RTL (pre-fix row: 3,963)' },
  @{ code = 'surface'; d = 3; s = 2; part = $VU9P; period = '5.0';  mode = 'synth'; noise = 'circuit-level';  why = 'CL d3 unrotated control (pre-fix row: 5,622)' },
  @{ code = 'rotated'; d = 3; s = 2; part = $Z7;   period = '10.0'; mode = 'impl';  noise = 'phenomenological'; why = 're-bind the board row (pre-fix: 2,884 / 18.859 ns)' },
  @{ code = 'rotated'; d = 3; s = 2; part = $Z7;   period = '10.0'; mode = 'impl';  noise = 'circuit-level';  why = 'NEW: rotated CL on the board device' },
  @{ code = 'surface'; d = 3; s = 2; part = $Z7;   period = '10.0'; mode = 'impl';  noise = 'phenomenological'; why = 're-bind the A/B baseline (pre-fix: 4,859)' },
  @{ code = 'rotated'; d = 5; s = 2; part = $Z7;   period = '10.0'; mode = 'impl';  noise = 'circuit-level';  why = 'P2 ACCEPTANCE LINE: rotated CL d5 on the board device (ESLOT 207, 315 instances -- may hit the cross-boundary wall)' },
  @{ code = 'rotated'; d = 5; s = 2; part = $Z7;   period = '10.0'; mode = 'impl';  noise = 'phenomenological'; why = 're-bind the d5 headline (pre-fix: 12,683)' }
)

foreach ($r in $runs) {
  $Csv = Join-Path $Flow ("summary_{0}.csv" -f $r.mode)
  Write-Host ("==== P2 {0} d={1} n={2} {3} @ {4} ns {5} {6} -- {7} -- {8}" -f `
    $r.code, $r.d, $r.s, $r.noise, $r.period, $r.mode, $r.part, (Get-Date -Format 'HH:mm:ss'), $r.why)
  & (Join-Path $Flow 'synth_lattice1.ps1') -Code $r.code -D $r.d -Slices $r.s `
      -Part $r.part -Period $r.period -Mode $r.mode -Noise $r.noise -Rev $Rev
  $row = (Get-Content $Csv | Select-Object -Last 1)
  Write-Host ("---- {0} d={1} -- {2}" -f $r.code, $r.d, (Get-Date -Format 'HH:mm:ss'))
  Write-Host ("---- csv row: {0}" -f $row)
  if ($row -notmatch (',' + $r.mode + ',') -or $row -match (',' + $r.mode + ',FAIL')) {
    Write-Host "!!!! P2 BATTERY: the run above did not produce a FLOW_RESULT"
    Write-Host "!!!! tag=$($row.Split(',')[0])"
    exit 1
  }
}
Write-Host ("==== P2 BATTERY FINISHED @ {0}" -f (Get-Date -Format 'HH:mm:ss'))
