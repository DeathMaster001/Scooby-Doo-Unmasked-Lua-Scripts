-- global modules
package.path = GetScriptsDir() .. "inputtest/inputSystem.lua"
local inputSystem = require("inputSystem.lua")

package.path = GetScriptsDir() .. "sdu/helperFuncs.lua"
require("helperFuncs.lua")

--global variables

shared = {
    consoleOut = "",
    frame = 0,
    enabled = false
}

--local variables

local lastexecutedframe = 0

--functions
function onScriptStart()
	if ReadValueString(0x0, 6) ~= "G5DE78" then
		CancelScript()
	end

    -- Core system enabled action
    inputSystem.registerAction("Z+LT", {name="CoreSystemsEnable", method=function() shared.enabled = not shared.enabled end, type="CoreToggle"})

    -- Main actions
    inputSystem.registerAction("LT+X+Y", {name="InputDisplay", method=inputSystem.inputViewer, type="Toggle"})

end

function onScriptCancel()
end

function onScriptUpdate()

    shared.frame = GetFrameCount()
    if lastexecutedframe ~= shared.frame then

        shared.consoleOut = ""

        inputSystem.processInputs()
        inputSystem.evaluateCommands()
        inputSystem.processCommands()
        
        SetScreenText(string.format("%s%s", (shared.enabled and "(M)\n" or ""), tostring(shared.consoleOut)))

        lastexecutedframe = shared.frame
    end

end