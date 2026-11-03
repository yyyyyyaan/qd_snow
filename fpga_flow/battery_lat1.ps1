#=====================================================================
# battery_lat1.ps1 -- evidence battery for the MERGED array
# (snowflake_pe_array_lat1.sv: one datapath per slot, two-pass merging).
#
# It runs the SAME six configurations as battery_2pass.ps1, against the SAME
# golden traces, so the two arrays are directly comparable line for line.
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\battery_lat1.ps1
#=====================================================================
param([string] $Only = '')
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Ms   = Join-Path $Flow 'msim_lat1'
$Log  = Join-Path $Flow 'logs\battery_lat1.txt'
New-Item -ItemType Directory -Force -Path (Join-Path $Flow 'logs'),
    (Join-Path $Flow 'evidence') | Out-Null

function Say($m) {
  $line = "{0}  {1}" -f (Get-Date -Format 'HH:mm:ss'), $m
  Write-Host $line
  Add-Content -Path $Log -Value $line -Encoding UTF8
}

$lat1 = Join-Path $Flow 'msim_regress_lat1.ps1'
foreach ($c in @(@('rep', 3), @('surface', 3), @('surface', 5))) {
  foreach ($p in @('std', 'seam')) {
    $a = @('-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', $lat1,
           '-Code', $c[0], '-D', $c[1], '-Slices', 2, '-Pattern', $p)
    $tag = "lat1_$($c[0])_d$($c[1])_s2" + $(if ($p -ne 'std') { "_$p" } else { '' })
    $out = & powershell @a 2>&1 | Select-String 'REGRESS_VERDICT|LAT stats|compile FAILED|no trace'
    Say ("LAT1     {0,-30} {1}" -f $tag, ($out -join ' | '))
    $t = Join-Path $Ms "rtl_trace_$tag.txt"
    if (($out -match 'PASS') -and (Test-Path $t)) {
      Copy-Item $t (Join-Path $Flow "evidence\PASS_$tag`_rtl.txt") -Force
      Copy-Item (Join-Path $Ms "golden_$tag.txt") (Join-Path $Flow "evidence\golden_$tag.txt") -Force
    }
  }
}
Say "lat1 battery done"
