--[[
	Script Name		:	EnchantedLands.lua
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	6/5/2020
	Script Notes	:	
--]]

function init_zone_script(zone)
    SetLocationProximityFunction(zone, -194.83, 3.27, -292.25, 5, "StableMasters", "Leave") -- Rivervale (from Docks) 20
    SetLocationProximityFunction(zone, 303.07, 1.17, -244.39, 5, "StableMasters", "Leave")   -- The Great Guard (from Docks) 21
    SetLocationProximityFunction(zone, -186.22, -3.31, -605.63, 5, "StableMasters", "Leave") -- Chomper's Pond (from Docks) 42
    SetLocationProximityFunction(zone, 157.14, 25.31, -777.63, 5, "StableMasters", "Leave")  -- Goblin Pass (from Docks) 45
    SetLocationProximityFunction(zone, -224.39, 23.54, -994.61, 5, "StableMasters", "Leave") -- Bramblefoot Hills (from Docks) 43
    SetLocationProximityFunction(zone, -604.16, -0.91, -919.14, 5, "StableMasters", "Leave") -- Misty Grove (from Docks) 44
	SetLocationProximityFunction(zone, 25.89, -1.03, -8.45, 5, "StableMasters", "Leave")   -- Docks (from Rivervale) 22
	SetLocationProximityFunction(zone, 302.76, 1.15, -244.62, 5, "StableMasters", "Leave")   -- The Great Guard (from Rivervale) 23
	SetLocationProximityFunction(zone, -186.22, -3.31, -605.63, 5, "StableMasters", "Leave")   -- Chomper's Pond (from Rivervale) 24
	SetLocationProximityFunction(zone, -224.39, 23.54, -994.61, 5, "StableMasters", "Leave")   -- Bramblefoot Hills (from Rivervale) 39
	SetLocationProximityFunction(zone, -604.16, -0.91, -919.14, 5, "StableMasters", "Leave")   -- Misty Grove (from Rivervale) 40
	SetLocationProximityFunction(zone, 157.14, 25.31, -777.63, 5, "StableMasters", "Leave")   -- Goblin Pass (from Rivervale) 41
	SetLocationProximityFunction(zone, 27.56, -0.9, -9.84, 5, "StableMasters", "Leave")   -- Docks (from The Great Guard) 25
	SetLocationProximityFunction(zone, 157.14, 25.31, -777.63, 5, "StableMasters", "Leave")   -- Goblin Pass (from The Great Guard) 26
	SetLocationProximityFunction(zone, -196.19, 3.84, -292.89, 5, "StableMasters", "Leave")   -- Rivervale (from The Great Guard) 27
	SetLocationProximityFunction(zone, -187.62, -3.34, -606.75, 5, "StableMasters", "Leave")   -- Chomper's Pond (from The Great Guard) 55
	SetLocationProximityFunction(zone, -228.61, 24.39, -995.37, 5, "StableMasters", "Leave")   -- Bramblefoot Hills (from The Great Guard) 56
	SetLocationProximityFunction(zone, -604.17, -0.92, -918.46, 5, "StableMasters", "Leave")   -- Misty Grove (from The Great Guard) 57
	SetLocationProximityFunction(zone, 303.27, 1.16, -244.98, 5, "StableMasters", "Leave")   -- The Great Guard (from Goblin Pass) 28
	SetLocationProximityFunction(zone, -228.61, 24.39, -995.37, 5, "StableMasters", "Leave")   -- Bramblefoot Hills (from Goblin Pass) 29
	SetLocationProximityFunction(zone, -196.19, 3.84, -292.89, 5, "StableMasters", "Leave")   -- Rivervale (from Goblin Pass) 58
	SetLocationProximityFunction(zone, -187.62, -3.34, -606.75, 5, "StableMasters", "Leave")   -- Chomper's Pond (from Goblin Pass) 59
	SetLocationProximityFunction(zone, 27.56, -0.9, -9.84, 5, "StableMasters", "Leave")   -- Docks (from Goblin Pass) 60
	SetLocationProximityFunction(zone, -604.17, -0.92, -918.46, 5, "StableMasters", "Leave")   -- Misty Grove (from Goblin Pass) 61
	SetLocationProximityFunction(zone, -187.62, -3.34, -606.75, 5, "StableMasters", "Leave")   -- Chomper's Pond (from Bramblefoot Hills) 30
	SetLocationProximityFunction(zone, -604.17, -0.92, -918.46, 5, "StableMasters", "Leave")   -- Misty Grove (from Bramblefoot Hills) 31
	SetLocationProximityFunction(zone, 159.66, 25.31, -777.35, 5, "StableMasters", "Leave")   -- Goblin Pass (from Bramblefoot Hills) 32
	SetLocationProximityFunction(zone, -195.65, 3.49, -290.81, 5, "StableMasters", "Leave")   -- Rivervale (from Bramblefoot Hills) 46
	SetLocationProximityFunction(zone, 303.27, 1.16, -244.98, 5, "StableMasters", "Leave")   -- The Great Guard (from Bramblefoot Hills) 47
	SetLocationProximityFunction(zone, 27.56, -0.9, -9.84, 5, "StableMasters", "Leave")   -- Docks (from Bramblefoot Hills) 48
	SetLocationProximityFunction(zone, -190.34, -3.69, -607.09, 5, "StableMasters", "Leave")   -- Chomper's Pond (from Misty Grove) 33
	SetLocationProximityFunction(zone, -224.64, 23.61, -994.24, 5, "StableMasters", "Leave")   -- Bramblefoot Hills (from Misty Grove) 34
	SetLocationProximityFunction(zone, -195.65, 3.49, -290.81, 5, "StableMasters", "Leave")   -- Rivervale (from Misty Grove) 51
	SetLocationProximityFunction(zone, 302.41, 1.11, -246.53, 5, "StableMasters", "Leave")   -- The Great Guard(from Misty Grove) 52
	SetLocationProximityFunction(zone, 159.66, 25.31, -777.35, 5, "StableMasters", "Leave")   -- Goblin Pass (from Misty Grove) 53
	SetLocationProximityFunction(zone, 25.89, -1.03, -8.45, 5, "StableMasters", "Leave")   -- Docks (from Misty Grove) 54
	SetLocationProximityFunction(zone, -224.39, 23.54, -994.61, 5, "StableMasters", "Leave")   -- Bramblefoot Hills (from Chomper's Pond) 35
	SetLocationProximityFunction(zone, -604.16, -0.91, -919.14, 5, "StableMasters", "Leave")   -- Misty Grove (from Chomper's Pond) 36
	SetLocationProximityFunction(zone, 302.41, 1.11, -246.53, 5, "StableMasters", "Leave")   -- The Great Guard (from Chomper's Pond) 37
	SetLocationProximityFunction(zone, -195.65, 3.49, -290.81, 5, "StableMasters", "Leave")   -- Rivervale (from Chomper's Pond) 38
	SetLocationProximityFunction(zone, 159.66, 25.31, -777.35, 5, "StableMasters", "Leave")   -- Goblin Pass (from Chomper's Pond) 49
	SetLocationProximityFunction(zone, 25.89, -1.03, -8.45, 5, "StableMasters", "Leave")   -- Docks (from Chomper's Pond) 50
end

function StableMasters(zone, Spawn)
	if IsPlayer(Spawn) and IsOnAutoMount(Spawn) then
		EndAutoMount(Spawn)
	end
end

function player_entry(zone, player)
end

function enter_location(zone, spawn, grid)
end

function leave_location(zone, spawn, grid)
end

function dawn(zone)
end

function dusk(zone)
end