# r5apex.cmd

Here's my launch script for [Apex Legends](https://www.ea.com/games/apex-legends). The script does a few things: it sets desktop resolution, CPU priority, affinity and optimizations, then finally starts the game together with [Steam Achievement Manager](https://github.com/gibbed/SteamAchievementManager/releases) so that [Steam](https://store.steampowered.com/) knows that I'm playing even if I'm running Origin. This is because I'm forced to use [Origin](https://www.origin.com/) or the game will stutter, possibly due to the Steam overlay. This way your friends can see yo're playing, and join. When you close the game, the Steam Achievement Manager is also closed automatically, further information about what the script does [here](https://davidecolombo.space/solved-100-cpu-usage-in-apex-legends-season-10/).

## Quick Start

- Download the [script](https://github.com/davidecolombo/r5apex/archive/refs/heads/main.zip) and extract to a folder
- Download [Steam Achievement Manager](https://github.com/gibbed/SteamAchievementManager/releases) and extract to the same folder (I'm using version 7.0.25)
- Edit `line 4` in [r5apex.cmd](r5apex.cmd) and change it to your Apex Legends executable `r5apex.exe` full path, for example: `set r5apex=C:\Program Files (x86)\Origin Games\Apex\r5apex.exe`
- Edit `line 7` in [r5apex.cmd](r5apex.cmd) and change `/affinity FF` to match your preferred setting, further information [here](https://superuser.com/questions/181577/what-is-windows-priority-and-affinity-and-what-advatanges-does-it-provide)
- Edit `line 2` in [r5apex.ps1](r5apex.ps1) and change it to your preferred desktop resolution, for example `Set-ScreenResolution -Width 1920 -Height 1080` this will set your resolution to 1920x1080 before the game starts
- Finally run `r5apex.cmd` and the game should start with the presets you selected
