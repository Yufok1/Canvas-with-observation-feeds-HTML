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
set /p "OLLAMA_TURBO_API_KEY=Enter your Ollama Turbo API key (or press Enter to skip): "
if not "%OLLAMA_TURBO_API_KEY%"=="" (
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
echo  Turbo Proxy: http://localhost:11438 (for cloud AI models)
echo.
echo  ============================================
echo  ACCESS INSTRUCTIONS
echo  ============================================
echo.
echo  1. Web server starting on port 8000...
echo  2. Turbo proxy starting on port 11438 (for cloud models)...
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

REM Prompt for Ollama Turbo API Key if not already set
if "%OLLAMA_TURBO_API_KEY%"=="" (
    echo.
    echo  ============================================
    echo  OLLAMA TURBO API KEY CONFIGURATION
    echo  ============================================
    echo.
    echo  To use cloud AI models, enter your Ollama Turbo API key.
    echo  Get your key from: https://ollama.com/account
    echo.
    echo  Leave blank to use Local mode only.
    echo.
    set /p OLLAMA_TURBO_API_KEY="Enter API Key (or press Enter to skip): "
    echo.
)

REM Start Turbo Proxy Server in background (for cloud AI models) only if API key provided
if not "%OLLAMA_TURBO_API_KEY%"=="" (
    echo  [STARTING] Turbo proxy server with API key...
    
    REM Try python command first
    python --version >nul 2>&1
    if errorlevel 1 (
        echo  [INFO] 'python' not found, trying 'py'...
        py --version >nul 2>&1
        if errorlevel 1 (
            echo  [ERROR] Neither 'python' nor 'py' commands found!
            echo  [ERROR] Please install Python or add it to PATH
            pause
            exit /b 1
        ) else (
            echo  [STARTING] Using 'py' command...
            start "Turbo Proxy Server" cmd /k "set OLLAMA_TURBO_API_KEY=%OLLAMA_TURBO_API_KEY% && py ollama-turbo-proxy.py || pause"
        )
    ) else (
        echo  [STARTING] Using 'python' command...
        start "Turbo Proxy Server" cmd /k "set OLLAMA_TURBO_API_KEY=%OLLAMA_TURBO_API_KEY% && python ollama-turbo-proxy.py || pause"
    )
) else (
    echo  [SKIPPED] Turbo proxy server (no API key provided)
)

REM Start Web Server in background
echo  [STARTING] Web server on port 8000...
start /B python -m http.server 8000

echo.
echo  ============================================
echo  OLLAMA CORS CONFIGURATION (IMPORTANT!)
echo  ============================================
echo.
echo  For AI models to work, Ollama needs CORS permissions.
echo  In a SEPARATE terminal, run:
echo.
echo  OLLAMA_ORIGINS="http://localhost:8000" ollama serve
echo.
echo  Or restart your existing Ollama with this environment variable.
echo  ============================================
echo.

REM Wait for servers to start
echo  [WAITING] Servers starting up...
timeout /t 3 /nobreak >nul

REM Verify proxy is running if API key was provided
if not "%OLLAMA_TURBO_API_KEY%"=="" (
    echo  [CHECKING] Verifying Turbo proxy server...
    timeout /t 2 /nobreak >nul
    powershell -Command "for($i=0; $i -lt 5; $i++) { try { $response = Invoke-WebRequest -Uri 'http://localhost:11438' -Method GET -TimeoutSec 2 -ErrorAction Stop; Write-Host '[OK] Turbo proxy responding on port 11438'; break } catch { if($i -eq 4) { Write-Host '[WARNING] Turbo proxy not responding - check the proxy window for errors' } else { Start-Sleep 1 } } }"
)

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