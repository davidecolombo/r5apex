@echo off
cls
set mypath=%~dp0
cmd.exe /c start "" "%mypath%SAM.Game.exe" 1172470
:loop
timeout 15 > NUL
tasklist | findstr r5apex.exe || goto kill
goto loop
:kill
taskkill /IM "SAM.Game.exe" /F
exit