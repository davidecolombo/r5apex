@echo off
cls
set mypath=%~dp0
set r5apex=E:\Program Files (x86)\Origin Games\Apex\r5apex.exe
powershell -ExecutionPolicy Bypass "& ""%mypath%r5apex.ps1"""
cmd.exe /c start "" "%mypath%SAM.Game.cmd"
cmd.exe /c start "" /affinity FF "%r5apex%" +exec autoexec.cfg -dev -preload +fps_max 0 -novid -fullscreen -dxlevel 95
rem @pause