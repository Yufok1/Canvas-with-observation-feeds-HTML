@echo off
title CANVAS SURVEILLANCE SYSTEM
color 0A
cd /d "%~dp0"

echo.
echo ========================================
echo    CANVAS SURVEILLANCE SYSTEM
echo ========================================
echo.

python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Python not installed!
    echo Please install Python from python.org
    pause
    exit
)

echo [OK] Python found
echo [..] Starting server on port 8080

for /f "tokens=5" %%a in ('netstat -aon ^| findstr :8080') do (
    taskkill /F /PID %%a >nul 2>&1
)

start /B cmd /c "cd /d %~dp0 && python -m http.server 8080"
timeout /t 3 /nobreak >nul

echo [OK] Server started
echo.
echo ========================================
echo    OPENING SYSTEMS
echo ========================================
echo.

echo [1] Opening CANVAS...
start http://localhost:8080/canvas-with-observation-feeds.html
timeout /t 2 /nobreak >nul

if exist "%~dp0djinn-council-shadow-governance.html" (
    echo [2] Opening DJINN COUNCIL...
    start http://localhost:8080/djinn-council-shadow-governance.html
)

echo.
echo ========================================
echo    SYSTEM ACTIVE
echo ========================================
echo.
echo Surveillance running at: http://localhost:8080
echo.
echo KEEP THIS WINDOW OPEN
echo Press any key to stop...
echo.

pause >nul

for /f "tokens=5" %%a in ('netstat -aon ^| findstr :8080') do (
    taskkill /F /PID %%a >nul 2>&1
)

echo [OK] System stopped
timeout /t 2 /nobreak >nul