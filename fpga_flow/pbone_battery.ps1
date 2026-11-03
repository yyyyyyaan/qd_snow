#=====================================================================
# pbone_battery.ps1 -- P3: is the board's frequency silicon, or just a small
# design spread over a big die? (report 6.33)
#
# Measured on Z-7020 (impl @10 ns, v2 RTL):
#     rotated d3 phen  18.291 ns  23 levels   route 82%   (54.7 MHz)
#     rotated d5 phen  27.088 ns  33 levels              (36.9 MHz)
#     rotated d3 CL    27.838 ns  34 levels              (35.9 MHz)
# The timing report's per-hop route delays (0.4-1.0 ns between ADJACENT slices)
# with all logic sitting in a few dozen slices says the design is fine but the
# placer has no reason to keep it compact at 5% utilization.
#
# `FLOW_PBLOCK_ONE=<n>` (new, run_ooc.tcl) confines every PE/edge cell to ONE
# compact n-clock-region block.  If the period collapses, the board number was a
# floorplan problem and the real build must place the decoder explicitly; if it
# barely moves, the number is silicon.
#
# `-ExtraDefs SNOW_PBONE<n>` is the marker define `sweep.ps1` consumes; defines are not
# in sweep's tag, so each run gets a `-Rev` token too.
#=====================================================================
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Z7   = 'xc7z020clg484-1'

$runs = @(
  @{ code = 'rotated'; d = 3; s = 2; noise = 'phenomenological'; period = '10.0'; pbone = 1; why = 'd3 phen, smallest confinement (was 18.291 ns)' },
  @{ code = 'rotated'; d = 3; s = 2; noise = 'circuit-level';   period = '10.0'; pbone = 1; why = 'd3 CL, smallest confinement (was 27.838 ns)' },
  @{ code = 'rotated'; d = 5; s = 2; noise = 'phenomenological'; period = '10.0'; pbone = 2; why = 'd5 phen, 2 regions (was 27.088 ns)' },
  @{ code = 'rotated'; d = 3; s = 2; noise = 'phenomenological'; period = '6.5';  pbone = 1; why = 'does D1 6.5 ns close once confined?' }
)

foreach ($r in $runs) {
  $Csv = Join-Path $Flow 'summary_impl.csv'
  $rev = "v2pbone{0}" -f $r.pbone
  Write-Host ("==== PBONE {0} d={1} {2} @ {3} ns pbone={4} -- {5} -- {6}" -f `
    $r.code, $r.d, $r.noise, $r.period, $r.pbone, (Get-Date -Format 'HH:mm:ss'), $r.why)
  & (Join-Path $Flow 'synth_lattice1.ps1') -Code $r.code -D $r.d -Slices $r.s `
      -Part $Z7 -Period $r.period -Mode impl -Noise $r.noise -Rev $rev `
      -ExtraDefs ("SNOW_PBONE{0}" -f $r.pbone)
  $row = (Get-Content $Csv | Select-Object -Last 1)
  Write-Host ("---- {0} d={1} pbone={2} -- {3}" -f $r.code, $r.d, $r.pbone, (Get-Date -Format 'HH:mm:ss'))
  Write-Host ("---- csv row: {0}" -f $row)
  if ($row -match ',impl,FAIL') { Write-Host "!!!! FAIL recorded, continuing" }
}
Write-Host ("==== PBONE BATTERY FINISHED @ {0}" -f (Get-Date -Format 'HH:mm:ss'))
