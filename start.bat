@echo off
set "IP=8.8.8.8"

:TestDeLaConnection
ping -n 1 %IP% | find "TTL=" >nul
if errorlevel 1 (
goto NouvelEssai
) else (
goto OuvreSiteWeb
)

:NouvelEssai
ping 127.0.0.1 -n 6 >nul
goto :TestDeLaConnection

:OuvreSiteWeb
start https://www.youtube.com
start https://www.google.com
exit
