--modules
package.path = GetScriptsDir() .. "sdu/memory.lua"
require("memory.lua")

package.path = GetScriptsDir() .. "sdu/level.lua"
local level = require("level.lua")

package.path = GetScriptsDir() .. "sdu/food.lua"
local food = require("food.lua")

--global variables

shared = {
    consoleout = "",
    frame = 0,
}

--local variables

local lastexecutedframe = 0

--functions
function onScriptStart()
	if ReadValueString(0x0, 6) ~= "G5DE78" then
		CancelScript()
	end
end

function onScriptCancel()
end

function onScriptUpdate()

    shared.frame = GetFrameCount()

    if lastexecutedframe ~= shared.frame then
        shared.consoleout = ""
        level.getlevelname()
        food.getFoodTotals()
        SetScreenText(shared.consoleout)

    end
	
end

