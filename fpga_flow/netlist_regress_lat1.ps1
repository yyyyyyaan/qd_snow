#=====================================================================
# netlist_regress_lat1.ps1 -- GATE-LEVEL regression for the MERGED lattice
# array (snowflake_pe_array_lat1.sv).
#
# Why this exists: the RTL regression cannot tell whether SYNTHESIS changed the
# semantics, and the merged array is exactly the design where that matters --
# its state bank was a `reg` memory whose multi-driven resolution once turned
# whole bank bits into constants (`[Synth 8-6858] ... constant driver which has
# been PRESERVED, other driver is ignored`).  So the trace must be reproduced by
# the NETLIST, not just by the RTL.
#
# Steps:
#   1. generate the graph + lattice headers for the config (the array needs both)
#   2. synthesise with fpga_flow/netlist_synth.tcl -> logs/netlist_<tag>.v
#   3. xvlog / xelab / xsim the netlist with the SAME testbench
#   4. compare the netlist trace with the same localuf golden trace
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File fpga_flow\netlist_regress_lat1.ps1 `
#       -Code rep -D 3 -Slices 2
#=====================================================================
param(
  [string] $Code   = 'rep',
  [int]    $D      = 3,
  [int]    $Slices = 2,
  [string] $Dirs   = 'all',
  [string] $Pattern = 'std',   # 'seam' = directed cross-seam stimulus (SNOW_SEAM_PAT)
  [string] $Part   = 'xcvu9p-flga2104-2L-e',
  # -Probe : also compile the TB's INTERNAL gate-level probe (-d
  # SNOW_NETLIST_PROBE_INT: `phase`, `lat_bpass`, the FSM registers).  It is off
  # by default because those names are synthesis-dependent -- `wire phase` is
  # absent from the ROTATED d3 netlist (32 slots = a power of two, the phase
  # counter folds into the address bits) and referencing it makes xelab fail
  # with VRFC 10-2991.  The port-only probe is always on and never fails.
  [switch] $Probe,
  # -Noise : the localuf noise model (D14's extra column; P2).  It goes into the
  # tag AND into the pinned graph name -- a circuit-level run compiles a
  # different graph (rotated d3: 35 -> 55 edges, 6 -> 12 direction ports) and the
  # `graphs/<code>_d<d>.svh` cache is keyed by (code,d) only, which is exactly
  # the trap that made the first circuit-level synthesis run fail with
  # `Synth 8-524` (report 6.30).
  [string] $Noise  = 'phenomenological',
  # -ExtraDefs : extra Verilog defines on top of `SNOW_NETLIST` (`;`- or
  # `,`-separated), e.g. `SNOW_BUSYREG`.  A suffix keeps a define variant from
  # overwriting the baseline's evidence files.
  [string] $ExtraDefs = ''
)
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Ws   = Split-Path -Parent $Flow
$Repo = Join-Path $Ws 'Helios_scalable_QEC-main\Helios_scalable_QEC-main'
$Bin  = 'D:\ycz\vivado\Vivado\2020.2\bin'
$Run  = Join-Path $Flow 'netlist_lat1'
New-Item -ItemType Directory -Force -Path $Run, (Join-Path $Flow 'logs') | Out-Null

$tagPrefix = 'lat1_'
if ($Noise -ne 'phenomenological') { $tagPrefix = 'lat1_cl_' }
$tag = "${tagPrefix}${Code}_d${D}_s${Slices}_netlist"
$defSuffix = ''
if ($ExtraDefs) {
  $defSuffix = '_' + (($ExtraDefs -replace '[^A-Za-z0-9]+', '_').Trim('_').ToLower())
  $tag = "${tagPrefix}${Code}_d${D}_s${Slices}${defSuffix}_netlist"
}
if ($Pattern -ne 'std') { $tag = "${tagPrefix}${Code}_d${D}_s${Slices}_${Pattern}_netlist" }
Write-Host "=== [0/4] headers for $Code d=$D n=$Slices noise=$Noise ==="
Push-Location (Join-Path $Repo 'build_scripts')
python generate_snowflake.py --code $Code --d $D --dirs $Dirs --noise $Noise | Out-Null
Pop-Location
python (Join-Path $Flow 'make_lattice_sim.py') --code $Code --d $D --slices $Slices --dirs $Dirs --noise $Noise | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "[net] lattice generator FAILED"; exit 1 }
# the header the array includes must be this config, or the netlist is of a
# different graph (the same trap synth_lattice1.ps1 guards against)
$hdr = (Get-Content (Join-Path $Repo 'design\generated\snowflake_lattice.svh') -TotalCount 6) -join ' '
$codeWord = switch ($Code) { 'rep' { 'repetition' } 'surface' { 'surface' } default { $Code } }
if ($hdr -notmatch ('\b' + [regex]::Escape($codeWord) + '\s+d=' + $D + '\b') -or
    $hdr -notmatch ('\b' + $Slices + ' slices\b')) {
  Write-Host "[net] ABORT: lattice header is not $Code d=$D n=$Slices"; Write-Host "      $hdr"; exit 1
}
# pin the graph the way the other lattice flows do (noise belongs in the name:
# the cache used to be `graphs/<code>_d<d>.svh`, which is how a circuit-level run
# once compiled a phenomenological header -- report 6.30)
$graph = Join-Path $Flow ("graphs\{0}_d{1}_{2}.svh" -f $Code, $D, $Noise)
New-Item -ItemType Directory -Force -Path (Join-Path $Flow 'graphs') | Out-Null
Copy-Item (Join-Path $Repo "design\generated\snowflake_graph_${Code}_d${D}.svh") $graph -Force

Write-Host "=== [1/4] synth -> functional netlist ==="
$env:FLOW_REPO  = $Repo
$env:FLOW_TOP   = 'snowflake_pe_array_lat1'
$env:FLOW_SRCS  = @(
  (Join-Path $Repo 'design\snowflake\snowflake_pe.sv'),
  (Join-Path $Repo 'design\snowflake\snowflake_edge.sv'),
  (Join-Path $Repo 'design\snowflake\snowflake_pe_array_lat1.sv')
) -join ';'
$env:FLOW_DEFS  = 'SNOW_LATTICE;SNOW_LAT' + $(if ($ExtraDefs) { ';' + ($ExtraDefs -replace ',', ';') } else { '' })
$env:FLOW_GRAPH = $graph
$env:FLOW_PART  = $Part
$env:FLOW_TAG   = $tag
$env:FLOW_OUT   = (Join-Path $Flow 'logs')
$synthLog = Join-Path $Flow "logs\netlist_synth_$tag.log"
cmd /c "`"$Bin\vivado.bat`" -mode batch -source `"$Flow\netlist_synth.tcl`" -nojournal -nolog > `"$synthLog`" 2>&1"
$netlist = Join-Path $Flow "logs\netlist_$tag.v"
if (-not (Test-Path $netlist)) { Write-Host "[net] FAIL: no netlist ($synthLog)"; exit 1 }
$md = (Select-String -Path $synthLog -Pattern 'Synth 8-6859' -AllMatches).Count
$md2 = (Select-String -Path $synthLog -Pattern 'Synth 8-6858' -AllMatches).Count
Write-Host "[net] netlist written; 8-6859=$md 8-6858=$md2"

Write-Host "=== [2/4] xvlog (netlist + lattice TB) ==="
Push-Location $Run
Remove-Item xsim.dir -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item rtl_trace.txt -ErrorAction SilentlyContinue
$tb = Join-Path $Repo 'test_benches\snowflake\tb_snowflake_pe_array_lat1.sv'
$patDefs = @()
if ($Pattern -ne 'std') { $patDefs = @('-d', 'SNOW_SEAM_PAT') }
if ($Probe)            { $patDefs += @('-d', 'SNOW_NETLIST_PROBE_INT') }
if ($ExtraDefs) { foreach ($x in ($ExtraDefs -split '[;,]')) { if ($x) { $patDefs += @('-d', $x.Trim()) } } }
& (Join-Path $Bin 'xvlog.bat') -sv -d SNOW_NETLIST @patDefs $netlist $tb *>> (Join-Path $Flow "logs\netlist_xvlog_$tag.log")
if ($LASTEXITCODE -ne 0) { Write-Host "[net] xvlog FAILED"; Pop-Location; exit 1 }

Write-Host "=== [3/4] xelab / xsim ==="
& (Join-Path $Bin 'xelab.bat') tb_snowflake_pe_array_lat1 glbl -s tb_net_lat1 `
    -L unisims_ver -L secureip --debug typical --timescale 1ns/1ps *>> (Join-Path $Flow "logs\netlist_xelab_$tag.log")
if ($LASTEXITCODE -ne 0) { Write-Host "[net] xelab FAILED"; Pop-Location; exit 1 }
# xsim mangles a backslash path passed to -t (`D:\a\b` arrives as `D:ab`), so
# the batch script is written next to the working directory and named relately.
@('run all', 'quit') | Set-Content -Encoding ASCII (Join-Path $Run 'sim_run.tcl')
& (Join-Path $Bin 'xsim.bat') tb_net_lat1 -t sim_run.tcl *>> (Join-Path $Flow "logs\netlist_xsim_$tag.log")
Pop-Location
$trace = Join-Path $Run 'rtl_trace.txt'
if (-not (Test-Path $trace)) { Write-Host "[net] FAIL: no trace"; exit 1 }

Write-Host "=== [4/4] compare with the golden ==="
$golden = Join-Path $Run "golden_$tag.txt"
$patArgs = @()
if ($Pattern -ne 'std') { $patArgs = @('--pattern', $Pattern) }
python (Join-Path $Ws 'snowflake_sim\ref\gen_golden.py') --code $Code --d $D --schedule 2:1 `
       @patArgs --noise $Noise --out $golden | Out-Null
$verdict = python (Join-Path $Ws 'snowflake_sim\ref\compare_trace.py') $golden $trace 2>&1 |
           Select-String -Pattern 'REGRESS_VERDICT' | Select-Object -Last 1
Write-Host ("[net] {0,-34} {1}" -f $tag, $(if ($verdict) { $verdict.Line } else { 'NO VERDICT' }))
if ($verdict -and $verdict.Line -match 'PASS') {
  Copy-Item $trace (Join-Path $Flow "evidence\PASS_$tag`_rtl.txt") -Force
  Copy-Item $golden (Join-Path $Flow "evidence\golden_$tag.txt") -Force
  exit 0
}
exit 1
