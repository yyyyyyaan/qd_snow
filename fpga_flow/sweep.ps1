#=====================================================================
# sweep.ps1 -- serial sweep driver for the Snowflake-on-Helios FPGA flow.
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File sweep.ps1 -JobsFile jobs.txt
#
# Job list: one job per line, whitespace separated
#     <code> <d> <schedule> <part> <period_ns> [extra_defs]
# '#' starts a comment.  Reading the list from a file keeps the call site
# trivial and avoids shell argument-quoting problems.
#
# Why serial: every snowflake run pins design/generated/snowflake_graph.svh,
# so two concurrent Vivado processes would corrupt each other's graph.
# ASCII only (cmd / console encoding).
#=====================================================================
param(
  [string] $JobsFile  = '',
  [string] $Mode      = 'impl',        # impl | synth
  [string] $Top       = 'snowflake_core',
  [string] $Srcs      = '',            # ';' separated; default = snowflake_core.sv
  [string] $ExtraDefs = '',            # extra defines; SNOW_ONE_ONE is added for 1:1
  [string] $Graph     = '',            # pinned graph header (skips generation)
  # TagPrefix exists so a DIFFERENT TOP (the merged lattice array) cannot write
  # its rows over the copy-version lattice's.  It used to be declared on the
  # `$Graph` comment line above -- i.e. inside a comment -- so PowerShell never
  # bound it: `-TagPrefix lat1_` was silently collected into $args and the tag
  # came out byte-identical to the copy version's.  Same failure class as the
  # missing `_s<n>` and the missing `_used`.  Do not move it back onto a line
  # that has a comment.
  [string] $TagPrefix = '',
  [string] $Csv       = '',
  [string] $Flatten   = 'none',        # none | full | rebuilt (PE array runs want both)
  [int]    $Slices    = 2,             # used only when a job's defs contain SNOW_SLICED
  [string] $Seam      = '',            # pinned seam header (skips generation)
  [switch] $SkipExisting,
  [switch] $DryRun
)

$Repo      = 'D:\ycz\doc\deepseek_workzone\decoder\Helios_scalable_QEC-main\Helios_scalable_QEC-main'
$Flow      = 'D:\ycz\doc\deepseek_workzone\decoder\fpga_flow'
$VivadoBin = 'D:\ycz\vivado\Vivado\2020.2\bin'
$GraphDir  = Join-Path $Flow 'graphs'
$LogDir    = Join-Path $Flow 'logs'
if (-not $JobsFile) { $JobsFile = Join-Path $Flow 'jobs.txt' }
New-Item -ItemType Directory -Force -Path $GraphDir, $LogDir | Out-Null

if (-not $Csv) { $Csv = Join-Path $Flow ("summary_{0}.csv" -f $Mode) }
if (-not (Test-Path $Csv)) {
  'tag,code,d,schedule,top,part,period,mode,wns,levels,min_period,fmax_mhz,lut,ff,lutram,bram,uram,dsp,log' |
    Set-Content -Encoding ASCII $Csv
}

function Get-Field([string]$line, [string]$key) {
  $m = [regex]::Match($line, "$key=([^\s]*)")
  if ($m.Success) { return $m.Groups[1].Value }
  return 'NA'
}

$jobs = @()
foreach ($raw in (Get-Content -Path $JobsFile)) {
  $line = $raw.Trim()
  if ($line -eq '' -or $line.StartsWith('#')) { continue }
  $f = @($line -split '\s+' | Where-Object { $_ -ne '' })
  if ($f.Count -lt 5) { Write-Host "[warn] bad job line: $raw"; continue }
  $extra = ''
  if ($f.Count -gt 5) { $extra = $f[5] }
  # optional 7th field: top-level parameter overrides ("NCTX=8" or
  # "NCTX=8,DIRECT..."), comma separated because a job line has no spaces
  $gens = ''
  if ($f.Count -gt 6) { $gens = $f[6] }
  $jobs += , @{ code = $f[0]; d = $f[1]; sched = $f[2]; part = $f[3]; period = $f[4]; defs = $extra; gens = $gens }
}
Write-Host ("[jobs] {0} job(s) from {1}" -f $jobs.Count, $JobsFile)
if ($jobs.Count -eq 0) { Write-Host '[warn] nothing to do'; exit 0 }

foreach ($job in $jobs) {
  $code = $job.code
  $d = $job.d
  $sched = $job.sched
  $part = $job.part
  $period = $job.period
  $partShort = $part.Split('-')[0]
  $stag = '2to1'
  if ($sched -eq '1:1') { $stag = '1to1' }
  # variant suffix so ablation / pipelining / context-switch builds do not
  # overwrite the baseline artifacts of the same code:d:schedule
  $vmap = @{ 'SNOW_NO_OBS' = 'noobs'; 'SNOW_ABLATE_MERGE' = 'ablmerge';
             'SNOW_PIPE_SPLIT' = 'split'; 'SNOW_NCTX2' = 'nctx2'; 'SNOW_NCTX4' = 'nctx4';
             'SNOW_CTX1' = 'nctx1'; 'SNOW_CTX2' = 'nctx2'; 'SNOW_M3LOC' = 'm3loc';
             'SNOW_KEEP_STATE' = 'keep'; 'SNOW_PEARRAY' = 'pearray' }
  $suffix = ''
  if ($job.defs) {
    foreach ($tok in @($job.defs -split '[;,\s]+' | Where-Object { $_ -ne '' })) {
      $key = $tok.ToUpper()
      if ($vmap.ContainsKey($key)) { $suffix += "_" + $vmap[$key] }
      else {
        $s = ($tok -replace '^SNOW_', '') -replace '[^A-Za-z0-9]', ''
        $s = $s.ToLower()
        if ($s.Length -gt 8) { $s = $s.Substring(0, 8) }
        if ($s) { $suffix += "_" + $s }
      }
    }
  }
  $tag = $TagPrefix + $code + "_d" + $d + "_" + $stag + $suffix + "_" + $partShort
  # The slice count is part of the CONFIG and therefore part of the tag: without
  # it an n-sweep overwrites its own artifacts row by row (the CSV keeps only the
  # last run's numbers and the earlier logs are gone -- measured while sweeping
  # the shared lattice over n=2/3/5).  Same class as the missing `_used` for
  # `--dirs used`.  n=2 keeps the historical tag so old rows stay addressable.
  if ($Slices -ne 2) { $tag += "_s" + $Slices }
  if ($job.gens) {
    foreach ($g in @($job.gens -split '[;,]' | Where-Object { $_ -ne '' })) {
      $tag += "_" + (($g -replace '[^A-Za-z0-9]', '').ToLower())
    }
  }
  if ($Flatten -ne 'none') { $tag += "_f" + $Flatten }
  # period sweep runs must not overwrite the 5 ns baseline artifacts
  if ([double]$period -ne 5.0) { $tag += "_p" + ($period -replace '\.', 'p') }
  if ($DryRun) { Write-Host ("[dry ] {0}  schedule={1} defs=[{2}]" -f $tag, $sched, $job.defs); continue }
  $log = Join-Path $LogDir ("flow_" + $Mode + "_" + $tag + ".log")

  if ($SkipExisting -and (Test-Path $log)) {
    if (Select-String -Path $log -Pattern '^FLOW_RESULT' -Quiet) {
      Write-Host "[skip] $tag (already done)"
      continue
    }
  }

  if ($Graph) {
    $graphFile = $Graph
  } else {
    $graphFile = Join-Path $GraphDir ($code + "_d" + $d + ".svh")
    if (-not (Test-Path $graphFile)) {
      python "$Repo\build_scripts\generate_snowflake.py" --code $code --d $d | Out-Null
      $gen = Join-Path $Repo ("design\generated\snowflake_graph_" + $code + "_d" + $d + ".svh")
      if (Test-Path $gen) { Copy-Item $gen $graphFile -Force }
      else { $graphFile = Join-Path $Repo 'design\generated\snowflake_graph.svh' }
    }
  }

  # ---- seam header for SNOW_SLICED / SNOW_SERIAL jobs -----------------------
  # snowflake_pe_array.sv `includes ../generated/snowflake_seam.svh, and
  # make_sliced_sim.py writes that file INTO THE REPO -- the same file the
  # ModelSim regressions rewrite.  Pin a per-run copy under graphs/ exactly like
  # the graph header, otherwise a regression run between two sweep jobs silently
  # changes the slice tables of the job after it.
  $seamFile = ''
  if ($job.defs -match 'SNOW_SLICED|SNOW_SERIAL') {
    $seamFile = $Seam
    if (-not $seamFile) {
      $seamFile = Join-Path $GraphDir ("seam_" + $code + "_d" + $d + "_s" + $Slices + ".svh")
      if (-not (Test-Path $seamFile)) {
        Push-Location (Join-Path $Repo 'build_scripts')
        python generate_snowflake.py --code $code --d $d --slices $Slices | Out-Null
        Pop-Location
        python (Join-Path $Flow 'make_sliced_sim.py') --code $code --d $d --slices $Slices | Out-Null
        Copy-Item (Join-Path $Repo 'design\generated\snowflake_seam.svh') $seamFile -Force
      }
    }
  }

  # NOTE: PowerShell variables are case-insensitive, so the parameter must NOT
  # be called $Defs while a local $defs exists -- that leaked SNOW_ONE_ONE from
  # a 1:1 job into every following 2:1 job (seen in the first sweep run).
  $dlist = @()
  if ($ExtraDefs) { $dlist += $ExtraDefs }
  if ($job.defs) { $dlist += $job.defs }
  if ($sched -eq '1:1') { $dlist += 'SNOW_ONE_ONE' }
  $defs = ($dlist -join ';')

  $env:FLOW_REPO   = $Repo
  $env:FLOW_TOP    = $Top
  if ($Srcs) { $env:FLOW_SRCS = $Srcs } else { $env:FLOW_SRCS = "$Repo\design\snowflake\snowflake_core.sv" }
  $env:FLOW_DEFS   = $defs
  $env:FLOW_GRAPH  = $graphFile
  $env:FLOW_SEAM   = $seamFile
  $env:FLOW_PART   = $part
  $env:FLOW_PERIOD = "$period"
  $env:FLOW_TAG    = $tag
  $env:FLOW_OUT    = $LogDir
  $env:FLOW_MODE   = $Mode
  $env:FLOW_FLATTEN = $Flatten
  $env:FLOW_GENERICS = ($job.gens -replace ',', ';')
  # layout-experiment flags carried by marker defines (consumed in run_ooc.tcl)
  $env:FLOW_KEEP_HIER = ''
  $env:FLOW_PBLOCK = ''
  # SNOW_PBONE<n>: confine every PE/edge cell to ONE compact n-clock-region block
  # (run_ooc.tcl).  The `SNOW_PB<n>` stripes measure the SEAM cost; this one
  # shrinks the placement, to ask whether the board's 82%-route critical path is
  # silicon or just a small design spread over a big die (report 6.33).
  $env:FLOW_PBLOCK_ONE = ''
  if ($job.defs) {
    if ($job.defs -match 'SNOW_KEEPHIER') { $env:FLOW_KEEP_HIER = '1' }
    if ($job.defs -match 'SNOW_PB(\d+)') { $env:FLOW_PBLOCK = $Matches[1] }
    if ($job.defs -match 'SNOW_PBONE(\d+)') { $env:FLOW_PBLOCK_ONE = $Matches[1] }
  }

  Write-Host "[run ] $tag  top=$Top part=$part period=$period mode=$Mode defs=[$defs] graph=[$graphFile]"
  $sw = [Diagnostics.Stopwatch]::StartNew()
  $line = $null
  # Vivado occasionally fails to read its own install script
  # ("couldn't read file .../retarget_vhdl.tcl: No error") -- a transient
  # environment flake, not a design error, so retry once.
  for ($attempt = 1; $attempt -le 2; $attempt++) {
    cmd /c "`"$VivadoBin\vivado.bat`" -mode batch -source $Flow\run_ooc.tcl -nojournal -nolog > `"$log`" 2>&1"
    $rc = $LASTEXITCODE
    $line = (Select-String -Path $log -Pattern '^FLOW_RESULT' | Select-Object -Last 1).Line
    if ($line) { break }
    if (Select-String -Path $log -Pattern 'retarget_vhdl|No error' -Quiet) {
      Write-Host "[retry] $tag (Vivado install-script read flake)"
      continue
    }
    break
  }
  $sw.Stop()
  if (-not $line) {
    Write-Host ("[FAIL] {0} exit={1} after {2:n1} min (see {3})" -f $tag, $rc, $sw.Elapsed.TotalMinutes, $log)
    ($tag + "," + $code + "," + $d + "," + $sched + "," + $Top + "," + $part + "," + $period + "," +
     $Mode + ",FAIL,NA,NA,NA,NA,NA,NA,NA,NA,NA," + $log) | Add-Content -Encoding ASCII $Csv
    continue
  }
  $vals = @((Get-Field $line 'wns'), (Get-Field $line 'levels'), (Get-Field $line 'min_period'),
            (Get-Field $line 'fmax_mhz'), (Get-Field $line 'lut'), (Get-Field $line 'ff'),
            (Get-Field $line 'lutram'), (Get-Field $line 'bram'), (Get-Field $line 'uram'),
            (Get-Field $line 'dsp'))
  ($tag + "," + $code + "," + $d + "," + $sched + "," + $Top + "," + $part + "," + $period + "," +
   $Mode + "," + ($vals -join ',') + "," + $log) | Add-Content -Encoding ASCII $Csv
  Write-Host ("[done] {0}  wns={1} lut={2} ff={3} fmax={4}MHz  ({5:n1} min)" -f `
    $tag, $vals[0], $vals[4], $vals[5], $vals[3], $sw.Elapsed.TotalMinutes)
}
Write-Host "sweep finished -> $Csv"
