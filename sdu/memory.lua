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