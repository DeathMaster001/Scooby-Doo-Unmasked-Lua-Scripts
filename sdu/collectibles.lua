
-- Local Vars

local collectibles = {}

-- TODO: Confirm if there are more levels with food

local LevelFoodMap = {
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
	l17 = 0x80559991, --"Circus Tent",
	l18 = nil, --"House of Mirrors/\nGuitar Ghoul",
	l19 = 0x80559993, --"Museum Hub",
	l20 = 0x80559994, --"Dino",
	l21 = 0x80559995, --"Medieval",
	l22 = 0x80559996, --"Undersea",
	l23 = nil, --"Planetarium/\nCaveman",
	l25 = nil, --"MFM2",
	l26 = nil, --"MFM3/\nPterodactyl",
	l27 = nil, --"MFM2 Mystery Machine",
}

-- Maps bits to the name of the food 

local FoodBitMap = {
    l6  = {"?","?","?","?","Ice Cream","Cabbage","Chocolate Bar","Pepper"}, --"MFM 1",
    l7  = {"?","?","?","Hub Pepper","Shrimp","Lobster","Sausage","Burger"}, --"Chinatown Hub",
    l8  = {"?","?","?","?","Cotton Candy","Apple","Eggplant","Ham"}, --"Cookie Factory",
    l9  = {"?","?","?","?","Cheese","Marshmallow","Fish","Pepperoni"}, --"Sewers",
    l10 = {"?","?","?","?","?","?","Pickle","Cabbage"}, --"Sewers Autoscroll/End",
    l11 = {"?","?","?","?","Chocolate Bar","Cheese","Onion","Carrot"}, --"Temple",
	l13 = {"?","?","Broccoli","Pickle","Lobster","Sausage","Onion","Carrot"}, --"Theme Park Hub",
	l14 = {"?","?","?","?","Broccoli","Chocolate Bar","Popcorn","Shrimp"}, --"Haunted House",
	l15 = {"?","?","?","?","Cheese","Cabbage","Fish","Cotton Candy"}, --"Water Park",
	l16 = {"?","?","?","?","?","?","Ham","Marshmallows"}, --"Water Slide/End",
	l17 = {"?","?","?","?","Banana","Apple","Pepperoni","Eggplant"}, --"Circus Tent",
    l19 = {"?","Lobster","Ice Cream","Pickle","Pepperoni","Onion","Ham","Cheese"}, --"Museum Hub",
	l20 = {"?","?","?","?","Sausage","Marshmallow","Apple","Chips"}, --"Dino",
	l21 = {"?","?","?","?","Burger","Popcorn","Fish","Carrot"}, --"Medieval",
	l22 = {"?","?","Cotton Candy","Cabbage","Shrimp","Broccoli","Hot Pepper","Eggplant"}, --"Undersea",
}

-- Functions

local function getFoodTotals()
    shared.consoleout = shared.consoleout .. "TODO: Collectibles.lua: getFoodTotals\n"
end

local function getLevelFoods()

    -- get levelid to lookup to get address of food collectibles 

    levelid = "l" .. tostring(getLevel())    
    lvlFlagAddr = LevelFoodMap[levelid]

    -- check if level has any known food flags and store them in table if they do 

    if lvlFlagAddr ~= nil then

        foodFlags = toBits(ReadValue8(LevelFoodMap[levelid]),8)

		shared.consoleout = shared.consoleout .. "\nFood:\n"

		-- for 1 to 8 (each bit of byte) 

        for i = 1,8,1 
        do

            -- check if bit is assigned to anything (not equal to question mark)
            -- then add text to console out with item name and collection status

            if FoodBitMap[levelid][i] ~= "?" then
				if foodFlags[i] == 0 then
					shared.consoleout = shared.consoleout .. FoodBitMap[levelid][i] .. " [ ]\n"
				else
					shared.consoleout = shared.consoleout .. FoodBitMap[levelid][i] .. " [*]\n"
				end
            end
        end

    end
end

local function getLevelClueStatus()
    shared.consoleout = shared.consoleout .. "TODO: Collectibles.lua: getLevelClueStatus\n"
end

-- Exports

collectibles.getFoodTotals = getFoodTotals
collectibles.getLevelFoods = getLevelFoods
collectibles.getLevelClueStatus = getLevelClueStatus
return collectibles