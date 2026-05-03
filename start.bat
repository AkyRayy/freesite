@echo off
title AkyDev Studio Site Launcher
color 0A

echo ========================================
echo    AkyDev Studio Site Launcher
echo ========================================
echo.

REM Check if node_modules exists
if not exist "node_modules" (
    echo [INFO] Installing dependencies...
    powershell -ExecutionPolicy Bypass -Command "npm install"
    if errorlevel 1 (
        echo [ERROR] Failed to install dependencies
        pause
        exit /b 1
    )
    echo [SUCCESS] Dependencies installed
    echo.
)

REM Start the development server
echo [INFO] Starting development server...
echo [INFO] Site will be available at: http://localhost:3000
echo [INFO] Press Ctrl+C to stop the server
echo.
powershell -ExecutionPolicy Bypass -Command "npm run dev"

if errorlevel 1 (
    echo.
    echo [ERROR] Failed to start development server
    pause
    exit /b 1
)

pause
