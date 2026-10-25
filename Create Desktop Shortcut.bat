@echo off
rem Puts a "WoWCraft" shortcut on your desktop (run once).
cd /d "%~dp0"
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$d=[Environment]::GetFolderPath('Desktop'); $s=(New-Object -ComObject WScript.Shell).CreateShortcut((Join-Path $d 'WoWCraft.lnk'));" ^
  "$s.TargetPath='%~dp0Launch WoWCraft.bat'; $s.WorkingDirectory='%~dp0'; $s.IconLocation='%~dp0wowcraft\wowcraft.ico'; $s.WindowStyle=7; $s.Description='WoW Forever talent and stat theorycrafter'; $s.Save()"
if errorlevel 1 (
  echo Couldn't create the shortcut. You can still start WoWCraft with "Launch WoWCraft.bat".
) else (
  echo Done. WoWCraft is on your desktop.
)
pause
