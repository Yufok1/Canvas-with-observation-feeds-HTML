@echo off
cls
color 0B

echo.
echo  ========================================================
echo   🔑 OLLAMA TURBO API KEY SETUP UTILITY
echo  ========================================================
echo.
echo  This utility helps you securely configure your Ollama
echo  Turbo API key for use with the Canvas AI system.
echo.
echo  You can:
echo  1. Set the API key for this session only
echo  2. Set the API key permanently for your user account
echo  3. View current API key status
echo  4. Clear stored API key
echo.
echo  ========================================================

:menu
echo.
echo  Choose an option:
echo  [1] Set API key for current session
echo  [2] Set API key permanently (user environment)
echo  [3] View current API key status
echo  [4] Clear stored API key
echo  [5] Exit
echo.
set /p "choice=Enter your choice (1-5): "

if "%choice%"=="1" goto session_key
if "%choice%"=="2" goto permanent_key
if "%choice%"=="3" goto view_status
if "%choice%"=="4" goto clear_key
if "%choice%"=="5" goto exit
echo  Invalid choice. Please select 1-5.
goto menu

:session_key
echo.
echo  Setting API key for current session only...
echo.
set /p "api_key=Enter your Ollama Turbo API key: "
if "%api_key%"=="" (
    echo  ❌ No API key entered. Returning to menu.
    goto menu
)
set OLLAMA_TURBO_API_KEY=%api_key%
echo  ✅ API key set for this session!
echo  📝 Note: This will only last until you close this command window.
echo  💡 Use option 2 to make it permanent.
goto menu

:permanent_key
echo.
echo  Setting API key permanently in user environment...
echo.
set /p "api_key=Enter your Ollama Turbo API key: "
if "%api_key%"=="" (
    echo  ❌ No API key entered. Returning to menu.
    goto menu
)
setx OLLAMA_TURBO_API_KEY "%api_key%" >nul 2>&1
if errorlevel 1 (
    echo  ❌ Failed to set permanent API key. You may need administrator privileges.
    echo  💡 Try using option 1 for session-only setup, or run as administrator.
) else (
    echo  ✅ API key set permanently in user environment!
    echo  📝 Note: You may need to restart command windows for changes to take effect.
    echo  🔄 The Canvas launch scripts will automatically detect this API key.
)
goto menu

:view_status
echo.
echo  Current API key status:
echo  ========================================================
if defined OLLAMA_TURBO_API_KEY (
    echo  ✅ Session API key: %OLLAMA_TURBO_API_KEY:~0,20%...
) else (
    echo  ❌ Session API key: Not set
)

for /f "tokens=2*" %%i in ('reg query "HKCU\Environment" /v OLLAMA_TURBO_API_KEY 2^>nul') do set "perm_key=%%j"
if defined perm_key (
    echo  ✅ Permanent API key: %perm_key:~0,20%...
) else (
    echo  ❌ Permanent API key: Not set
)
set perm_key=
goto menu

:clear_key
echo.
echo  Clearing API key...
echo.
echo  [1] Clear session key only
echo  [2] Clear permanent key only
echo  [3] Clear both session and permanent keys
echo  [4] Return to main menu
echo.
set /p "clear_choice=Enter your choice (1-4): "

if "%clear_choice%"=="1" (
    set OLLAMA_TURBO_API_KEY=
    echo  ✅ Session API key cleared.
) else if "%clear_choice%"=="2" (
    reg delete "HKCU\Environment" /v OLLAMA_TURBO_API_KEY /f >nul 2>&1
    echo  ✅ Permanent API key cleared.
) else if "%clear_choice%"=="3" (
    set OLLAMA_TURBO_API_KEY=
    reg delete "HKCU\Environment" /v OLLAMA_TURBO_API_KEY /f >nul 2>&1
    echo  ✅ Both session and permanent API keys cleared.
) else if "%clear_choice%"=="4" (
    goto menu
) else (
    echo  Invalid choice. Returning to menu.
)
goto menu

:exit
echo.
echo  🚀 Canvas API Key Setup Complete!
echo.
echo  Next steps:
echo  - Run launch-canvas.bat for standalone mode
echo  - Run LAUNCH_CANVAS_SURVEILLANCE.bat for full surveillance mode
echo  - The launch scripts will automatically detect your API key
echo.
echo  Press any key to exit...
pause >nul