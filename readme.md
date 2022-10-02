# Scooby-Doo! Unmasked Lua Scripts
A repository of Lua scripts made specifically for the GameCube game Scooby-Doo! Unmasked (G5DE78). Scripts made for use with the [Dolphin Lua Core](https://github.com/SwareJonge/Dolphin-Lua-Core) emulator. Intended to be used by speedrunners, glitch hunters and TAS creators.

## Planned Features (All Toggleable)
- Stats (Health, Total Health, Mubber, Level Name's)
- Collectables (Food, Clues and Costume Tokens)
- Input Viewer and Position Viewer

## How to Use
In order to use these scripts you are required to use a custom version of Dolphin specificly built for TAS creation called [Dolphin Lua Core](https://github.com/SwareJonge/Dolphin-Lua-Core).

Once you have downloaded this build, you will need to place the contents of the latest release into the '/sys/scripts/' folder found inside your dolphin lua core install folder.

Once the scripts are in the proper path, open the Dolphin Lua Core Emulator and follow the [Running Scripts](https://github.com/SwareJonge/Dolphin-Lua-Core#running-scripts) section of the Dolphin Lua Core Github Repository to execute the scripts.

Once the script has been started, you can then press Z+L to enable the tool, which will place a '(M)' on the top left within Dolphin.

## Controls

| Control | Action | Notes |
|--|--| -- |
| Z+L | Enable/Disable the menu |  |
| L+X+Y | Input Viewer | Shows Digital input on the left of the screen |

## Changing controls

Controls can be changed to any button of your choice by modifying the Mappings in inputTest.lua.

All buttons must be written in uppercase (i.e 'B', 'DOWN' or 'LT'), and must have a '+' between each one.
The buttons "LT" and "RT" are the respective "L" and "R" buttons. The triggers do not work.
Modifying anything but button combos will stop this tool from working if you don't understand what you are doing.

Example bind shown below;

    inputSystem.registerAction("LT+X+Y", {name="InputDisplay", method=inputSystem.inputViewer, type="Toggle"})

## Unmasked Windowed Tool
If your interested I've made a similar tool that works separately with Dolphin, check it out [here](https://github.com/DeathMaster001/Scooby-Doo-Unmasked-Windowed-Tool).

## Credits
- DeathMaster001 for coding.
- HDBSD for helping me understand the Lua scripting language.
- ClimbingCoder for finding the majority of the memory values.
