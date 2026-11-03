#=====================================================================
# run_after_chain.ps1 -- second stage of the unattended pipeline.
#
# Waits for run_after_noobs.ps1 to log "[chain] all done" (keying off the log,
# not merely on vivado being absent, so the two chains cannot race for the
# licence or for design/generated/snowflake_graph.svh), then:
#
#   1) line-exact PE-array regression with SNOW_MINTREE   (xsim; gates step 2)
#   2) implementation sweep: SNOW_MINTREE at surface d3 / d5 / d7
#   3) the corrected pblock experiment (jobs_pearray_pblock2.txt)
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\run_after_chain.ps1
#=====================================================================
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Ws   = Split-Path -Parent $Flow
$Repo = Join-Path $Ws 'Helios_scalable_QEC-main\Helios_scalable_QEC-main'
$Logs = Join-Path $Flow 'logs'
$Sim  = Join-Path $Ws 'snowflake_sim\run'
$Prev = Join-Path $Logs 'chain_after_noobs.txt'

$srcs = @('snowflake_pe.sv', 'snowflake_edge.sv', 'snowflake_pe_array.sv') |
        ForEach-Object { Join-Path $Repo "design\snowflake\$_" }
$srcstr = $srcs -join ';'

# ---- wait for the first chain -----------------------------------------------
Write-Host '[chain2] waiting for run_after_noobs.ps1 to finish ...'
$waited = 0
while ($waited -lt 960) {
    if ((Test-Path $Prev) -and (Select-String -Path $Prev -Pattern '\[chain\] all done' -Quiet)) { break }
    Start-Sleep -Seconds 60
    $waited += 1
}
if ($waited -ge 960) { Write-Host '[chain2] timeout waiting for the first chain'; exit 1 }
Write-Host '[chain2] first chain finished'

# a moment for vivado to disappear
while (Get-Process -Name vivado -ErrorAction SilentlyContinue) { Start-Sleep -Seconds 30 }

# ---- 1) regression gate for SNOW_MINTREE -----------------------------------
$ok = $true
foreach ($cfg in @('surface 3', 'rep 3')) {
    $name = ($cfg -replace ' ', '_')
    $out = Join-Path $Logs "mintree_regress_$name.txt"
    cmd /c "set ""SNOW_DEFS=-d SNOW_MINTREE"" && `"$Sim\run_pearray.bat`" $cfg" *> $out
    $v = Select-String -Path $out -Pattern 'REGRESS_VERDICT' -Encoding UTF8 | Select-Object -Last 1
    Write-Host ("[chain2] regression {0}: {1}" -f $cfg, $(if ($v) { $v.Line } else { 'NO VERDICT' }))
    if (-not ($v -and $v.Line -match 'PASS')) { $ok = $false }
}
if (-not $ok) {
    Write-Host '[chain2] SNOW_MINTREE regression FAILED -- skipping its measurement sweep'
} else {
    Write-Host '[chain2] regression PASS -> measuring SNOW_MINTREE'
    powershell.exe -NoProfile -ExecutionPolicy Bypass -File (Join-Path $Flow 'sweep.ps1') `
        -JobsFile (Join-Path $Flow 'jobs_pearray_mintree.txt') -Mode impl `
        -Top snowflake_pe_array -Srcs $srcstr -SkipExisting 2>&1 |
        Tee-Object -FilePath (Join-Path $Logs 'sweep_mintree.txt')
}

# ---- 3) corrected pblock experiment ----------------------------------------
while (Get-Process -Name vivado -ErrorAction SilentlyContinue) { Start-Sleep -Seconds 30 }
Write-Host '[chain2] running the corrected pblock experiment'
powershell.exe -NoProfile -ExecutionPolicy Bypass -File (Join-Path $Flow 'sweep.ps1') `
    -JobsFile (Join-Path $Flow 'jobs_pearray_pblock2.txt') -Mode impl `
    -Top snowflake_pe_array -Srcs $srcstr -SkipExisting 2>&1 |
    Tee-Object -FilePath (Join-Path $Logs 'sweep_pblock2.txt')

Write-Host '[chain2] all done'
