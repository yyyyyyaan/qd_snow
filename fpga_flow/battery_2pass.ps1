#=====================================================================
# battery_2pass.ps1 -- the evidence battery for the two-pass merging stage.
#
# Runs, in order (they share fpga_flow/msim_lat/, so they must not overlap):
#   1. the single-pass lattice red lines (default path, no defs)
#   2. the two-pass lattice regressions, all six configurations
#   3. the negative control (SNOW_LAT_2PASS_NEG), which must FAIL
#   4. the flat six red lines (no defs) -- they must be untouched, because every
#      PE/array change is behind `ifdef SNOW_LAT`
#
# Results are appended to fpga_flow/logs/battery_2pass.txt and every PASSing
# trace is archived to fpga_flow/evidence/.
#=====================================================================
param([string] $Only = '')
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Ms   = Join-Path $Flow 'msim_lat'
$Log  = Join-Path $Flow 'logs\battery_2pass.txt'
New-Item -ItemType Directory -Force -Path (Join-Path $Flow 'logs'),
    (Join-Path $Flow 'evidence') | Out-Null

function Say($m) {
  $line = "{0}  {1}" -f (Get-Date -Format 'HH:mm:ss'), $m
  Write-Host $line
  Add-Content -Path $Log -Value $line -Encoding UTF8
}

function Archive($tag) {
  $t = Join-Path $Ms "rtl_trace_$tag.txt"
  if (-not (Test-Path $t)) { return }
  Copy-Item $t (Join-Path $Flow "evidence\PASS_$tag`_rtl.txt") -Force
  $g = Join-Path $Ms "golden_$tag.txt"
  if (Test-Path $g) { Copy-Item $g (Join-Path $Flow "evidence\golden_$tag.txt") -Force }
}

$lat = Join-Path $Flow 'msim_regress_lat.ps1'
$flat = Join-Path $Flow 'msim_regress.ps1'

# ---- 1. single-pass lattice default path -------------------------------------
foreach ($c in @(@('rep', 3), @('surface', 3), @('surface', 5))) {
  foreach ($p in @('std', 'seam')) {
    if ($Only -and $Only -ne 'default') { continue }
    $a = @('-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', $lat,
           '-Code', $c[0], '-D', $c[1], '-Slices', 2, '-Pattern', $p)
    $tag = "lat_$($c[0])_d$($c[1])_s2" + $(if ($p -ne 'std') { "_$p" } else { '' })
    $out = & powershell @a 2>&1 | Select-String 'REGRESS_VERDICT|LAT stats'
    Say ("DEFAULT  {0,-28} {1}" -f $tag, ($out -join ' | '))
    if ($out -match 'PASS') { Archive $tag }
  }
}

# ---- 2. two-pass lattice ------------------------------------------------------
foreach ($c in @(@('rep', 3), @('surface', 3), @('surface', 5))) {
  foreach ($p in @('std', 'seam')) {
    if ($Only -and $Only -ne '2pass') { continue }
    $a = @('-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', $lat,
           '-Code', $c[0], '-D', $c[1], '-Slices', 2, '-Pattern', $p,
           '-ExtraDefs', 'SNOW_LAT_2PASS')
    $tag = "lat_$($c[0])_d$($c[1])_s2" + $(if ($p -ne 'std') { "_$p" } else { '' }) + "_snow_lat_2pass"
    $out = & powershell @a 2>&1 | Select-String 'REGRESS_VERDICT|LAT stats'
    Say ("2PASS    {0,-28} {1}" -f $tag, ($out -join ' | '))
    if ($out -match 'PASS') { Archive $tag }
  }
}

# ---- 3. negative control (must FAIL) -----------------------------------------
if (-not $Only -or $Only -eq 'neg') {
  $a = @('-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', $lat,
         '-Code', 'rep', '-D', 3, '-Slices', 2,
         '-ExtraDefs', 'SNOW_LAT_2PASS,SNOW_LAT_2PASS_NEG')
  $out = & powershell @a 2>&1 | Select-String 'REGRESS_VERDICT'
  Say ("NEG      rep_d3_s2                    {0}" -f ($out -join ' | '))
}

# ---- 4. flat red lines (must be untouched) -----------------------------------
foreach ($c in @(@('rep', 3), @('surface', 3), @('surface', 5))) {
  foreach ($p in @('std', 'seam')) {
    if ($Only -and $Only -ne 'flat') { continue }
    $a = @('-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', $flat,
           '-Code', $c[0], '-D', $c[1], '-Pattern', $p)
    $tag = "flat_$($c[0])_d$($c[1])" + $(if ($p -ne 'std') { "_$p" } else { '' })
    $out = & powershell @a 2>&1 | Select-String 'REGRESS_VERDICT'
    Say ("FLAT     {0,-28} {1}" -f $tag, ($out -join ' | '))
  }
}

Say "battery done"
