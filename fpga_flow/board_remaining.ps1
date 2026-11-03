#=====================================================================
# board_remaining.ps1 -- the rest of the on-board (Z-7020) column (report 6.31)
#
# What is already measured (rows in summary_synth.csv / summary_impl.csv):
#   rotated d3  @6.5 synth  2,598 LUT / 799 FF
#   rotated d3  @10  synth  2,528 / 799
#   rotated d3  @10  impl   2,884 / 836   WNS -8.859  -> 18.859 ns (53.0 MHz)
#   rotated d3  @6.5 impl   2,964 / 829   WNS -11.905 -> 18.405 ns (54.3 MHz)
#   rotated d5  @10  impl  12,683 / 3,063 WNS -16.891 -> 26.891 ns (37.2 MHz)
#   surface d3  @10  impl   4,859 / 1,296 WNS -14.226 -> 24.226 ns (41.3 MHz)
#
# This battery closes the three gaps:
#
#  1. surface d5 on the board device.  Its IMPL run is impossible here: it went
#     into opt_design for over an hour with memory still climbing and was killed.
#     Synth gives the LUT/FF for the A/B at d5 (with the usual synth-vs-impl
#     caveat: on rotated d3 synth was 2,528 where impl was 2,884, -12%).
#
#  2. rotated d7 -- the headline of D16.  Its first attempt died inside RTL
#     ELABORATION at a 13,152 MB peak on this 15.9 GB machine, with no error
#     text (an allocation failure).  `snowflake_pe.sv` includes the generated
#     lattice table, so all 548 slot instances elaborate it.  `-Flatten full` is
#     the one cheap lever the flow already has; if it does not beat the wall,
#     the honest result is "d7 cannot be built on this machine" plus the
#     d3/d5-calibrated extrapolation.
#
#  3. surface d7 for the same top.  Report 6.27's "d7 = 72,982 LUT = 137%" row
#     is the FLAT PE array (`snowflake_pe_array`), not the merged lattice, so
#     the D16 claim needs this row -- but at ~1,000 slot instances it needs
#     roughly twice the memory that already killed rotated d7, so it is expected
#     to fail for the same reason and is attempted only to record that.
#
# This battery does NOT abort on a FAIL row: two of the three runs are expected
# to hit the memory wall, and their FAIL rows are the evidence.
#=====================================================================
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Part = 'xc7z020clg484-1'

$runs = @(
  @{ code = 'surface'; d = 5; s = 2; period = '10.0'; mode = 'synth'; flatten = 'none'; why = 'board A/B at d5 (impl is impossible: opt_design pathology)' },
  @{ code = 'rotated'; d = 7; s = 2; period = '10.0'; mode = 'synth'; flatten = 'full'; why = 'd7: try to beat the elaboration memory wall' },
  @{ code = 'surface'; d = 7; s = 2; period = '10.0'; mode = 'synth'; flatten = 'full'; why = 'unrotated d7 for the same top (expected: same wall)' }
)

foreach ($r in $runs) {
  $Csv = Join-Path $Flow ("summary_{0}.csv" -f $r.mode)
  Write-Host ("==== BOARD REMAINING {0} d={1} n={2} @ {3} ns {4} flatten={5} {6} -- {7} -- {8}" -f `
    $r.code, $r.d, $r.s, $r.period, $r.mode, $r.flatten, $Part, (Get-Date -Format 'HH:mm:ss'), $r.why)
  & (Join-Path $Flow 'synth_lattice1.ps1') -Code $r.code -D $r.d -Slices $r.s `
      -Part $Part -Period $r.period -Mode $r.mode -Flatten $r.flatten
  $row = (Get-Content $Csv | Select-Object -Last 1)
  Write-Host ("---- {0} d={1} {2} flatten={3} -- {4}" -f $r.code, $r.d, $r.mode, $r.flatten, (Get-Date -Format 'HH:mm:ss'))
  Write-Host ("---- csv row: {0}" -f $row)
  if ($row -match (',' + $r.mode + ',FAIL')) { Write-Host "!!!! (expected for the d7 rows) FAIL recorded, continuing" }
}
Write-Host ("==== BOARD REMAINING FINISHED @ {0}" -f (Get-Date -Format 'HH:mm:ss'))
