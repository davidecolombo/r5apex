$width=$args[0]
$height=$args[1]
. "$PSScriptRoot\Set-ScreenResolution.ps1"
Set-ScreenResolution -Width $width -Height $height
