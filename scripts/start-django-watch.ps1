# Starts the Django watchdog in a hidden PowerShell window.
$ProjectRoot = 'D:\codex_study\codex_stu1_个人主页'
$WatchScript = Join-Path $ProjectRoot 'scripts\serve-django-watch.ps1'
Start-Process -FilePath 'powershell.exe' -ArgumentList '-NoProfile','-ExecutionPolicy','Bypass','-WindowStyle','Hidden','-File',$WatchScript -WorkingDirectory $ProjectRoot -WindowStyle Hidden
