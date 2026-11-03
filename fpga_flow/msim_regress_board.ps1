#=====================================================================
# msim_regress_board.ps1 -- the BOARD-PATH regression (P3 / D8 in simulation).
#
# It compiles design/board/*.sv + the verified merged array and drives the whole
# thing the way the PS will:
#
#   POR -> poll STATUS[4] -> read ID block
#       -> per round: TRACE_CLEAR, SYNDROME, TRACE_ARM, START, poll DONE,
#          drain the wide-record buffer through TRACE_REC/TRACE_DATA
#
# then rebuilds the trace with fpga_flow/board_records_to_trace.py (the twin of
# the PS software) and compares it LINE FOR LINE against the SAME golden the
# direct-array regression uses.  Nothing is compared against a board-specific
# expectation: the acceptance criterion is literally D8's.
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\msim_regress_board.ps1 `
#       -Code rotated -D 3 -Slices 2
#   ... -RstLen 1 -RstPulse 1        # reset-contract sweep (same library)
#=====================================================================
param(
  [string] $Code = 'rotated',
  [int]    $D    = 3,
  [int]    $Slices = 2,
  [string] $Dirs = 'all',
  [string] $Pattern = 'std',
  [string] $Noise = 'phenomenological',
  [int]    $RstLen = 16,
  [int]    $RstPulse = 4,
  [int]    $MaxRec = 128,
  [switch] $NoRebuildGolden,
  [switch] $TagSuffix              # append the reset settings to the tag
)
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Ws   = Split-Path -Parent $Flow
$Repo = Join-Path $Ws 'Helios_scalable_QEC-main\Helios_scalable_QEC-main'
$Ms   = Join-Path $Flow 'msim_board'
$Bin  = 'D:\quartus\modelsim\modelsim_ase\win32aloem'

New-Item -ItemType Directory -Force -Path (Join-Path $Ms 'design\snowflake'),
    (Join-Path $Ms 'design\board'), (Join-Path $Ms 'design\generated'),
    (Join-Path $Ms 'test_benches\snowflake'), (Join-Path $Flow 'logs') | Out-Null

# ---- the same tables the direct-array regression uses -----------------------
Push-Location (Join-Path $Repo 'build_scripts')
python generate_snowflake.py --code $Code --d $D --dirs $Dirs --noise $Noise | Out-Null
Pop-Location
python (Join-Path $Flow 'make_lattice_sim.py') --code $Code --d $D --slices $Slices `
       --dirs $Dirs --noise $Noise | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "[brd] lattice generator FAILED"; exit 1 }
python (Join-Path $Flow 'make_board_map.py') --code $Code --d $D --dirs $Dirs `
       --noise $Noise --maxrec $MaxRec | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "[brd] board map generator FAILED"; exit 1 }

$ghdr = "snowflake_graph_${Code}_d${D}.svh"
Copy-Item (Join-Path $Repo "design\generated\$ghdr") (Join-Path $Ms 'design\generated') -Force
Copy-Item (Join-Path $Repo 'design\generated\snowflake_lattice.svh') `
          (Join-Path $Ms 'design\generated') -Force
Move-Item (Join-Path $Ms "design\generated\$ghdr") `
          (Join-Path $Ms 'design\generated\snowflake_graph.svh') -Force

# ---- fresh RTL ---------------------------------------------------------------
foreach ($f in 'snowflake_edge.sv', 'snowflake_pe.sv', 'snowflake_pe_array_lat1.sv') {
  Copy-Item (Join-Path $Repo "design\snowflake\$f") (Join-Path $Ms "design\snowflake\$f") -Force
}
foreach ($f in 'snowflake_reset_sync.sv', 'snowflake_trace_capture.sv',
               'snowflake_host_regs.sv', 'snowflake_board_top.sv') {
  Copy-Item (Join-Path $Repo "design\board\$f") (Join-Path $Ms "design\board\$f") -Force
}
Copy-Item (Join-Path $Repo 'test_benches\snowflake\tb_snowflake_board_lat1.sv') `
          (Join-Path $Ms 'test_benches\snowflake\tb_snowflake_board_lat1.sv') -Force

# ---- tag + golden ------------------------------------------------------------
$tagPrefix = 'lat1_'
if ($Noise -ne 'phenomenological') { $tagPrefix = 'lat1_cl_' }
$tag = "${tagPrefix}${Code}_d${D}_s${Slices}" + $(if ($Pattern -ne 'std') { '_' + $Pattern } else { '' })
$btag = $tag -replace '^lat1_', 'board_'
if ($TagSuffix) { $btag = "${btag}_rst${RstLen}p${RstPulse}" }

$evGolden = Join-Path $Flow "evidence\golden_$tag.txt"
$golden   = Join-Path $Ms "golden_$tag.txt"
$patArgs = @()
if ($Pattern -ne 'std') { $patArgs = @('--pattern', $Pattern) }
if (-not $NoRebuildGolden -or -not (Test-Path $evGolden)) {
  python (Join-Path $Ws 'snowflake_sim\ref\gen_golden.py') --code $Code --d $D --schedule 2:1 `
         @patArgs --noise $Noise --out $golden | Out-Null
  if ($LASTEXITCODE -ne 0) { Write-Host "[brd] golden FAILED ($tag)"; exit 1 }
}
$goldenHash = ''
if (Test-Path $evGolden) {
  Copy-Item $evGolden $golden -Force
  $h1 = (Get-FileHash $evGolden -Algorithm SHA256).Hash
  $tmpg = Join-Path $Ms "regen_$tag.txt"
  python (Join-Path $Ws 'snowflake_sim\ref\gen_golden.py') --code $Code --d $D --schedule 2:1 `
         @patArgs --noise $Noise --out $tmpg | Out-Null
  $h2 = if (Test-Path $tmpg) { (Get-FileHash $tmpg -Algorithm SHA256).Hash } else { 'NA' }
  $goldenHash = if ($h1 -eq $h2) { 'evidence==regen' } else { "MISMATCH $h1 vs $h2" }
  Write-Host "[brd] golden $tag from evidence ($goldenHash)"
}

# ---- compile -----------------------------------------------------------------
$vdefs = @('+define+SNOW_LAT', '+define+SNOW_LATTICE')
if ($Pattern -ne 'std') { $vdefs += '+define+SNOW_SEAM_PAT' }
Push-Location $Ms
$log = Join-Path $Flow "logs\msim_$btag.log"
Remove-Item $log -ErrorAction SilentlyContinue
& (Join-Path $Bin 'vlib.exe') work *>> $log
$srcs = @('-sv', '-quiet') + $vdefs + @(
  'design\snowflake\snowflake_edge.sv', 'design\snowflake\snowflake_pe.sv',
  'design\snowflake\snowflake_pe_array_lat1.sv',
  'design\board\snowflake_reset_sync.sv', 'design\board\snowflake_trace_capture.sv',
  'design\board\snowflake_host_regs.sv', 'design\board\snowflake_board_top.sv',
  'test_benches\snowflake\tb_snowflake_board_lat1.sv')
& (Join-Path $Bin 'vlog.exe') @srcs *> $log
if ($LASTEXITCODE -ne 0) {
  Write-Host "[brd] compile FAILED ($btag) -- see $log"
  Select-String -Path $log -Pattern 'Error|\*\* Error' | Select-Object -First 12 |
    ForEach-Object { Write-Host ("    " + $_.Line.Trim()) }
  Pop-Location; exit 1
}
Remove-Item (Join-Path $Ms 'board_records.txt') -ErrorAction SilentlyContinue
$gargs = @('-c', '-quiet', "-gRSTLEN=$RstLen", "-gRSTPULSE=$RstPulse", "-gMAXREC=$MaxRec",
           '-do', 'run -all; quit -f', 'work.tb_snowflake_board_lat1')
& (Join-Path $Bin 'vsim.exe') @gargs *>> $log
Pop-Location

if (-not (Test-Path (Join-Path $Ms 'board_records.txt'))) {
  Write-Host "[brd] no record dump ($btag) -- see $log"; exit 1
}

# ---- host-side reconstruction ------------------------------------------------
$trace = Join-Path $Ms "rtl_trace_$btag.txt"
python (Join-Path $Flow 'board_records_to_trace.py') `
       --records (Join-Path $Ms 'board_records.txt') `
       --map (Join-Path $Flow 'board\board_map.json') --out $trace
if ($LASTEXITCODE -ne 0) { Write-Host "[brd] record->trace FAILED ($btag)"; exit 1 }

# ---- line-exact comparison against the SAME golden --------------------------
$cmpArgs = @($golden, $trace)
if ($Dirs -ne 'all') {
  $pmap = (python (Join-Path $Flow 'dirs_ptrmap.py') --code $Code --d $D --dirs $Dirs).Trim()
  if (-not $pmap) { Write-Host "[brd] no ptr map for -Dirs $Dirs ($btag)"; exit 1 }
  $cmpArgs += @('--ptrmap', $pmap)
}
$verdict = python (Join-Path $Ws 'snowflake_sim\ref\compare_trace.py') @cmpArgs 2>&1 |
           Select-String -Pattern 'REGRESS_VERDICT' | Select-Object -Last 1
$vline = if ($verdict) { $verdict.Line } else { 'NO VERDICT' }
Write-Host ("[brd] {0,-26} {1}" -f $btag, $vline)
Select-String -Path $log -Pattern '\[brd\]' | ForEach-Object { Write-Host ("    " + $_.Line.Trim()) }

if ($verdict -and $verdict.Line -match 'PASS') {
  $ev = Join-Path $Flow "evidence\PASS_$btag`_rtl.txt"
  Copy-Item $trace $ev -Force
  Add-Content $ev ("# board-path regression: $vline")
  Add-Content $ev ("# records: fpga_flow/msim_board/board_records.txt; map: fpga_flow/board/board_map.json")
  Add-Content $ev ("# golden: evidence\golden_$tag.txt ($goldenHash); rstlen=$RstLen rstpulse=$RstPulse maxrec=$MaxRec")
  Write-Host "[brd] evidence -> fpga_flow\evidence\PASS_$btag`_rtl.txt"
  exit 0
} else {
  exit 1
}
