# Crop + upscale a region of the chip photo (WIC), so the device marking can be
# read at full detail.
param(
  [string] $In  = 'D:\ycz\doc\deepseek_workzone\decoder\fpga_flow\board\chip_full.png',
  [int]    $X = 820, [int] $Y = 1820, [int] $W = 800, [int] $H = 1000,
  [double] $Scale = 2.0,
  [string] $Out = 'D:\ycz\doc\deepseek_workzone\decoder\fpga_flow\board\chip_marking.png'
)
$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName PresentationCore

$uri = New-Object System.Uri($In)
$dec = [System.Windows.Media.Imaging.BitmapDecoder]::Create($uri, 'None', 'OnLoad')
$src = $dec.Frames[0]
Write-Host ("source {0}x{1}" -f $src.PixelWidth, $src.PixelHeight)

$rect = New-Object System.Windows.Int32Rect($X, $Y, $W, $H)
$crop = New-Object System.Windows.Media.Imaging.CroppedBitmap($src, $rect)

$tw = [int]($W * $Scale); $th = [int]($H * $Scale)
$dst = New-Object System.Windows.Media.Imaging.TransformedBitmap
$dst.BeginInit()
$dst.Source = $crop
$dst.Transform = (New-Object System.Windows.Media.ScaleTransform($Scale, $Scale))
$dst.EndInit()

$enc = New-Object System.Windows.Media.Imaging.PngBitmapEncoder
$enc.Frames.Add([System.Windows.Media.Imaging.BitmapFrame]::Create($dst))
$fs = [System.IO.File]::Create($Out); $enc.Save($fs); $fs.Close()
Write-Host ("crop {0},{1} {2}x{3} x{4} -> {5} ({6:N0} bytes)" -f $X, $Y, $W, $H, $Scale, $Out, (Get-Item $Out).Length)
