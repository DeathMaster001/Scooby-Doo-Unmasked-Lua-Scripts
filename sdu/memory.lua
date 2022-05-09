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

function getScoobyHealth()
	return ReadValue32(0x559900)
end

--Scooby's Mubber

function getScoobyMubber()
	return ReadValue32(0x559908)
end

--Get current level

function getLevel()
	return ReadValue8(0x5599F1)
end
--Food lookup to be fixed

function getFoodId()
	return ReadValue8(0x55999C)
end

function getFoodName()
	return ReadValue8(0x55999C)
end