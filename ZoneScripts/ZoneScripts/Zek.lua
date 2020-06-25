--[[
	Script Name		:	ZoneScripts/Zek.lua
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	2/24/2019
	Script Notes	:	
--]]

function init_zone_script(zone)
SetLocationProximityFunction(zone, 519.74, -40, 212.56, 10, "StableMasters", "Leave")  -- Warship
SetLocationProximityFunction(zone, -94.55, -25.47, 124.48, 10, "StableMasters", "Leave")  -- Refugee
SetLocationProximityFunction(zone, 532.37, -18.8, -124.48, 10, "StableMasters", "Leave")  -- Three Toes
SetLocationProximityFunction(zone, -261.72, -27.99, -441.27, 10, "StableMasters", "Leave")  -- Bridge
SetLocationProximityFunction(zone, -543.87, -27.83, -192.11, 10, "StableMasters", "Leave")  -- Defiled Forest

end

function StableMasters(zone, Spawn)
	if IsPlayer(Spawn) and IsOnAutoMount(Spawn) then
		EndAutoMount(Spawn)
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

end