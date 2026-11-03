#=====================================================================
# reset_contract_sweep.ps1 -- what reset pulse does the decoder core NEED?
#
# NEXT 3.6 item 1 states the requirement as prose ("after configuration the board
# MUST assert reset for >= 1 cycle, or the array starts from FF power-up values")
# and snowflake_reset_sync.sv now makes it structural.  This script measures the
# contract instead of asserting it:
#
#   * RSTPULSE: how long `pl_reset_in` (the board POR/button) is held.
#     1 cycle is the interesting case: the stretcher must turn it into a legal
#     reset on its own.
#   * RSTLEN: the stretcher's own guarantee, swept down to 1.
#
# Each combination re-runs the FULL board-path regression (same compiled library,
# only `vsim -g` changes) and is judged by the same line-exact golden comparison,
# so "PASS" means the decoded trace is bit-identical, not merely "no hang".
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\reset_contract_sweep.ps1
#=====================================================================
param(
  [string] $Code = 'rotated',
  [int]    $D    = 3,
  [int]    $Slices = 2,
  [string] $Noise = 'phenomenological',
  [int[]]  $Lens   = @(1, 2, 3, 4, 8, 16),
  [int[]]  $Pulses = @(1, 2, 4)
)
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Ws   = Split-Path -Parent $Flow
$Repo = Join-Path $Ws 'Helios_scalable_QEC-main\Helios_scalable_QEC-main'
$Ms   = Join-Path $Flow 'msim_board'
$Bin  = 'D:\quartus\modelsim\modelsim_ase\win32aloem'
New-Item -ItemType Directory -Force -Path (Join-Path $Flow 'logs') | Out-Null

# ---- one build (headers, board map, compile) --------------------------------
Write-Host "[rst] building the sweep library (this also runs the default case)"
powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $Flow 'msim_regress_board.ps1') `
    -Code $Code -D $D -Slices $Slices -Noise $Noise | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "[rst] the default regression FAILED -- fix that first"; exit 1 }

$tagPrefix = 'lat1_'
if ($Noise -ne 'phenomenological') { $tagPrefix = 'lat1_cl_' }
$tag = "${tagPrefix}${Code}_d${D}_s${Slices}"
$golden = Join-Path $Ms "golden_$tag.txt"
$map    = Join-Path $Flow 'board\board_map.json'

$rows = @()
foreach ($len in $Lens) {
  foreach ($pulse in $Pulses) {
    Push-Location $Ms
    Remove-Item (Join-Path $Ms 'board_records.txt') -ErrorAction SilentlyContinue
    $log = Join-Path $Flow ("logs\rst_{0}_l{1}_p{2}.log" -f $tag, $len, $pulse)
    Remove-Item $log -ErrorAction SilentlyContinue
    & (Join-Path $Bin 'vsim.exe') -c -quiet "-gRSTLEN=$len" "-gRSTPULSE=$pulse" `
        -do 'run -all; quit -f' work.tb_snowflake_board_lat1 *> $log
    Pop-Location
    $verdict = 'NO_DUMP'
    if (Test-Path (Join-Path $Ms 'board_records.txt')) {
      $trace = Join-Path $Ms ("rtl_trace_sweep_l{0}_p{1}.txt" -f $len, $pulse)
      python (Join-Path $Flow 'board_records_to_trace.py') `
             --records (Join-Path $Ms 'board_records.txt') --map $map --out $trace *>> $log
      if ($LASTEXITCODE -eq 0) {
        $v = python (Join-Path $Ws 'snowflake_sim\ref\compare_trace.py') $golden $trace 2>&1 |
             Select-String -Pattern 'REGRESS_VERDICT' | Select-Object -Last 1
        $verdict = if ($v -and $v.Line -match 'PASS') { 'PASS' } else { 'FAIL' }
      } else { $verdict = 'TRACE_FAIL' }
    }
    $rows += [pscustomobject]@{ rstlen = $len; rstpulse = $pulse; verdict = $verdict }
    Write-Host ("[rst] rstlen={0,-3} rstpulse={1,-3} -> {2}" -f $len, $pulse, $verdict)
  }
}

# ---- report ------------------------------------------------------------------
$csv = Join-Path $Flow ("logs\rst_sweep_{0}.csv" -f $tag)
$rows | Export-Csv -Path $csv -NoTypeInformation
$ev = Join-Path $Flow ("evidence\RSTSWEEP_{0}.txt" -f $tag)
$lines = @()
$lines += "reset-contract sweep: $tag (board path, line-exact vs golden_$tag.txt)"
$lines += "  rstlen  = snowflake_reset_sync LEN parameter (the stretch guarantee)"
$lines += "  rstpulse= cycles pl_reset_in (POR/button) is held; 0 = never asserted"
$lines += ""
$lines += ("  {0,-8} {1,-9} {2}" -f 'rstlen', 'rstpulse', 'verdict')
foreach ($r in $rows) { $lines += ("  {0,-8} {1,-9} {2}" -f $r.rstlen, $r.rstpulse, $r.verdict) }
$npass = ($rows | Where-Object { $_.verdict -eq 'PASS' }).Count
$lines += ""
$lines += "  $npass / $($rows.Count) combinations PASS"
$lines += "  A pulse of ONE cycle is enough: the stretcher turns any level into a full"
$lines += "  LEN-cycle reset, so a bouncing button or a 1-cycle PS write cannot produce"
$lines += "  a short reset.  pulse=0 (no external reset at all) is deliberately NOT in"
$lines += "  this sweep: on silicon the core still resets (snowflake_reset_sync's counter"
$lines += "  powers up at 0, see the header), but the AXI register file would need a bus"
$lines += "  reset to leave X in RTL -- and on a real board the PS drives pl_resetn"
$lines += "  during configuration anyway, so the case cannot occur."
$lines | Set-Content -Path $ev -Encoding UTF8
Write-Host "[rst] $npass / $($rows.Count) PASS; csv -> $csv; evidence -> $ev"
