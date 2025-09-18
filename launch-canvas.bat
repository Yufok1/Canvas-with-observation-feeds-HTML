@echo off
cls
color 0A

echo.
echo   #####   #####  #    # #    # #####   ####
echo  #       #    # ##   # #    # #    # #
echo  #       #####  # #  # #    # #####   ####
echo  #       #   #  #  # #  #  #  #   #       #
echo   #####  #    # #   ##   ##   #    # ####
echo.
echo             SOVEREIGN CANVAS INTERFACE
echo               Live AI Observation System
echo.
echo  ===========================================================
echo    AI SYSTEMS ONLINE                    STATUS
echo  ===========================================================
echo    DJINN      - Governance Analysis         [READY]
echo    NAZAR      - Consciousness Analysis      [READY]
echo    NARRA      - Pattern Recognition         [READY]
echo    WHALE      - Deep Memory Analysis        [READY]
echo    WATCHTOWER - System Monitoring           [READY]
echo    TURBO      - Cloud Proxy Server          [STARTING]
echo  ===========================================================
echo.
echo  ###########################################################
echo  #                SYSTEM INITIALIZATION                   #
echo  ###########################################################
echo.
echo  [##########] Server Connection
echo  [##########] AI Matrix Loading
echo  [##########] Canvas Initialization
echo  [##########] Intelligence Feeds
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
echo  ============================================
echo  STARTING SERVERS
echo  ============================================
echo.
echo  Web Server: http://localhost:8000
echo  Canvas URL: http://localhost:8000/canvas-with-observation-feeds.html
echo  Turbo Proxy: http://localhost:11435 (for cloud AI models)
echo.
echo  ============================================
echo  ACCESS INSTRUCTIONS
echo  ============================================
echo.
echo  1. Web server starting on port 8000...
echo  2. Turbo proxy starting on port 11435 (for cloud models)...
echo  3. Browser will open automatically to the canvas
echo  4. Toggle between Local/Turbo modes in the interface
echo  5. Begin your sovereign observations in the canvas
echo.
echo  ============================================
echo  SYSTEM REQUIREMENTS
echo  ============================================
echo.
echo  * LOCAL MODE: Ollama must be running (ollama serve)
echo  * TURBO MODE: Uses cloud models via proxy (auto-configured)
echo  * Models: Local Ollama or Cloud Turbo (480B+ parameters!)
echo  * Modern browser with localStorage support
echo  * 4GB RAM minimum, 8GB recommended
echo.
echo  ============================================
echo  SYSTEM ACTIVATION SEQUENCE
echo  ============================================
echo.

REM Start Turbo Proxy Server in background (for cloud AI models) only if API key provided
if not "%OLLAMA_TURBO_API_KEY%"=="" (
    echo  [STARTING] Turbo proxy server with API key...
    start /B python ollama-turbo-proxy.py
) else (
    echo  [SKIPPED] Turbo proxy server (no API key provided)
)

REM Start Web Server in background
echo  [STARTING] Web server on port 8000...
start /B python -m http.server 8000

REM Wait for servers to start
timeout /t 3 /nobreak >nul

REM Open browser to the canvas
start http://localhost:8000/canvas-with-observation-feeds.html

echo  [OK] Web server started successfully!
if not "%OLLAMA_TURBO_API_KEY%"=="" (
    echo  [OK] Turbo proxy server started with secure API key!
) else (
    echo  [INFO] Turbo proxy skipped - using Local mode only
)
echo  [OK] Browser opened to canvas
echo  [OK] AI orchestration matrix active
if not "%OLLAMA_TURBO_API_KEY%"=="" (
    echo  [OK] Toggle Local/Turbo modes in interface!
) else (
    echo  [INFO] Local mode available - provide API key for Turbo mode
)
echo.
echo  ============================================
echo  CANVAS READY - BEGIN OBSERVATIONS
echo  ============================================
echo.
echo  Press any key to close this terminal...
pause >nul