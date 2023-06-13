@echo off
chcp 65001>nul
set /p adresseIP= "Saisissez l'adresse IP à géolocaliser : "
set url=http://ip-api.com/json/%adresseIP%
powershell -Command "(Invoke-RestMethod -Method Get -Uri %url%)"
pause
