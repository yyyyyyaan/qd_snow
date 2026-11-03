#=====================================================================
# netlist_regress.ps1 -- gate-level regression: synthesise the Snowflake core,
# write a functional netlist, run the SAME testbench against it and compare
# the trace with the localuf golden trace.
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File netlist_regress.ps1
#   powershell ... -File netlist_regress.ps1 -JobsFile jobs_netlist.txt
#
# The job list is a plain text file (like sweep.ps1), one job per line:
#       <code> <d> [schedule]
# Reading it from a file avoids the shell argument mangling that silently
# turned "rep:3;surface:3" into "rep:3 surface:3" when passed on the command
# line (that is why the first attempt produced a bogus tag).
#
# Why: synthesis can silently change semantics (x propagation, width
# truncation, don't-care branches, inferred latches).  Simulation of the RTL
# cannot catch that; simulating the netlist can.
# ASCII only.
#=====================================================================
param(
  [string] $JobsFile = '',
  [string] $Part     = 'xcvu9p-flga2104-2L-e',
  [switch] $SkipExisting
)
$Repo      = 'D:\ycz\doc\deepseek_workzone\decoder\Helios_scalable_QEC-main\Helios_scalable_QEC-main'
$Flow      = 'D:\ycz\doc\deepseek_workzone\decoder\fpga_flow'
$VivadoBin = 'D:\ycz\vivado\Vivado\2020.2\bin'
$Ref       = 'D:\ycz\doc\deepseek_workzone\decoder\snowflake_sim\ref'
$RunDir    = 'D:\ycz\doc\deepseek_workzone\decoder\snowflake_sim\run'
$LogDir    = Join-Path $Flow 'logs'
$GraphDir  = Join-Path $Flow 'graphs'
if (-not $JobsFile) { $JobsFile = Join-Path $Flow 'jobs_netlist.txt' }
$summary   = Join-Path $LogDir 'regress_netlist_summary.txt'
$env:PYTHONIOENCODING = 'utf-8'

$jobs = @()
foreach ($raw in (Get-Content -Path $JobsFile)) {
  $line = $raw.Trim()
  if ($line -eq '' -or $line.StartsWith('#')) { continue }
  $f = @($line -split '[;,\s]+' | Where-Object { $_ -ne '' })
  if ($f.Count -lt 2) { Write-Host "[warn] bad job line: $raw"; continue }
  $sched = '2:1'
  if ($f.Count -gt 2) { $sched = $f[2] }
  $jobs += , @{ code = $f[0]; d = $f[1]; sched = $sched }
}
Write-Host ("[jobs] {0} job(s) from {1}" -f $jobs.Count, $JobsFile)
if (-not (Test-Path $summary)) { 'tag,verdict,detail' | Set-Content -Encoding ASCII $summary }

foreach ($job in $jobs) {
  $code = $job.code; $d = $job.d; $sched = $job.sched
  $stag = '2to1'; if ($sched -eq '1:1') { $stag = '1to1' }
  $tag  = "${code}_d${d}_$stag" + "_netlist"
  $netlist = Join-Path $LogDir "netlist_$tag.v"

    if ($SkipExisting -and (Test-Path $netlist) -and
        (Select-String -Path $summary -Pattern ("^" + $tag + ",PASS") -Quiet)) {
      Write-Host "[skip] $tag"
      continue
    }

    # graph (pinned copy, no regeneration if present)
    $graphFile = Join-Path $GraphDir "${code}_d$d.svh"
    if (-not (Test-Path $graphFile)) {
      python "$Repo\build_scripts\generate_snowflake.py" --code $code --d $d | Out-Null
      $gen = Join-Path $Repo "design\generated\snowflake_graph_${code}_d$d.svh"
      if (Test-Path $gen) { Copy-Item $gen $graphFile -Force }
      else { $graphFile = Join-Path $Repo 'design\generated\snowflake_graph.svh' }
    }

    $defs = ''
    if ($sched -eq '1:1') { $defs = 'SNOW_ONE_ONE' }

    $env:FLOW_REPO   = $Repo
    $env:FLOW_TOP    = 'snowflake_core'
    $env:FLOW_SRCS   = "$Repo\design\snowflake\snowflake_core.sv"
    $env:FLOW_DEFS   = $defs
    $env:FLOW_GRAPH  = $graphFile
    $env:FLOW_PART   = $Part
    $env:FLOW_TAG    = $tag
    $env:FLOW_OUT    = $LogDir

    Write-Host "[synth] $tag"
    cmd /c "`"$VivadoBin\vivado.bat`" -mode batch -source $Flow\netlist_synth.tcl -nojournal -nolog > `"$LogDir\netlist_synth_$tag.log`" 2>&1"
    if (-not (Test-Path $netlist)) {
      Write-Host "[FAIL] no netlist produced for $tag"
      "$tag,FAIL,no netlist produced" | Add-Content -Encoding ASCII $summary
      continue
    }

    Write-Host "[sim  ] $tag"
    cmd /c "`"$RunDir\run_netlist.bat`" `"$netlist`" $tag" > "$LogDir\netlist_sim_$tag.log" 2>&1
    $trace = Join-Path $RunDir 'netlist_trace.txt'
    if (-not (Test-Path $trace)) {
      Write-Host "[FAIL] netlist simulation produced no trace for $tag"
      "$tag,FAIL,no trace" | Add-Content -Encoding ASCII $summary
      continue
    }

    python "$Ref\gen_golden.py" --code $code --d $d --schedule $sched --out "$Ref\golden_tmp.txt" | Out-Null
    python "$Ref\compare_trace.py" "$Ref\golden_tmp.txt" $trace *> "$LogDir\netlist_cmp_$tag.txt"
    $rc = $LASTEXITCODE
    $verdict = (Select-String -Path "$LogDir\netlist_cmp_$tag.txt" -Pattern 'REGRESS_VERDICT' -Encoding UTF8 |
                Select-Object -Last 1).Line
    if (-not $verdict) { $verdict = 'no verdict line' }
    $result = 'FAIL'; if ($rc -eq 0) { $result = 'PASS' }
    "$tag,$result,$($verdict.Trim())" | Add-Content -Encoding ASCII $summary
    Write-Host ("[{0}] {1}" -f $result, $tag)
}
Write-Host "netlist regression finished -> $summary"
