#=====================================================================
# run_queue.ps1 -- run the remaining FPGA-flow steps back to back, one Vivado
# process at a time (the licences and the CPU do not allow more, and every
# snowflake run pins design/generated/snowflake_graph.svh).
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File run_queue.ps1
#   powershell ... -File run_queue.ps1 -Steps 'ablate,period,zcu106,netlist,helios'
#
# steps:
#   fit11   1:1 area points (synthesis only) for the joint area fit
#   ablate  SNOW_NO_OBS / SNOW_ABLATE_MERGE area breakdown (implementation)
#   period  re-run at the achieved period to confirm the reported f_max
#   zcu106  headline configurations on the official ZCU106 part
#   netlist gate-level (post-synthesis netlist) regression vs localuf
#   helios  synthesise the original Helios single-FPGA decoder for comparison
# ASCII only.
#=====================================================================
param([string] $Steps = 'fit11,ablate,period,zcu106,netlist,helios')

$Flow      = 'D:\ycz\doc\deepseek_workzone\decoder\fpga_flow'
$VivadoBin = 'D:\ycz\vivado\Vivado\2020.2\bin'
$LogDir    = Join-Path $Flow 'logs'
New-Item -ItemType Directory -Force -Path $LogDir | Out-Null

foreach ($raw in ($Steps -split ',')) {
  $s = $raw.Trim()
  if ($s -eq '') { continue }
  $t0 = Get-Date
  Write-Host ("==== step {0} start {1:HH:mm:ss} ====" -f $s, $t0)
  switch ($s) {
    'fit11'   { & "$Flow\sweep.ps1" -JobsFile "$Flow\jobs_fit_synth_11.txt" -Mode synth -SkipExisting }
    'ablate'  { & "$Flow\sweep.ps1" -JobsFile "$Flow\jobs_ablate_vu9p.txt" -Mode impl -SkipExisting }
    'period'  { & "$Flow\sweep.ps1" -JobsFile "$Flow\jobs_period_confirm.txt" -Mode impl -SkipExisting }
    'zcu106'  { & "$Flow\sweep.ps1" -JobsFile "$Flow\jobs_zcu106.txt" -Mode impl -SkipExisting }
    'netlist' { & "$Flow\netlist_regress.ps1" -JobsFile "$Flow\jobs_netlist.txt" -SkipExisting }
    'helios'  {
      cmd /c "`"$VivadoBin\vivado.bat`" -mode batch -source $Flow\synth_helios.tcl -nojournal -nolog > `"$LogDir\helios_synth.log`" 2>&1"
      $hl = (Select-String -Path "$LogDir\helios_synth.log" -Pattern 'HELIOS_RESULT|HELIOS_SYNTH_FAILED' |
             Select-Object -Last 1).Line
      if ($hl) { Write-Host $hl } else { Write-Host '[warn] helios synthesis produced no result line' }
    }
    default   { Write-Host "[warn] unknown step '$s'" }
  }
  Write-Host ("==== step {0} done, {1:n1} min ====" -f $s, ((Get-Date) - $t0).TotalMinutes)
}
Write-Host 'queue finished'
