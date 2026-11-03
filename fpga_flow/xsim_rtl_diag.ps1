#=====================================================================
# xsim_rtl_diag.ps1 -- run the SAME testbench against the RTL through the
# SAME xsim flow the gate-level regression uses.
#
# Why: the gate-level (netlist) run hangs with `stage` stuck at ST_IDLE, while
# the same RTL passes line-exact under ModelSim.  Before blaming synthesis, the
# flow itself has to be ruled out: if the RTL also hangs here, the problem is
# xsim/TB/headers, not `synth_design`.
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\xsim_rtl_diag.ps1 `
#       -Code rep -D 3 -Slices 2
#
# Writes rtl_trace.txt in fpga_flow/xsim_rtl_diag/ and prints the probe lines.
#=====================================================================
param(
  [string] $Code = 'rep',
  [int]    $D    = 3,
  [int]    $Slices = 2,
  [string] $Dirs = 'all'
)
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Ws   = Split-Path -Parent $Flow
$Repo = Join-Path $Ws 'Helios_scalable_QEC-main\Helios_scalable_QEC-main'
$Bin  = 'D:\ycz\vivado\Vivado\2020.2\bin'
$Run  = Join-Path $Flow 'xsim_rtl_diag'
New-Item -ItemType Directory -Force -Path $Run, (Join-Path $Flow 'logs') | Out-Null

$tag = "rtl_${Code}_d${D}_s${Slices}"
Push-Location (Join-Path $Repo 'build_scripts')
python generate_snowflake.py --code $Code --d $D --dirs $Dirs | Out-Null
Pop-Location
python (Join-Path $Flow 'make_lattice_sim.py') --code $Code --d $D --slices $Slices --dirs $Dirs | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "[rtl] lattice generator FAILED"; exit 1 }

Push-Location $Run
Remove-Item xsim.dir -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item rtl_trace.txt -ErrorAction SilentlyContinue
@('run all', 'quit') | Set-Content -Encoding ASCII (Join-Path $Run 'sim_run.tcl')

$srcs = @(
  (Join-Path $Repo 'design\snowflake\snowflake_pe.sv'),
  (Join-Path $Repo 'design\snowflake\snowflake_edge.sv'),
  (Join-Path $Repo 'design\snowflake\snowflake_pe_array_lat1.sv'),
  (Join-Path $Repo 'test_benches\snowflake\tb_snowflake_pe_array_lat1.sv')
)
& (Join-Path $Bin 'xvlog.bat') -sv -d SNOW_NETLIST -d SNOW_LAT -d SNOW_LATTICE @srcs `
    > (Join-Path $Flow "logs\${tag}_xvlog.log") 2>&1
if ($LASTEXITCODE -ne 0) { Write-Host "[rtl] xvlog FAILED"; Pop-Location; exit 1 }
& (Join-Path $Bin 'xelab.bat') tb_snowflake_pe_array_lat1 -s rtl_diag --debug typical `
    --timescale 1ns/1ps > (Join-Path $Flow "logs\${tag}_xelab.log") 2>&1
if ($LASTEXITCODE -ne 0) { Write-Host "[rtl] xelab FAILED"; Pop-Location; exit 1 }
& (Join-Path $Bin 'xsim.bat') rtl_diag -t sim_run.tcl > (Join-Path $Flow "logs\${tag}_xsim.log") 2>&1
Pop-Location

$log = Join-Path $Flow "logs\${tag}_xsim.log"
$probe = Select-String -Path $log -Pattern '^\[net\]' | Select-Object -First 20
Write-Host "[rtl] first probe samples:"
$probe | ForEach-Object { $_.Line }
Write-Host "[rtl] last probe samples:"
Select-String -Path $log -Pattern '^\[net\]' | Select-Object -Last 3 | ForEach-Object { $_.Line }
Write-Host "[rtl] $((Get-Item (Join-Path $Run 'rtl_trace.txt') -ErrorAction SilentlyContinue).Length) bytes of trace"

$golden = Join-Path $Run "golden_$tag.txt"
python (Join-Path $Ws 'snowflake_sim\ref\gen_golden.py') --code $Code --d $D --schedule 2:1 --out $golden | Out-Null
$verdict = python (Join-Path $Ws 'snowflake_sim\ref\compare_trace.py') $golden (Join-Path $Run 'rtl_trace.txt') 2>&1 |
           Select-String -Pattern 'REGRESS_VERDICT' | Select-Object -Last 1
Write-Host ("[rtl] {0,-24} {1}" -f $tag, $(if ($verdict) { $verdict.Line } else { 'NO VERDICT' }))
