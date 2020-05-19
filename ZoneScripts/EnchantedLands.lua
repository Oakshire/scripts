--[[
	Script Name		:	EnchantedLands.lua
	Script Purpose	:	Handle various things around Enchanted Lands
	Script Author	:	Cynnar
	Script Date		:	1/25/2016
	Script Notes	:	
--]]

function init_zone_script(zone)
    SetLocationProximityFunction(zone, -194.83, 3.27, -292.25, 10, "StableMasters", "Leave")  -- Rivervale
    SetLocationProximityFunction(zone, 303.07, 1.10, -244.39, 10, "StableMasters", "Leave")   -- The Great Guard
    SetLocationProximityFunction(zone, 25.89, 1.17, -244.39, 10, "StableMasters", "Leave")    -- Bobick Village
    SetLocationProximityFunction(zone, -186.23, -3.29, -605.62, 10, "StableMasters", "Leave") -- Chompers Pond
    SetLocationProximityFunction(zone, 157.14, 25.31, -777.63, 10, "StableMasters", "Leave")  -- Goblin Pass
    SetLocationProximityFunction(zone, -228.61, 24.40, -995.37, 10, "StableMasters", "Leave") -- Bramblefoot Hills
    SetLocationProximityFunction(zone, -604.17, -0.92, -918.46, 10, "StableMasters", "Leave") -- Misty Grove
end

function StableMasters(zone, Spawn)
	if IsPlayer(Spawn) and IsOnAutoMount(Spawn) then
		EndAutoMount(Spawn)
	end
end

function Leave(zone, Spawn)
end
