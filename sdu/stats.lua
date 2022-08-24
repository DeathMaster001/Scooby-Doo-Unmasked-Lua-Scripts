local stats = {}

local LevelMap = {
	l2 = nil, --"Monster Profiles",
	l3 = nil, --"Bonus Art",
	l4 = nil, --"Main Menu",
    l6 = 0x80559986, --"MFM 1",
	l7 = 0x80559987, --"Chinatown Hub",
	l8 = 0x80559988, --"Cookie Factory",
	l9 = 0x80559989, --"Sewers",
	l10 = 0x8055998A, --"Sewers Autoscroll/End",
	l11 = 0x8055998B, --"Temple",
	l12 = nil, --"Warehouse/\nDragon",
	l13 = 0x8055998D, --"Theme Park Hub",
	l14 = 0x8055998E, --"Haunted House",
	l15 = 0x8055998F, --"Water Park",
	l16 = 0x80559990, --"Water Slide/End",
	l17 = 0x80559991, --"Circus",
	l18 = nil,			--"House of Mirrors/\nGuitar Ghoul",
	l19 = 0x80559993, --"Museum Hub",
	l20 = 0x80559994, --"Dino",
	l21 = 0x80559995, --"Medieval",
	l22 = 0x80559996, --"Undersea",
	l23 = nil, --"Planetarium/\nCaveman",
	l25 = nil, --"MFM2",
	l26 = nil, --"MFM3/\nPterodactyl",
	l27 = nil, --"MFM2 Mystery Machine",
}

local function getmaxhealth()
	statid = getScoobyMaxHealth()
	shared.consoleout = shared.consoleout .. "Max Health:" .. statid .. "\n"
end

local function gethealth()
	statid = getScoobyHealth()
	shared.consoleout = shared.consoleout .. "Current Health:" .. statid .. "\n"
end

local function getsnacks()
	statid = getScoobySnack()
	shared.consoleout = shared.consoleout .. "Snacks:" .. statid .. "\n"
end

local function getmubber()
	statid = getScoobyMubber()
	shared.consoleout = shared.consoleout .. "Mubber:" .. statid .. "\n"
end

local function getcluecount()
	statid = getScoobyClueCount()
	shared.consoleout = shared.consoleout .. "Clue Count:" .. statid .. "\n"
end

--exports
stats.getmaxhealth = getmaxhealth
stats.gethealth = gethealth
stats.getsnacks = getsnacks
stats.getmubber = getmubber
stats.getcluecount = getcluecount
return stats