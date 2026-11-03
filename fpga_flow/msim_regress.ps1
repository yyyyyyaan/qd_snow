#=====================================================================
# msim_regress.ps1 -- line-exact PE-array regression with ModelSim instead of
# Vivado's xsim.
#
# Why this exists: the Vivado sweeps own the licence (and pin
# design/generated/snowflake_graph.svh) for hours at a time, so RTL changes
# cannot be verified while they run.  ModelSim (bundled with Quartus) is an
# independent tool, and generate_snowflake.py writes BOTH the named graph and
# the canonical snowflake_graph.svh -- so running it here re-pins the graph
# safely.  Everything happens in fpga_flow/msim/, a private copy of the tree, so
# nothing races with the sweeps.
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\msim_regress.ps1 `
#       -Code rep -D 3 [-Defs SNOW_BUSYREG,SNOW_MINTREE]
#=====================================================================
param(
  [string] $Code = 'rep',
  [int]    $D    = 3,
  [string] $Defs = '',
  [string] $Dirs = 'all',
  [int]    $Slices = 2,      # used only when -Defs contains SNOW_SLICED
  [string] $Pattern = 'std'  # 'seam' = directed cross-seam stimulus (SNOW_SEAM_PAT)
)
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Ws   = Split-Path -Parent $Flow
$Repo = Join-Path $Ws 'Helios_scalable_QEC-main\Helios_scalable_QEC-main'
$Ms   = Join-Path $Flow 'msim'
$Bin  = 'D:\quartus\modelsim\modelsim_ase\win32aloem'

New-Item -ItemType Directory -Force -Path (Join-Path $Ms 'design\snowflake'),
    (Join-Path $Ms 'design\generated'), (Join-Path $Ms 'test_benches\snowflake') | Out-Null

# ---- fresh sources + graph (the generator writes the canonical name too) ----
foreach ($f in 'snowflake_edge.sv', 'snowflake_pe.sv', 'snowflake_pe_array.sv') {
  Copy-Item (Join-Path $Repo "design\snowflake\$f") (Join-Path $Ms "design\snowflake\$f") -Force
}
Copy-Item (Join-Path $Repo 'test_benches\snowflake\tb_snowflake_pe_array.sv') `
          (Join-Path $Ms 'test_benches\snowflake\tb_snowflake_pe_array.sv') -Force
$wantSeam = (($Defs -split ',') -contains 'SNOW_SLICED')
Push-Location (Join-Path $Repo 'build_scripts')
if ($wantSeam) {
  # --slices only adds the slice tables to the *_part.json; the .svh output
  # is byte-identical to the default path (verified by hash)
  python generate_snowflake.py --code $Code --d $D --dirs $Dirs --slices $Slices | Out-Null
} else {
  python generate_snowflake.py --code $Code --d $D --dirs $Dirs | Out-Null
}
Pop-Location
Copy-Item (Join-Path $Repo "design\generated\snowflake_graph_${Code}_d${D}.svh") `
          (Join-Path $Ms 'design\generated\snowflake_graph.svh') -Force
if ($wantSeam) {
  python (Join-Path $Flow 'make_sliced_sim.py') --code $Code --d $D --slices $Slices --dirs $Dirs
  Copy-Item (Join-Path $Repo 'design\generated\snowflake_seam.svh') `
            (Join-Path $Ms 'design\generated\snowflake_seam.svh') -Force
}

# ---- golden ----------------------------------------------------------------
$tag = "${Code}_d${D}" + $(if ($Defs) { '_' + ($Defs -replace ',', '_') } else { '' }) `
       + $(if ($Pattern -ne 'std') { '_' + $Pattern } else { '' }) `
       + $(if ($Dirs -ne 'all') { '_' + $Dirs } else { '' })
$golden = Join-Path $Ms "golden_$tag.txt"
$trace  = Join-Path $Ms "rtl_trace_$tag.txt"
$patArgs = @()
if ($Pattern -ne 'std') { $patArgs = @('--pattern', $Pattern) }
python (Join-Path $Ws 'snowflake_sim\ref\gen_golden.py') --code $Code --d $D --schedule 2:1 `
       @patArgs --out $golden | Out-Null

# ---- compile ---------------------------------------------------------------
$vdefs = @()
if ($Defs) { foreach ($x in ($Defs -split ',')) { if ($x) { $vdefs += "+define+$($x.Trim())" } } }
if ($Pattern -ne 'std') { $vdefs += '+define+SNOW_SEAM_PAT' }
Push-Location $Ms
Remove-Item $trace -ErrorAction SilentlyContinue
$log = Join-Path $Flow "logs\msim_$tag.log"
& (Join-Path $Bin 'vlib.exe') work *>> $log
$args1 = @('-sv', '-quiet') + $vdefs + @(
  'design\snowflake\snowflake_edge.sv', 'design\snowflake\snowflake_pe.sv',
  'design\snowflake\snowflake_pe_array.sv', 'test_benches\snowflake\tb_snowflake_pe_array.sv')
& (Join-Path $Bin 'vlog.exe') @args1 *> $log
if ($LASTEXITCODE -ne 0) { Write-Host "[msim] compile FAILED ($tag) -- see $log"; Pop-Location; exit 1 }
& (Join-Path $Bin 'vsim.exe') -c -quiet -do 'run -all; quit -f' work.tb_snowflake_pe_array *>> $log
Pop-Location

if (-not (Test-Path (Join-Path $Ms 'rtl_trace.txt'))) { Write-Host "[msim] no trace ($tag)"; exit 1 }
Move-Item (Join-Path $Ms 'rtl_trace.txt') $trace -Force

# ---- compare ---------------------------------------------------------------
# With -Dirs used the RTL prints ptr in the reduced direction numbering while
# the golden always uses localuf's full 12, so the ptr field must be translated
# (map computed from localuf by dirs_ptrmap.py, never hand-written).
$cmpArgs = @($golden, $trace)
if ($Dirs -ne 'all') {
  $pmap = (python (Join-Path $Flow 'dirs_ptrmap.py') --code $Code --d $D --dirs $Dirs).Trim()
  if (-not $pmap) { Write-Host "[msim] no ptr map for -Dirs $Dirs ($tag)"; exit 1 }
  $cmpArgs += @('--ptrmap', $pmap)
}
$verdict = python (Join-Path $Ws 'snowflake_sim\ref\compare_trace.py') @cmpArgs 2>&1 |
           Select-String -Pattern 'REGRESS_VERDICT' | Select-Object -Last 1
Write-Host ("[msim] {0,-34} {1}" -f $tag, $(if ($verdict) { $verdict.Line } else { 'NO VERDICT' }))
if ($verdict -and $verdict.Line -match 'PASS') { exit 0 } else { exit 1 }
