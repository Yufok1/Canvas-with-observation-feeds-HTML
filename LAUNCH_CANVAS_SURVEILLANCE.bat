@echo off
title LAUNCHER WINDOW - Canvas Surveillance System Startup
color 0A
cd /d "%~dp0"

echo.
echo   ####  #    # #####  #    # ###### # #      #        ##   #    #  ####  ######
echo  #      #    # #    # #    # #      # #      #       #  #  ##   # #    # #
echo   ####  #    # #####  #    # #####  # #      #      #    # # #  # #      #####
echo       # #    # #   #   #  #  #      # #      #      ###### #  # # #      #
echo  #    # #    # #    #   ##   #      # #      #      #    # #   ## #    # #
echo   ####   ####  #    #   ##   ###### # ###### ###### #    # #    #  ####  ######
echo.
echo                    DJINN COUNCIL DOCUMENT SURVEILLANCE
echo                        Advanced Collaborative Intelligence
echo.
echo  =============================================================================
echo  THIS WINDOW: System startup and server management
echo  - Starts Python HTTP server to serve the web interfaces
echo  - Launches browser windows for canvas and surveillance
echo  - Keep this window open to maintain server connection
echo  =============================================================================
echo.

REM Check Python
echo [1/4] Checking Python...
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python not found! Install Python from python.org
    pause
    exit
)
echo      Python found - OK

REM Kill existing server if running
echo [2/4] Checking for existing server...
netstat -an | find ":8080" >nul
if not errorlevel 1 (
    echo      Port 8080 in use - stopping existing server
    taskkill /f /im python.exe >nul 2>&1
    timeout /t 2 >nul
) else (
    echo      Port 8080 available - OK
)

REM Start server
echo [3/4] Starting HTTP server...
echo.
echo      PYTHON HTTP SERVER WINDOW:
echo      - Serves web files to your browser
echo      - Runs in background (minimized)
echo      - DO NOT CLOSE - needed for system to work
echo.
start /min python -m http.server 8080
timeout /t 3 >nul

REM Verify server started
netstat -an | find ":8080" >nul
if errorlevel 1 (
    echo ERROR: Server failed to start
    pause
    exit
)
echo      HTTP server started - OK

REM Launch browsers
echo [4/4] Opening browser windows...
echo.
echo      WINDOW 1: Main Canvas Interface
echo      - Primary creative workspace for writing and analysis
echo      - Live AI feeds provide intelligence and synthesis
echo      - Your main working environment
start http://localhost:8080/canvas-with-observation-feeds.html?mode=council_integrated
timeout /t 2 >nul

if exist "djinn-council-shadow-governance.html" (
    echo.
    echo      WINDOW 2: DJINN Council Surveillance Interface
    echo      - Advanced intelligence analysis and monitoring
    echo      - Cross-references all canvas activity and AI responses
    echo      - Chat with intelligence agent about system data
    start http://localhost:8080/djinn-council-shadow-governance.html
    echo.
    echo      Both interfaces launched - OK
) else (
    echo      Canvas interface launched - OK
)

echo.
echo  =============================================================================
echo  SURVEILLANCE SYSTEMS ACTIVE
echo  =============================================================================
echo.
echo  Canvas Interface:     http://localhost:8080/canvas-with-observation-feeds.html
echo  DJINN Council:        http://localhost:8080/djinn-council-shadow-governance.html
echo  Server Status:        Running on port 8080
echo.
echo  =============================================================================
echo  KEEP THIS WINDOW OPEN - Press any key to shutdown...
echo  =============================================================================

pause >nul

echo.
echo Shutting down server...
taskkill /f /im python.exe >nul 2>&1
echo Server stopped.
timeout /t 2 >nul