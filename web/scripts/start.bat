@echo off
setlocal

echo [*] Starting MHDDoS Web Panel...

rem Run from the web directory (this script lives in web\scripts).
cd /d "%~dp0.."

if not exist "node_modules" (
    echo [!] Dependencies not installed. Please run web\scripts\install.bat first.
    exit /b 1
)

echo [*] Starting Panel on http://0.0.0.0:5000 (LAN accessible)
set "PATH=%CD%\..\.venv\Scripts;%PATH%"
npm start
