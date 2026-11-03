#=====================================================================
# pad_fold_battery.ps1 -- P0' : THE FOLDING EXPERIMENT (report 6.28)
#
# Question: a shared-lattice array instantiates one datapath per SLOT, and a
# rotated surface code's check lattice fills only HALF of its own bounding box
# (fpga_flow/check_lattice_slots_rotated.py: 220 real of 440 slots at d=21,
# fpga_flow/logs/rotated_slots.txt).  Does a slot that is never valid in any
# context cost area after synthesis, or is it folded away?
#
# Method: `make_lattice_sim.py --pad K` multiplies the SPATIAL box by K and sets
# `*_VALID = 0` in every context for the added slots.  Nothing else changes: the
# RTL is untouched, the verified configuration is untouched (pad = 1 is
# byte-identical -- proven against three cached headers), and each K lands in its
# own tag/log/report/CSV row (`lat1_pad<K>_...`).
#
# Verdict rule (fixed BEFORE the runs, NEXT_SESSION_PROMPT.md 3):
#   LUT/FF ~ unchanged        -> dead slots fold -> rotated's ~1.9x is real
#   LUT/FF ~ K x              -> dead slots cost full price -> single-basis
#                                rotated buys nothing
#
# Serial by construction: every run rewrites design/generated/snowflake_lattice.svh
# and snowflake_graph.svh, and two Vivado processes would fight over them.
#=====================================================================
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Csv  = Join-Path $Flow 'summary_synth.csv'

$runs = @(
  @{ code = 'rep';     d = 3; s = 2; pad = 1; why = 'BASELINE (verified config, expect 1149 LUT / 406 FF)' },
  @{ code = 'rep';     d = 3; s = 2; pad = 2; why = 'folding: 16 PE + 20 edge slots, 62.5% of all cells never valid' },
  @{ code = 'rep';     d = 3; s = 2; pad = 4; why = 'slope: 32 PE + 40 edge slots, 81.2% never valid' },
  @{ code = 'surface'; d = 3; s = 2; pad = 1; why = 'BASELINE of the real 2-D config' },
  @{ code = 'surface'; d = 3; s = 2; pad = 2; why = 'folding on the 2-D config (24 -> 48 PE slots)' }
)

foreach ($r in $runs) {
  Write-Host ("==== PAD BATTERY {0} d={1} n={2} pad={3} @ {4} -- {5}" -f `
    $r.code, $r.d, $r.s, $r.pad, (Get-Date -Format 'HH:mm:ss'), $r.why)
  & (Join-Path $Flow 'synth_lattice1.ps1') -Code $r.code -D $r.d -Slices $r.s `
      -Pad $r.pad -Mode synth
  $row = (Get-Content $Csv | Select-Object -Last 1)
  Write-Host ("---- {0} d={1} pad={2} @ {3}" -f $r.code, $r.d, $r.pad, (Get-Date -Format 'HH:mm:ss'))
  Write-Host ("---- csv row: {0}" -f $row)
  if ($row -notmatch ',synth,' -or $row -match ',synth,FAIL') {
    Write-Host "!!!! PAD BATTERY ABORTED: the run above did not produce a FLOW_RESULT"
    Write-Host "!!!! tag=$($row.Split(',')[0])"
    exit 1
  }
}
Write-Host ("==== PAD BATTERY FINISHED @ {0}" -f (Get-Date -Format 'HH:mm:ss'))
