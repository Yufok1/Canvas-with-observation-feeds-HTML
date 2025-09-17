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
echo  SURVEILLANCE SYSTEM INITIALIZATION
echo  =============================================================================
echo.
echo  Starting Servers:
echo  - Web Server on port 8080
echo  - Turbo Proxy on port 11435 (for 480B+ parameter models)
echo.
echo  Opening Browser Windows:
echo  - Canvas Interface (integrated mode)
echo  - DJINN Council Surveillance
echo.
echo  =============================================================================
echo  SYSTEM ACTIVATION SEQUENCE
echo  =============================================================================
echo.

REM Start Turbo Proxy Server in background
start /min py ollama-turbo-proxy.py

REM Start Web Server in background
start /min py -m http.server 8080

REM Wait for servers to start
timeout /t 3 /nobreak >nul

REM Open Canvas interface (integrated mode)
start http://localhost:8080/canvas-with-observation-feeds.html?mode=council_integrated

REM Wait a moment then open DJINN Council
timeout /t 2 /nobreak >nul
start http://localhost:8080/djinn-council-shadow-governance.html

echo  [OK] Turbo proxy server started!
echo  [OK] Web server started on port 8080!
echo  [OK] Canvas interface opened (integrated mode)!
echo  [OK] DJINN Council surveillance opened!
echo  [OK] AI surveillance systems active!
echo.
echo  =============================================================================
echo  SURVEILLANCE SYSTEMS ACTIVE
echo  =============================================================================
echo.
echo  Canvas Interface:     http://localhost:8080/canvas-with-observation-feeds.html
echo  DJINN Council:        http://localhost:8080/djinn-council-shadow-governance.html
echo  Server Status:        Running on port 8080
echo  Turbo Proxy:          Running on port 11435 (for 480B+ models)
echo.
echo  =============================================================================
echo  KEEP THIS WINDOW OPEN - Press any key to shutdown servers...
echo  =============================================================================

pause >nul

echo.
echo Shutting down servers...
taskkill /f /im py.exe >nul 2>&1
echo Servers stopped.
timeout /t 2 >nul