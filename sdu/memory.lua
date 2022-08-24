--Scooby's Max Health

function getScoobyMaxHealth()
	return ReadValue32(0x5598FC)
end

--Scooby's Current Health

function getScoobyHealth()
	return ReadValue32(0x559900)
end

--Scooby's Snack Count

function getScoobySnack()
	return ReadValue32(0x559904)
end

--Scooby's' Mubber Count

function getScoobyMubber()
	return ReadValue32(0x559908)
end

function getScoobyClueCount()
	return ReadValue32(0x55990C)
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