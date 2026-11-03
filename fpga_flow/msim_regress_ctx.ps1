#=====================================================================
# msim_regress_ctx.ps1 -- multi-context PE-array regression under ModelSim.
#
# The ctx sources are GENERATED from the single-context ones, so any edit to
# snowflake_pe.sv / snowflake_pe_array.sv lands in them too.  This re-verifies
# both contexts against localuf without touching Vivado.
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\msim_regress_ctx.ps1 `
#       -Code surface -D 3 [-Defs SNOW_CTX1|SNOW_STALL]
#=====================================================================
param(
  [string] $Code = 'surface',
  [int]    $D    = 3,
  [string] $Defs = '',
  [string] $Dirs = 'all'
)
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Ws   = Split-Path -Parent $Flow
$Repo = Join-Path $Ws 'Helios_scalable_QEC-main\Helios_scalable_QEC-main'
$Ms   = Join-Path $Flow 'msim_ctx'
$Bin  = 'D:\quartus\modelsim\modelsim_ase\win32aloem'

New-Item -ItemType Directory -Force -Path (Join-Path $Ms 'design\snowflake'),
    (Join-Path $Ms 'design\generated'), (Join-Path $Ms 'test_benches\snowflake') | Out-Null

# regenerate the ctx sources from the (just verified) single-context ones
python (Join-Path $Flow 'make_pearray_ctx.py') | Out-Null
foreach ($f in 'snowflake_edge_ctx.sv', 'snowflake_pe_ctx.sv', 'snowflake_pe_array_ctx.sv') {
  Copy-Item (Join-Path $Repo "design\snowflake\$f") (Join-Path $Ms "design\snowflake\$f") -Force
}
Copy-Item (Join-Path $Repo 'test_benches\snowflake\tb_snowflake_pe_array_ctx.sv') `
          (Join-Path $Ms 'test_benches\snowflake\tb_snowflake_pe_array_ctx.sv') -Force
Push-Location (Join-Path $Repo 'build_scripts')
python generate_snowflake.py --code $Code --d $D --dirs $Dirs | Out-Null
Pop-Location
Copy-Item (Join-Path $Repo "design\generated\snowflake_graph_${Code}_d${D}.svh") `
          (Join-Path $Ms 'design\generated\snowflake_graph.svh') -Force

$tag = "ctx_${Code}_d${D}" + $(if ($Dirs -ne 'all') { "_" + $Dirs } else { "" }) + $(if ($Defs) { '_' + ($Defs -replace ',', '_') } else { '' })
$golden = Join-Path $Ms "golden_$tag.txt"
python (Join-Path $Ws 'snowflake_sim\ref\gen_golden.py') --code $Code --d $D --schedule 2:1 `
       --out $golden | Out-Null

$vdefs = @()
if ($Defs) { foreach ($x in ($Defs -split ',')) { if ($x) { $vdefs += "+define+$($x.Trim())" } } }
Push-Location $Ms
Remove-Item 'rtl_trace_ctx0.txt', 'rtl_trace_ctx1.txt' -ErrorAction SilentlyContinue
$log = Join-Path $Flow "logs\msim_$tag.log"
& (Join-Path $Bin 'vlib.exe') work *>> $log
$a = @('-sv', '-quiet') + $vdefs + @(
  'design\snowflake\snowflake_edge_ctx.sv', 'design\snowflake\snowflake_pe_ctx.sv',
  'design\snowflake\snowflake_pe_array_ctx.sv', 'test_benches\snowflake\tb_snowflake_pe_array_ctx.sv')
& (Join-Path $Bin 'vlog.exe') @a *> $log
if ($LASTEXITCODE -ne 0) { Write-Host "[msim-ctx] compile FAILED ($tag) -- see $log"; Pop-Location; exit 1 }
& (Join-Path $Bin 'vsim.exe') -c -quiet -do 'run -all; quit -f' work.tb_snowflake_pe_array_ctx *>> $log
Pop-Location

$ok = $true
foreach ($c in 0, 1) {
  $src = Join-Path $Ms "rtl_trace_ctx$c.txt"
  if (-not (Test-Path $src)) { if ($c -eq 1) { continue } ; Write-Host "[msim-ctx] missing ctx$c trace"; $ok = $false; continue }
  $dst = Join-Path $Ms "trace_${tag}_ctx$c.txt"
  Move-Item $src $dst -Force
  $verdict = python (Join-Path $Ws 'snowflake_sim\ref\compare_trace.py') $golden $dst 2>&1 |
             Select-String -Pattern 'REGRESS_VERDICT' | Select-Object -Last 1
  Write-Host ("[msim-ctx] {0,-30} ctx{1} {2}" -f $tag, $c, $(if ($verdict) { $verdict.Line } else { 'NO VERDICT' }))
  if (-not ($verdict -and $verdict.Line -match 'PASS')) { $ok = $false }
}
if ($ok) { exit 0 } else { exit 1 }
