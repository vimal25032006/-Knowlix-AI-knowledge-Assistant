@echo off
title Knowlix AI
echo ========================================================
echo        Starting Knowlix AI Unified Web Server
echo ========================================================
echo.
echo URL: http://localhost:8000
echo.
cd /d "%~dp0backend"
python -m uvicorn main:app --port 8000
pause
