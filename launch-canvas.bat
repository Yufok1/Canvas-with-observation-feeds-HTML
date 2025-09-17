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
echo  STARTING PYTHON HTTP SERVER
echo  ============================================
echo.
echo  Server will be available at: http://localhost:8000
echo  Canvas URL: http://localhost:8000/canvas-with-observation-feeds.html
echo.
echo  ============================================
echo  ACCESS INSTRUCTIONS
echo  ============================================
echo.
echo  1. Python HTTP server starting on port 8000...
echo  2. Browser will open automatically to the canvas
echo  3. AI systems will initialize and begin monitoring
echo  4. Begin your sovereign observations in the canvas
echo.
echo  ============================================
echo  SYSTEM REQUIREMENTS
echo  ============================================
echo.
echo  * Ollama must be running (ollama serve)
echo  * Models: Any Ollama-compatible model (user-configurable)
echo  * Modern browser with localStorage support
echo  * 4GB RAM minimum, 8GB recommended
echo.
echo  ============================================
echo  SYSTEM ACTIVATION SEQUENCE
echo  ============================================
echo.

REM Start Python HTTP server in background
start /B python -m http.server 8000

REM Wait a moment for server to start
timeout /t 2 /nobreak >nul

REM Open browser to the canvas
start http://localhost:8000/canvas-with-observation-feeds.html

echo  [OK] Server started successfully!
echo  [OK] Browser opened to canvas
echo  [OK] AI orchestration matrix active
echo.
echo  ============================================
echo  CANVAS READY - BEGIN OBSERVATIONS
echo  ============================================
echo.
echo  Press any key to close this terminal...
pause >nul