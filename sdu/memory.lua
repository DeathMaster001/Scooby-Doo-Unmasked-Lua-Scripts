--local variables

local memory = {}

local FoodLookups = {
	f1 = "Cabbage: ",
	f2 = "Chocolate Bar: ",
	f3 = "Hot Pepper: ",
	f3 = "Ice Cream: ",
}
memory.FoodLookups = FoodLookups

local CollectedState = {
	f1 = "Collected",
    f0 = "Not Collected",
}
memory.FoodLookups = FoodLookups
	
--Scooby's Health's

local function getScoobyHealth()
	return ReadValue32(0x559900)
end
memory.getScoobyHealth = getScoobyHealth

--Scooby's Mubber

local function getScoobyMubber()
	return ReadValue32(0x559908)
end
memory.getScoobyMubber = getScoobyMubber

--Get current level

local function getLevel()
	return ReadValue8(0x5599F1)
end
memory.getLevel = getLevel

--Food lookup to be fixed

local function getFoodId()
	return ReadValue8(0x55999C)
end
memory.getFoodId = getFoodId

local function getFoodName()
	return ReadValue8(0x55999C)
end
memory.getFoodName = getFoodName

return memory