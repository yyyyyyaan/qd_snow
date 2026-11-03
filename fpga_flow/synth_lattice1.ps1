#=====================================================================
# synth_lattice1.ps1 -- synthesize the MERGED shared-lattice array
# (snowflake_pe_array_lat1.sv: ONE datapath per slot, two-pass merging).
#
# Mirror of synth_lattice.ps1 with a different top / source list and a `lat1_`
# tag prefix, so its rows cannot be confused with the copy-version lattice's.
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File synth_lattice1.ps1 `
#       -Code surface -D 3 -Slices 2
#
# The same VERIFY step is kept and is still not optional: the lattice header on
# disk must belong to the requested config before any area number is believed.
#=====================================================================
param(
  [string] $Code    = 'rep',
  [int]    $D       = 3,
  [int]    $Slices  = 2,
  # -Dirs : 'all' (default) emits every direction name the code defines, 'used'
  # only those an edge actually uses.  The UNROTATED phenomenological graph uses
  # 6 of its 12 names, so `-Dirs used` is the ablation that decides whether the
  # rotated column's area win comes from its 6-port PE or from its smaller slot
  # count (report 6.31).  The direction set now goes into the TAG and into the
  # pinned graph name, like the slice count and the noise model: a `used` row and
  # an `all` row of the same (code,d) are different graphs and used to be able to
  # overwrite each other (report 6.15 note, defect list in 6.20).
  [string] $Dirs    = 'all',
  [string] $Part    = 'xcvu9p-flga2104-2L-e',
  [string] $Period  = '5.0',
  [string] $Mode    = 'synth',
  # -Pad K : the FOLDING EXPERIMENT (report 6.28).  K = 1 is the default and is
  # the verified configuration -- `make_lattice_sim.py --pad 1` is byte-identical
  # to the previous generator, so this parameter changes nothing at its default.
  # K > 1 multiplies the spatial box by K and marks every added slot
  # `*_VALID = 0` in every context; the run then goes to its own TAG so it can
  # never overwrite the baseline rows and reports of the same config.
  [int]    $Pad     = 1,
  # -Noise : the localuf noise model (report 6.29 / D14).  'phenomenological' is
  # the default and the verified baseline; 'circuit-level' is the extra column.
  # The two must NEVER share a tag: they are different graphs with different
  # tables, so the noise model goes into the tag prefix as well (the same reason
  # -Pad does).
  [string] $Noise   = 'phenomenological',
  # -Flatten : passed straight through to `synth_design -flatten_hierarchy`
  # ('none' default | 'full' | 'rebuilt').  Only used to attack the ELABORATION
  # memory wall: `snowflake_pe.sv` `include`s the generated lattice table, so
  # every one of the NSLOT+ESLOT instances elaborates it, and the peak grows
  # ~25-38 MB per instance (rotated d3 58 inst -> 1.45 GB, rotated d5 219 ->
  # 5.45 GB, surface d5 273 -> 10.4 GB, rotated d7 548 -> >13.2 GB, which is
  # where this 16 GB machine stops).  The flatten mode is part of the TAG.
  [string] $Flatten = 'none',
  # -Rev : a version marker for the TAG, used when the RTL itself changed and the
  # new rows must not collide with (nor overwrite) the rows measured on the
  # previous RTL.  Empty default = the historical tag, byte for byte.  `sweep.ps1`
  # SKIPS a tag that already has a row, so without this a re-measurement after an
  # RTL fix would silently be a no-op (the fix in question: the
  # `SNOW_PTR_DOWN_MASK` unrooting repair, report 6.32).
  [string] $Rev = '',
  # -ExtraDefs : extra Verilog defines appended to the array's own
  # `SNOW_LATTICE;SNOW_LAT` (`;`- or `,`-separated).  The layout markers
  # `SNOW_KEEPHIER`, `SNOW_PB<n>` and `SNOW_PBONE<n>` are consumed by `sweep.ps1`
  # -> `run_ooc.tcl`.  Defines are NOT part of `sweep.ps1`'s tag, so give such a
  # run a `-Rev` marker too or its row will collide with the baseline's.
  #
  # ⚠️ THE PARAMETER MUST NOT BE CALLED `$Defs`: PowerShell variable names are
  # case-INSENSITIVE, so `$Defs` and the local `$defs` below are the SAME
  # variable -- assigning the base list to `$defs` overwrites the parameter, and
  # the first version of this knob silently produced
  # `SNOW_LATTICE;SNOW_LAT;SNOW_LATTICE;SNOW_LAT` with no marker at all (so the
  # pblock experiment ran as an unconstrained baseline, bit-identical numbers and
  # all).  `sweep.ps1` carries the same warning for the same reason.
  [string] $ExtraDefs = ''
)
$ErrorActionPreference = 'Continue'
$Flow = $PSScriptRoot
$Ws   = Split-Path -Parent $Flow
$Repo = Join-Path $Ws 'Helios_scalable_QEC-main\Helios_scalable_QEC-main'
$Lat  = Join-Path $Repo 'design\generated\snowflake_lattice.svh'
$Gra  = Join-Path $Repo 'design\generated\snowflake_graph.svh'

Push-Location (Join-Path $Repo 'build_scripts')
python generate_snowflake.py --code $Code --d $D --dirs $Dirs --noise $Noise | Out-Null
Pop-Location

python (Join-Path $Flow 'make_lattice_sim.py') --code $Code --d $D `
        --slices $Slices --dirs $Dirs --pad $Pad --noise $Noise
if ($LASTEXITCODE -ne 0) { Write-Host "[lat1] lattice generator FAILED"; exit 1 }

$codeWord = switch ($Code) {
  'rep'     { 'repetition' }
  'surface' { 'surface' }
  default   { $Code }
}
$hdr = (Get-Content $Lat -TotalCount 6) -join ' '
if ($hdr -notmatch ('\b' + [regex]::Escape($codeWord) + '\s+d=' + $D + '\b')) {
  Write-Host "[lat1] ABORT: lattice header is not $Code ($codeWord) d=$D"
  Write-Host "       $hdr"
  exit 1
}
if ($hdr -notmatch ('\b' + $Slices + ' slices\b')) {
  Write-Host "[lat1] ABORT: lattice header is not n=$Slices"
  Write-Host "       $hdr"
  exit 1
}
$latline = (Select-String -Path $Lat -Pattern 'NSLOT=\d+ node slots' | Select-Object -First 1).Line.Trim()
Write-Host ("[lat1] header OK for {0} d={1} n={2}" -f $Code, $D, $Slices)
Write-Host ("       {0}" -f $latline)

# The PINNED graph header must belong to the same noise model as the lattice
# tables.  `sweep.ps1` names its cache `graphs/<code>_d<d>.svh`, i.e. keyed by
# (code, d) only -- so a circuit-level run found the PHENOMENOLOGICAL header
# cached by the earlier run and compiled it against circuit-level lattice tables.
# The two disagree about the graph (directions, edge map, addresses), which shows
# up as `Synth 8-524 part-select out of range of prefix 'bview'`.  Pin it here,
# where the noise model is known.
#
# The pin must also be CURRENT, not just present: a cached header outlives a
# change in what the generator emits, and the mismatch is silent until synthesis
# dies.  That is exactly what happened after the SNOW_PTR_DOWN_MASK repair
# (report 6.32): `snowflake_pe.sv` asked for the new parameter and the pinned
# header predated it -> `[Synth 8-1031] SNOW_PTR_DOWN_MASK is not declared`.
# The generator writes `// SNOW_GRAPH_FORMAT <n>`; a pin with a different (or
# missing) marker is regenerated.  BUMP GRAPH_FORMAT IN
# `build_scripts/generate_snowflake.py` AND THE NUMBER BELOW TOGETHER.
$graphFormat = 3
$graphFile = Join-Path $Flow ("graphs\{0}_d{1}_{2}{3}.svh" -f $Code, $D, $Noise,
                              $(if ($Dirs -eq 'all') { '' } else { '_' + $Dirs }))
$regen = -not (Test-Path $graphFile)
if (-not $regen) {
  $mark = Select-String -Path $graphFile -Pattern '^// SNOW_GRAPH_FORMAT (\d+)' |
          Select-Object -First 1
  if (-not $mark -or [int]$mark.Matches[0].Groups[1].Value -ne $graphFormat) {
    Write-Host ("[lat1] pinned graph header {0} has format '{1}', need {2} -- regenerating" -f `
      (Split-Path $graphFile -Leaf), $(if ($mark) { $mark.Matches[0].Groups[1].Value } else { 'none' }), $graphFormat)
    $regen = $true
  }
}
if ($regen) {
  Push-Location (Join-Path $Repo 'build_scripts')
  python generate_snowflake.py --code $Code --d $D --dirs $Dirs --noise $Noise | Out-Null
  Pop-Location
  $gen = Join-Path $Repo ("design\generated\snowflake_graph_" + $Code + "_d" + $D + ".svh")
  if (-not (Test-Path $gen)) { Write-Host "[lat1] graph generator produced no header"; exit 1 }
  Copy-Item $gen $graphFile -Force
  Write-Host ("[lat1] pinned a fresh graph header: {0} (noise {1}, format {2})" -f `
    (Split-Path $graphFile -Leaf), $Noise, $graphFormat)
} else {
  Write-Host ("[lat1] reusing pinned graph header: {0}" -f (Split-Path $graphFile -Leaf))
}

$dlist = @('SNOW_LATTICE', 'SNOW_LAT')
if ($ExtraDefs) { $dlist += ($ExtraDefs -split '[;,]' | Where-Object { $_ }) }
$defs = ($dlist -join ';')
$jobs = Join-Path $Flow ("jobs_lattice1_{0}_d{1}_s{2}.txt" -f $Code, $D, $Slices)
@(
  "# generated by synth_lattice1.ps1 -- MERGED array, one config only.",
  ("{0} {1} 2:1 {2} {3} {4}" -f $Code, $D, $Part, $Period, $defs)
) | Set-Content -Encoding ASCII $jobs

$srcs = @(
  (Join-Path $Repo 'design\snowflake\snowflake_pe.sv'),
  (Join-Path $Repo 'design\snowflake\snowflake_edge.sv'),
  (Join-Path $Repo 'design\snowflake\snowflake_pe_array_lat1.sv')
) -join ';'

# The pad factor belongs in the TAG: `lat1_rep_d3_...` stays the verified
# baseline and every experiment lands beside it (`lat1_pad2_rep_d3_...`), in its
# own log, its own reports, its own checkpoint and its own summary row.
$tagPrefix = 'lat1_'
if ($Pad -ne 1) {
  $tagPrefix = "lat1_pad{0}_" -f $Pad
}
if ($Noise -ne 'phenomenological') {
  $tagPrefix = $tagPrefix -replace '^lat1_', 'lat1_cl_'
}
if ($Dirs -ne 'all') {
  $tagPrefix = $tagPrefix -replace '^lat1_', ("lat1_{0}_" -f $Dirs)
}
if ($Flatten -ne 'none') {
  $tagPrefix = $tagPrefix -replace '^lat1_', ("lat1_f{0}_" -f $Flatten)
}
if ($Rev -ne '') {
  $tagPrefix = $tagPrefix -replace '^lat1_', ("lat1_{0}_" -f $Rev)
}
if ($Pad -ne 1 -or $Noise -ne 'phenomenological' -or $Dirs -ne 'all' -or $Flatten -ne 'none' -or $Rev -ne '') {
  Write-Host ("[lat1] knobs: pad x{0}, noise {1}, dirs {2}, flatten {3}, rev {4} -- tags are '{5}*'" -f `
    $Pad, $Noise, $Dirs, $Flatten, $Rev, $tagPrefix)
}

& (Join-Path $Flow 'sweep.ps1') -JobsFile $jobs -Mode $Mode `
    -Top snowflake_pe_array_lat1 -Srcs $srcs -Slices $Slices -TagPrefix $tagPrefix `
    -Graph $graphFile -Flatten $Flatten

