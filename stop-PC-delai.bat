@echo off
set /p minutes= "Saisissez le nombre de minutes avant extinction du PC: "
set /a secondes=  %minutes% * 60
timeout %secondes%
shutdown -s /f
