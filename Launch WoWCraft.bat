@echo off
rem Starts WoWCraft without a console window.
cd /d "%~dp0"
where pyw >nul 2>nul && (start "" pyw -3 "%~dp0WoWCraft.pyw" & exit /b 0)
where pythonw >nul 2>nul && (start "" pythonw "%~dp0WoWCraft.pyw" & exit /b 0)
echo.
echo  WoWCraft needs Python 3.9 or newer, and it isn't installed on this PC.
echo.
echo  Install it from https://www.python.org/downloads/
echo  (tick "Add python.exe to PATH" during setup), or run this in a terminal:
echo      winget install Python.Python.3.12
echo.
echo  Then double-click "Launch WoWCraft" again.
echo.
pause
