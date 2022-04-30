# r5apex.cmd

Here's my launch script for [Apex Legends](https://www.ea.com/games/apex-legends). The script does a few things: it sets desktop resolution, CPU priority, affinity and optimizations, then finally starts the game together with [Steam Achievement Manager](https://github.com/gibbed/SteamAchievementManager/releases) so that [Steam](https://store.steampowered.com/) knows that I'm playing even if I'm running Origin. This is because I'm forced to use [Origin](https://www.origin.com/) or the game will stutter, possibly due to the Steam overlay. This way your friends can see yo're playing, and join. When you close the game, the Steam Achievement Manager is also closed automatically, further information about what the script does [here](https://davidecolombo.space/solved-100-cpu-usage-in-apex-legends-season-10/).

## Quick Start

- Download the [script](https://github.com/davidecolombo/r5apex/archive/refs/heads/main.zip) and extract to a folder
- Download [Steam Achievement Manager](https://github.com/gibbed/SteamAchievementManager/releases) and extract `SAM.API.dll` and `SAM.Game.exe` to the same folder
- Edit configurations within [settings.cmd](settings.cmd)

| Variable          | Value                                               |
| ----------------- | ----------------------------------------------------|
| apex_bin          | C:\Program Files (x86)\Origin Games\Apex\r5apex.exe |
| apex_width        | 1920                                                |
| apex_height       | 1080                                                |
| apex_cpu_affinity | FF                                                  |

- Change `apex_bin` to the full path of your Apex Legends executable `r5apex.exe`
- Change `apex_width` and `apex_height` to your preferred resolution, it'll be changed before the game is actually started
- Change `apex_cpu_affinity` to match your preferred settings, further information [here](https://superuser.com/questions/181577/what-is-windows-priority-and-affinity-and-what-advatanges-does-it-provide) and [here](https://github.com/jeremycollake/affinity-calc)
- Finally run `r5apex.cmd` to start the game

## Affinity Table

AFFINITY works with hexidecimal mask that allows granular control of all of your processors, where the rightmost bit specifies the lowest-order CPU (0). You can tweak the affinity parameter `FF` for your system, these are some affinity mask values for an 8-CPU system:

| Decimal value | Binary bit mask | Allow threads on processors |
| ------------- | --------------- | --------------------------- |
| 1             | 00000001        | 0                           |
| 3             | 00000011        | 0 and 1                     |
| 7             | 00000111        | 0, 1, and 2                 |
| 15            | 00001111        | 0, 1, 2, and 3              |
| 31            | 00011111        | 0, 1, 2, 3, and 4           |
| 63            | 00111111        | 0, 1, 2, 3, 4, and 5        |
| 127           | 01111111        | 0, 1, 2, 3, 4, 5, and 6     |
| 255           | 11111111        | 0, 1, 2, 3, 4, 5, 6, and 7  |
