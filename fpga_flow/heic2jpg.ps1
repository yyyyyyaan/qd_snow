# Convert the attached HEIC (Zynq chip photo) to JPEG/PNG via Windows WIC so the
# image tools can read it.  Uses the "Microsoft HEIF Decoder" that is installed
# on this machine (PyMuPDF/Pillow cannot decode HEIC).
param(
  [string] $In  = 'C:\Users\Admin\.dsh\attachments\v1\files\31\31447a2f8a68cbc87cbbc917ccdc371b2ff9bafa79b7cfd05a8cd9ffb86e9b9f\IMG_20260921_193712.heic',
  [string] $Out = 'D:\ycz\doc\deepseek_workzone\decoder\fpga_flow\board',
  [int]    $MaxDim = 4096
)
$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName PresentationCore
New-Item -ItemType Directory -Force -Path $Out | Out-Null

$uri = New-Object System.Uri($In)
$dec = [System.Windows.Media.Imaging.BitmapDecoder]::Create($uri, 'None', 'OnLoad')
$frame = $dec.Frames[0]
Write-Host ("source: {0} x {1}" -f $frame.PixelWidth, $frame.PixelHeight)

# full-resolution copy (JPEG q95)
$enc = New-Object System.Windows.Media.Imaging.JpegBitmapEncoder
$enc.QualityLevel = 95
$enc.Frames.Add([System.Windows.Media.Imaging.BitmapFrame]::Create($frame))
$full = Join-Path $Out 'chip_full.jpg'
$fs = [System.IO.File]::Create($full); $enc.Save($fs); $fs.Close()
Write-Host ("full   -> {0} ({1:N0} bytes)" -f $full, (Get-Item $full).Length)

# PNG copy too (lossless, for zooming)
$enc2 = New-Object System.Windows.Media.Imaging.PngBitmapEncoder
$enc2.Frames.Add([System.Windows.Media.Imaging.BitmapFrame]::Create($frame))
$png = Join-Path $Out 'chip_full.png'
$fs2 = [System.IO.File]::Create($png); $enc2.Save($fs2); $fs2.Close()
Write-Host ("png    -> {0} ({1:N0} bytes)" -f $png, (Get-Item $png).Length)
