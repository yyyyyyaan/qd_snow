#=====================================================================
# battery_lat1_n.ps1 -- the n points for the MERGED array.
#
# Usable n is fixed by the layer count and its divisors (nl=3 -> {2,3},
# nl=5 -> {2,3,5}).  Each point is a full line-exact regression against the
# same golden as the copy version, so a PASS here plus a PASS there means the
# merged array is line-identical for that n too.
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\battery_lat1_n.ps1
#=====================================================================
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Ms   = Join-Path $Flow 'msim_lat1'
$Log  = Join-Path $Flow 'logs\battery_lat1_n.txt'
New-Item -ItemType Directory -Force -Path (Join-Path $Flow 'logs'),
    (Join-Path $Flow 'evidence') | Out-Null

function Say($m) {
  $line = "{0}  {1}" -f (Get-Date -Format 'HH:mm:ss'), $m
  Write-Host $line
  Add-Content -Path $Log -Value $line -Encoding UTF8
}

$lat1 = Join-Path $Flow 'msim_regress_lat1.ps1'
$runs = @(
  @('rep', 3, 3),
  @('surface', 3, 3),
  @('surface', 5, 3),
  @('surface', 5, 5)
)
foreach ($r in $runs) {
  $a = @('-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', $lat1,
         '-Code', $r[0], '-D', $r[1], '-Slices', $r[2])
  $tag = "lat1_$($r[0])_d$($r[1])_s$($r[2])"
  $out = & powershell @a 2>&1 | Select-String 'REGRESS_VERDICT|LAT stats|FAILED|no trace'
  Say ("N={0,-3} {1,-26} {2}" -f $r[2], $tag, ($out -join ' | '))
  $t = Join-Path $Ms "rtl_trace_$tag.txt"
  if (($out -match 'PASS') -and (Test-Path $t)) {
    Copy-Item $t (Join-Path $Flow "evidence\PASS_$tag`_rtl.txt") -Force
    Copy-Item (Join-Path $Ms "golden_$tag.txt") (Join-Path $Flow "evidence\golden_$tag.txt") -Force
  }
}
Say "lat1 n-scan battery done"
