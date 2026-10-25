@echo off
rem Optional: installs pywebview so WoWCraft opens in its own app window instead of your browser.
cd /d "%~dp0"
where py >nul 2>nul && (py -3 -m pip install --user --upgrade -r requirements.txt) || (python -m pip install --user --upgrade -r requirements.txt)
echo.
echo If that finished without errors, WoWCraft will now open in its own window.
pause
