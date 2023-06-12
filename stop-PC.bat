@echo off
set /p heure= "Saisissez l'heure d'extinction du PC sous la forme HH:MM (exemple 13:25): "
:W
echo Il n'est pas encore %heure%
timeout /t 30 /nobreak
echo %time% |find "%heure%" >nul || goto :W
shutdown.exe /s /f /t 60 /c "Extinction du PC dans 60 secondes ..."
