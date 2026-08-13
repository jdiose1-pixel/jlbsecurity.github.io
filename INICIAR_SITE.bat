@echo off
title JLB Security - Servidor Web
cd /d "%~dp0"

echo ==========================================
echo       JLB SECURITY - SERVIDOR WEB
echo ==========================================
echo.

where python >nul 2>&1
if %errorlevel% neq 0 (
    echo Python nao foi encontrado neste computador.
    echo Instale o Python 3 e marque "Add Python to PATH".
    pause
    exit /b 1
)

echo Iniciando servidor na porta 8080...
start "" "http://localhost:8080"

echo.
echo Site disponivel em:
echo http://localhost:8080
echo.
echo Para parar o servidor, feche esta janela.
echo.

python -m http.server 8080 --bind 0.0.0.0
pause
