@echo off
cls

echo.
echo   CANVAS - AI ORCHESTRATION MATRIX
echo   Sovereign Canvas with Live Intelligence
echo.
echo  ============================================
echo  ACTIVE AI SYSTEMS
echo  ============================================
echo.
echo  DJINN      - Governance and Strategic Analysis
echo  NAZAR      - Consciousness and Fractal Analysis
echo  NARRA      - Pattern Recognition and Synthesis
echo  WHALE      - Deep Interrogation and Memory
echo  WATCHTOWER - Operational Monitoring and Metrics
echo.
echo  ============================================
echo  SYSTEM ARCHITECTURE
echo  ============================================
echo.
echo  Sovereign Canvas - User-controlled workspace
echo  Live AI Feeds    - Real-time intelligence streams
echo  Metrics Dashboard- System performance monitoring
echo  Synthesis Engine - Collaborative AI analysis
echo  Memory Continuity- Persistent conversation history
echo.
echo  ============================================
echo  INITIALIZING SYSTEMS
echo  ============================================
echo.
echo  [1/4] Establishing local server connection...
echo  [2/4] Loading AI orchestration matrix...
echo  [3/4] Initializing sovereign canvas...
echo  [4/4] Activating live intelligence feeds...
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
echo  * Models: gemma3:1b (all systems)
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