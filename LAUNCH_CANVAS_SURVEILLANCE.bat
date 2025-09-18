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
echo  ============================================
echo  API KEY CONFIGURATION
echo  ============================================
echo.
echo  For Turbo Mode (cloud AI models), you need an Ollama Turbo API key.
echo  You can skip this if you only plan to use Local Mode.
echo.
set /p "api_key=Enter your Ollama Turbo API key (or press Enter to skip): "
if not "%api_key%"=="" (
    set OLLAMA_TURBO_API_KEY=%api_key%
    echo  [OK] API key configured for this session
) else (
    echo  [INFO] No API key provided - Turbo mode will be unavailable
)
echo.
echo  Starting Servers:
echo  - Web Server on port 8080
if not "%OLLAMA_TURBO_API_KEY%"=="" (
    echo  - Turbo Proxy on port 11435 (with secure API key)
) else (
    echo  - Turbo Proxy SKIPPED (no API key provided)
)
echo.
echo  Opening Browser Windows:
echo  - Canvas Interface (integrated mode)
echo  - DJINN Council Surveillance
echo.
echo  =============================================================================
echo  SYSTEM ACTIVATION SEQUENCE
echo  =============================================================================
echo.

REM Start Turbo Proxy Server in background only if API key provided
if not "%OLLAMA_TURBO_API_KEY%"=="" (
    echo  [STARTING] Turbo proxy server with API key...
    start /min py ollama-turbo-proxy.py
) else (
    echo  [SKIPPED] Turbo proxy server (no API key provided)
)

REM Start Web Server in background
echo  [STARTING] Web server on port 8080...
start /min py -m http.server 8080

REM Wait for servers to start
timeout /t 3 /nobreak >nul

REM Open Canvas interface (integrated mode)
start http://localhost:8080/canvas-with-observation-feeds.html?mode=council_integrated

REM Wait a moment then open DJINN Council
timeout /t 2 /nobreak >nul
start http://localhost:8080/djinn-council-shadow-governance.html

if not "%OLLAMA_TURBO_API_KEY%"=="" (
    echo  [OK] Turbo proxy server started with secure API key!
) else (
    echo  [INFO] Turbo proxy skipped - using Local mode only
)
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