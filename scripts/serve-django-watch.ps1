# Keeps the local Django development server available for the personal homepage.
$ErrorActionPreference = 'SilentlyContinue'
$ProjectRoot = 'D:\codex_study\codex_stu1_个人主页'
$Python = Join-Path $ProjectRoot '.venv\Scripts\python.exe'
$OutLog = Join-Path $ProjectRoot 'django-runserver.out.log'
$ErrLog = Join-Path $ProjectRoot 'django-runserver.err.log'
$Url = 'http://127.0.0.1:8000/'

Set-Location $ProjectRoot
while ($true) {
  $ok = $false
  try {
    $response = Invoke-WebRequest -Uri $Url -UseBasicParsing -TimeoutSec 3
    $ok = ($response.StatusCode -eq 200)
  } catch {
    $ok = $false
  }

  if (-not $ok) {
    Start-Process -FilePath $Python -ArgumentList 'manage.py','runserver','127.0.0.1:8000','--noreload' -WorkingDirectory $ProjectRoot -RedirectStandardOutput $OutLog -RedirectStandardError $ErrLog -WindowStyle Hidden
    Start-Sleep -Seconds 8
  } else {
    Start-Sleep -Seconds 20
  }
}
