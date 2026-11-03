#=====================================================================
# run_after_chain2.ps1 -- third unattended stage: MEASURE the "--dirs used"
# variant before investing in the ptr-encoding map (report 6.15).
#
# Finding behind it: localuf's _NEIGHBOR_ORDER has 12 directions for surface
# codes but phenomenological graphs only ever use 6, so the PE array declares
# twice the neighbour buses it needs.  The open question is whether the dead
# ports already fold away in synthesis (then this is a non-issue) or whether
# they cost routing/congestion (then the ptr-map work is worth doing).
# Measurement answers it; assumption does not.
#
# Waits for run_after_chain.ps1 to log "[chain2] all done" so the three chains
# never race for the Vivado licence or for the pinned graph.
#=====================================================================
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Ws   = Split-Path -Parent $Flow
$Repo = Join-Path $Ws 'Helios_scalable_QEC-main\Helios_scalable_QEC-main'
$Logs = Join-Path $Flow 'logs'
$Prev = Join-Path $Logs 'chain2_after_chain.txt'

$srcs = @('snowflake_pe.sv', 'snowflake_edge.sv', 'snowflake_pe_array.sv') |
        ForEach-Object { Join-Path $Repo "design\snowflake\$_" }
$srcstr = $srcs -join ';'

Write-Host '[chain3] waiting for chain2 ...'
$w = 0
while ($w -lt 1200) {
    if ((Test-Path $Prev) -and (Select-String -Path $Prev -Pattern '\[chain2\] all done' -Quiet)) { break }
    Start-Sleep -Seconds 60
    $w += 1
}
if ($w -ge 1200) { Write-Host '[chain3] timeout waiting for chain2'; exit 1 }
while (Get-Process -Name vivado -ErrorAction SilentlyContinue) { Start-Sleep -Seconds 30 }
Write-Host '[chain3] running the 6-direction measurements'

powershell.exe -NoProfile -ExecutionPolicy Bypass -File (Join-Path $Flow 'sweep.ps1') `
    -JobsFile (Join-Path $Flow 'jobs_dirsused_impl.txt') -Mode impl `
    -Graph (Join-Path $Flow 'graphs\surface_d3_used.svh') `
    -Top snowflake_pe_array -Srcs $srcstr -SkipExisting 2>&1 |
    Tee-Object -FilePath (Join-Path $Logs 'sweep_dirsused_impl.txt')

while (Get-Process -Name vivado -ErrorAction SilentlyContinue) { Start-Sleep -Seconds 30 }
powershell.exe -NoProfile -ExecutionPolicy Bypass -File (Join-Path $Flow 'sweep.ps1') `
    -JobsFile (Join-Path $Flow 'jobs_dirsused_synth.txt') -Mode synth `
    -Graph (Join-Path $Flow 'graphs\surface_d7_used.svh') `
    -Top snowflake_pe_array -Srcs $srcstr -SkipExisting 2>&1 |
    Tee-Object -FilePath (Join-Path $Logs 'sweep_dirsused_synth.txt')

Write-Host '[chain3] all done'
