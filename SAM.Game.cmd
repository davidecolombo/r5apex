@echo off
cls
set mypath=%~dp0
cmd.exe /c start "" "%mypath%SAM.Game.exe" 1172470
timeout 10 > NUL
:loop
tasklist | findstr r5apex.exe || goto kill
timeout 5 > NUL
goto loop
:kill
taskkill /IM "SAM.Game.exe" /F
rem @pause
exit