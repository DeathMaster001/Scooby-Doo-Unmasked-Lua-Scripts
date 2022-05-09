local level = {}

local LevelLookups = {
	l2 = "Monster Profiles",
	l3 = "Bonus Art",
	l4 = "Main Menu",
    l6 = "MFM 1",
	l7 = "Chinatown Hub",
	l8 = "Cookie Factory",
	l9 = "Sewers",
	l10 = "Sewers Autoscroll/End",
	l11 = "Temple",
	l12 = "Warehouse/\nDragon",
	l13 = "Theme Park Hub",
	l14 = "Haunted House",
	l15 = "Water Park",
	l16 = "Water Slide/End",
	l17 = "Circus",
	l18 = "House of Mirrors/\nGuitar Ghoul",
	l19 = "Museum Hub",
	l20 = "Dino",
	l21 = "Medieval",
	l22 = "Undersea",
	l23 = "Planetarium/\nCaveman",
	l25 = "MFM2",
	l26 = "MFM3/\nPterodactyl",
	l27 = "MFM2 Mystery Machine",
}

local function getlevelname()
	levelid = "l" .. tostring(getLevel())
	shared.consoleout = shared.consoleout .. "level:" .. LevelLookups[levelid] .. "\n"
end

--exports
level.getlevelname = getlevelname
return level



