#=====================================================================
# run_after_noobs.ps1 -- chain the priority-(2) work after the currently
# running sweep, without leaving the machine idle between Vivado runs.
#
#   0) wait until no vivado.exe is left (the noobs sweep owns the licence and
#      pins design/generated/snowflake_graph.svh, so nothing else may run)
#   1) line-exact PE-array regression with SNOW_BUSYREG (xsim; gates step 2)
#   2) implementation sweep: SNOW_BUSYREG at surface d3 / d5 / d7
#   3) synthesis sweep: SNOW_ABL_MIN ablation (cost of the merge min tree)
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\run_after_noobs.ps1
#=====================================================================
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Ws   = Split-Path -Parent $Flow
$Repo = Join-Path $Ws 'Helios_scalable_QEC-main\Helios_scalable_QEC-main'
$Logs = Join-Path $Flow 'logs'
$Sim  = Join-Path $Ws 'snowflake_sim\run'

$srcs = @('snowflake_pe.sv', 'snowflake_edge.sv', 'snowflake_pe_array.sv') |
        ForEach-Object { Join-Path $Repo "design\snowflake\$_" }
$srcstr = $srcs -join ';'

function Wait-NoVivado {
    $waited = 0
    while ($waited -lt 480) {
        $p = Get-Process -Name vivado -ErrorAction SilentlyContinue
        if (-not $p) { return $true }
        Start-Sleep -Seconds 30
        $waited += 0.5
    }
    return $false
}

Write-Host "[chain] waiting for the noobs sweep to finish ..."
if (-not (Wait-NoVivado)) { Write-Host '[chain] timeout waiting for vivado'; exit 1 }
Write-Host '[chain] vivado is free'

# ---- 1) regression gate -----------------------------------------------------
$ok = $true
foreach ($cfg in @('surface 3', 'rep 3')) {
    $name = ($cfg -replace ' ', '_')
    $out = Join-Path $Logs "busyreg_regress_$name.txt"
    cmd /c "set ""SNOW_DEFS=-d SNOW_BUSYREG"" && `"$Sim\run_pearray.bat`" $cfg" *> $out
    $v = Select-String -Path $out -Pattern 'REGRESS_VERDICT' -Encoding UTF8 | Select-Object -Last 1
    Write-Host ("[chain] regression {0}: {1}" -f $cfg, $(if ($v) { $v.Line } else { 'NO VERDICT' }))
    if (-not ($v -and $v.Line -match 'PASS')) { $ok = $false }
}
if (-not $ok) {
    Write-Host '[chain] SNOW_BUSYREG regression FAILED -- skipping the measurement sweeps'
    exit 1
}
Write-Host '[chain] regression PASS -> measuring'

# ---- 2) SNOW_BUSYREG implementation sweep ----------------------------------
powershell.exe -NoProfile -ExecutionPolicy Bypass -File (Join-Path $Flow 'sweep.ps1') `
    -JobsFile (Join-Path $Flow 'jobs_pearray_busyreg.txt') -Mode impl `
    -Top snowflake_pe_array -Srcs $srcstr -SkipExisting 2>&1 |
    Tee-Object -FilePath (Join-Path $Logs 'sweep_busyreg.txt')

# ---- 3) merge min-tree ablation (synthesis only) ---------------------------
if (-not (Wait-NoVivado)) { Write-Host '[chain] timeout before ablation sweep'; exit 1 }
powershell.exe -NoProfile -ExecutionPolicy Bypass -File (Join-Path $Flow 'sweep.ps1') `
    -JobsFile (Join-Path $Flow 'jobs_ablate_min.txt') -Mode synth `
    -Top snowflake_pe_array -Srcs $srcstr -SkipExisting 2>&1 |
    Tee-Object -FilePath (Join-Path $Logs 'sweep_ablate_min.txt')

Write-Host '[chain] all done'
