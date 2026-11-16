@echo off
rem Startet Song-Raten unter http://127.0.0.1:8888/
cd /d "%~dp0"
echo.
echo   Song-Raten laeuft unter:  http://127.0.0.1:8888/
echo   Dieses Fenster offen lassen. Zum Beenden einfach schliessen.
echo.
start "" "http://127.0.0.1:8888/"
python -m http.server 8888 --bind 127.0.0.1
if errorlevel 1 py -m http.server 8888 --bind 127.0.0.1
pause
