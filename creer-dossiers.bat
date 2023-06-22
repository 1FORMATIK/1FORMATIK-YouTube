@echo off
chcp 65001>nul
for /f "tokens=*" %%x in (structure.txt) do (mkdir "%%x")
