#=====================================================================
# run_helios_scale.ps1 -- synthesise the ORIGINAL Helios single-FPGA decoder at
# several code distances, so the per-PE area can be plotted against lattice
# size (the paper's d=21 number is 92 LUT/node; the repository default 5x4x5
# instantiation gave 276.7 LUT/PE, which includes its interconnect and the
# fixed stage-controller overhead that only amortises at larger d).
#
#   powershell -NoProfile -ExecutionPolicy Bypass -File run_helios_scale.ps1
#   powershell ... -File run_helios_scale.ps1 -Points '7:6;9:8' -IncludeBase
#
# How the parameters are set: the top module has Verilog parameters, and the
# non-project flow has no clean parameter override for Verilog, so the scratch
# copy's default values are patched before each run (fpga_flow/helios_baseline
# is our own copy, the shipped repository is never touched).
# ASCII only.
#=====================================================================
param(
  [string] $Points     = '7:6;9:8',
  [switch] $IncludeBase,           # also re-run the 5:4 base point
  [string] $Csv        = ''
)
$Flow      = 'D:\ycz\doc\deepseek_workzone\decoder\fpga_flow'
$Repo      = Join-Path $Flow 'helios_baseline'
$VivadoBin = 'D:\ycz\vivado\Vivado\2020.2\bin'
$LogDir    = Join-Path $Flow 'logs'
$TopFile   = Join-Path $Repo 'design\wrappers\standard_planar_code_2d_no_fast_channel_synthesizable_top.sv'
if (-not $Csv) { $Csv = Join-Path $Flow 'helios_scale.csv' }
if (-not (Test-Path $Csv)) { 'dx,dz,rounds,pe_count,lut,ff,lutram,bram,dsp,wns,peak_mb,minutes' |
  Set-Content -Encoding ASCII $Csv }

$list = @()
if ($IncludeBase) { $list += , @{ x = 5; z = 4 } }
foreach ($p in ($Points -split '[;,\s]+' | Where-Object { $_ -ne '' })) {
  $b = $p.Split(':')
  $list += , @{ x = [int]$b[0]; z = [int]$b[1] }
}

$orig = Get-Content $TopFile -Raw
foreach ($pt in $list) {
  $x = $pt.x; $z = $pt.z
  $rounds = [Math]::Max($x, $z)
  $pes = $x * $z * $rounds
  $tag = "helios_${x}x${z}_${pes}pe"
  Write-Host ("[run ] Helios $x x $z, $rounds rounds -> $pes PEs")

  # patch the parameter defaults of the scratch copy
  $t = $orig -replace 'parameter CODE_DISTANCE_X = \d+', "parameter CODE_DISTANCE_X = $x"
  $t = $t -replace 'parameter CODE_DISTANCE_Z = \d+', "parameter CODE_DISTANCE_Z = $z"
  Set-Content -Path $TopFile -Value $t -Encoding ASCII -NoNewline

  $env:HELIOS_TAG = $tag
  $sw = [Diagnostics.Stopwatch]::StartNew()
  cmd /c "`"$VivadoBin\vivado.bat`" -mode batch -source $Flow\synth_helios_baseline.tcl -nojournal -nolog > `"$LogDir\helios_$tag.log`" 2>&1"
  $sw.Stop()

  $line = (Select-String -Path "$LogDir\helios_$tag.log" -Pattern '^HELIOS_RESULT' | Select-Object -Last 1).Line
  if (-not $line) {
    Write-Host "[FAIL] $tag (see logs\helios_$tag.log)"
    "$x,$z,$rounds,$pes,FAIL,FAIL,FAIL,FAIL,FAIL,FAIL,FAIL,$([math]::Round($sw.Elapsed.TotalMinutes,1))" |
      Add-Content -Encoding ASCII $Csv
    continue
  }
  function Fld([string]$s, [string]$k) { $m = [regex]::Match($s, "$k=([^\s]*)"); if ($m.Success) { $m.Groups[1].Value } else { 'NA' } }
  $peak = 'NA'
  $mp = Select-String -Path "$LogDir\helios_$tag.log" -Pattern 'peak = ([0-9.]+)' | Select-Object -Last 1
  if ($mp) { $peak = [math]::Round([double]$mp.Matches[0].Groups[1].Value, 1) }
  "$x,$z,$rounds,$pes,$(Fld $line 'lut'),$(Fld $line 'ff'),$(Fld $line 'lutram'),$(Fld $line 'bram'),$(Fld $line 'dsp'),$(Fld $line 'wns'),$peak,$([math]::Round($sw.Elapsed.TotalMinutes,1))" |
    Add-Content -Encoding ASCII $Csv
  Write-Host ("[done] {0}  lut={1} ff={2} lutram={3} wns={4}  ({5:n1} min)" -f `
    $tag, (Fld $line 'lut'), (Fld $line 'ff'), (Fld $line 'lutram'), (Fld $line 'wns'), $sw.Elapsed.TotalMinutes)
}
# restore the shipped defaults in the scratch copy
Set-Content -Path $TopFile -Value $orig -Encoding ASCII -NoNewline
Write-Host "Helios scale sweep finished -> $Csv"
