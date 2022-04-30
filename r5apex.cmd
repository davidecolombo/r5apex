@echo off
cls

@call settings.cmd
set mypath=%~dp0

<nul set /p =Changing desktop resolution: 
powershell -ExecutionPolicy Bypass "& ""%mypath%r5apex.ps1""" %apex_width% %apex_height%

echo Starting Apex Legends ...
if not exist "%apex_bin%" (
echo Not found: "%apex_bin%"
@pause
goto quit
)
cmd.exe /c start "" /affinity %apex_cpu_affinity% "%apex_bin%" +exec autoexec.cfg -dev -preload +fps_max 0 -novid -fullscreen -dxlevel 95

echo Starting Steam Achievement Manager ...
cmd.exe /c start "" "%mypath%SAM.Game.cmd"

:quit
exit