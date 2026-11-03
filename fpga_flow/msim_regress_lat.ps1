#=====================================================================
# msim_regress_lat.ps1 -- line-exact regression for the SHARED-LATTICE array
# (snowflake_pe_array_lat.sv + tb_snowflake_pe_array_lat.sv).
#
# Same idea as msim_regress.ps1: ModelSim (independent of Vivado), a private copy
# of the tree in fpga_flow/msim_lat/, the same golden trace generator and the same
# line-by-line comparator.
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\msim_regress_lat.ps1 `
#       -Code surface -D 5 -Slices 2 [-Pattern seam]
#=====================================================================
param(
  [string] $Code = 'surface',
  [int]    $D    = 5,
  [int]    $Slices = 2,
  [string] $Dirs = 'all',
  [string] $Pattern = 'std',   # 'seam' = directed cross-seam stimulus (SNOW_SEAM_PAT)
  [string] $ExtraDefs = ''
)
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Ws   = Split-Path -Parent $Flow
$Repo = Join-Path $Ws 'Helios_scalable_QEC-main\Helios_scalable_QEC-main'
$Ms   = Join-Path $Flow 'msim_lat'
$Bin  = 'D:\quartus\modelsim\modelsim_ase\win32aloem'

New-Item -ItemType Directory -Force -Path (Join-Path $Ms 'design\snowflake'),
    (Join-Path $Ms 'design\generated'), (Join-Path $Ms 'test_benches\snowflake') | Out-Null

# ---- fresh sources ----------------------------------------------------------
foreach ($f in 'snowflake_edge.sv', 'snowflake_pe.sv', 'snowflake_pe_array.sv',
               'snowflake_pe_array_lat.sv') {
  Copy-Item (Join-Path $Repo "design\snowflake\$f") (Join-Path $Ms "design\snowflake\$f") -Force
}
Copy-Item (Join-Path $Repo 'test_benches\snowflake\tb_snowflake_pe_array_lat.sv') `
          (Join-Path $Ms 'test_benches\snowflake\tb_snowflake_pe_array_lat.sv') -Force

# ---- graph + lattice tables -------------------------------------------------
Push-Location (Join-Path $Repo 'build_scripts')
python generate_snowflake.py --code $Code --d $D --dirs $Dirs | Out-Null
Pop-Location
python (Join-Path $Flow 'make_lattice_sim.py') --code $Code --d $D --slices $Slices --dirs $Dirs | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "[lat] lattice generator FAILED"; exit 1 }
Copy-Item (Join-Path $Repo "design\generated\snowflake_graph_${Code}_d${D}.svh") `
          (Join-Path $Ms 'design\generated\snowflake_graph.svh') -Force
Copy-Item (Join-Path $Repo 'design\generated\snowflake_lattice.svh') `
          (Join-Path $Ms 'design\generated\snowflake_lattice.svh') -Force

# ---- golden -----------------------------------------------------------------
$tag = "lat_${Code}_d${D}_s${Slices}" + $(if ($Pattern -ne 'std') { '_' + $Pattern } else { '' })
# The tag must name the BUILD, not just the configuration: without this, a
# `-ExtraDefs SNOW_LAT_2PASS` run overwrites the single-pass run's trace and
# evidence (the same defect that made `sweep.ps1`'s n-scan overwrite itself).
if ($ExtraDefs) {
  $suf = ($ExtraDefs -replace '[^A-Za-z0-9]+', '_').Trim('_').ToLower()
  if ($suf) { $tag = "${tag}_$suf" }
}
$golden = Join-Path $Ms "golden_$tag.txt"
$trace  = Join-Path $Ms "rtl_trace_$tag.txt"
$patArgs = @()
if ($Pattern -ne 'std') { $patArgs = @('--pattern', $Pattern) }
python (Join-Path $Ws 'snowflake_sim\ref\gen_golden.py') --code $Code --d $D --schedule 2:1 `
       @patArgs --out $golden | Out-Null

# ---- compile ----------------------------------------------------------------
$vdefs = @('+define+SNOW_LAT', '+define+SNOW_LATTICE')
if ($Pattern -ne 'std') { $vdefs += '+define+SNOW_SEAM_PAT' }
if ($ExtraDefs) { foreach ($x in ($ExtraDefs -split ',')) { if ($x) { $vdefs += "+define+$($x.Trim())" } } }
Push-Location $Ms
Remove-Item $trace -ErrorAction SilentlyContinue
$log = Join-Path $Flow "logs\msim_$tag.log"
New-Item -ItemType Directory -Force -Path (Join-Path $Flow 'logs') | Out-Null
& (Join-Path $Bin 'vlib.exe') work *>> $log
$args1 = @('-sv', '-quiet') + $vdefs + @(
  'design\snowflake\snowflake_edge.sv', 'design\snowflake\snowflake_pe.sv',
  'design\snowflake\snowflake_pe_array_lat.sv',
  'test_benches\snowflake\tb_snowflake_pe_array_lat.sv')
& (Join-Path $Bin 'vlog.exe') @args1 *> $log
if ($LASTEXITCODE -ne 0) { Write-Host "[lat] compile FAILED ($tag) -- see $log"; Pop-Location; exit 1 }
& (Join-Path $Bin 'vsim.exe') -c -quiet -do 'run -all; quit -f' work.tb_snowflake_pe_array_lat *>> $log
Pop-Location

if (-not (Test-Path (Join-Path $Ms 'rtl_trace.txt'))) {
  Write-Host "[lat] no trace ($tag) -- see $log"; exit 1
}
Move-Item (Join-Path $Ms 'rtl_trace.txt') $trace -Force

# the crossing counters the TB printed are part of the evidence trail
$stats = Select-String -Path $log -Pattern 'LAT stats' | Select-Object -Last 1
if ($stats) { Write-Host ("[lat] {0,-30} {1}" -f $tag, $stats.Line.Trim()) }

# ---- compare ----------------------------------------------------------------
$cmpArgs = @($golden, $trace)
if ($Dirs -ne 'all') {
  $pmap = (python (Join-Path $Flow 'dirs_ptrmap.py') --code $Code --d $D --dirs $Dirs).Trim()
  if (-not $pmap) { Write-Host "[lat] no ptr map for -Dirs $Dirs ($tag)"; exit 1 }
  $cmpArgs += @('--ptrmap', $pmap)
}
$verdict = python (Join-Path $Ws 'snowflake_sim\ref\compare_trace.py') @cmpArgs 2>&1 |
           Select-String -Pattern 'REGRESS_VERDICT' | Select-Object -Last 1
Write-Host ("[lat] {0,-30} {1}" -f $tag, $(if ($verdict) { $verdict.Line } else { 'NO VERDICT' }))
if ($verdict -and $verdict.Line -match 'PASS') { exit 0 } else { exit 1 }
