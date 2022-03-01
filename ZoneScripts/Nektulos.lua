--[[
	Script Name		:	ZoneScripts/Nekutlos.lua
	Script Purpose	:	
	Script Author	:	Neatz09	
	Script Date		:	2/24/2019
	Script Notes	:	
--]]

function init_zone_script(zone)
SetLocationProximityFunction(zone, -791.916, 155.953, -1890.2, 10, "GriffonTower", "Leave")  -- Nmar To Bone
SetLocationProximityFunction(zone, -248.063, 14.3373, 168.367, 10, "GriffonTower", "Leave")  -- Nmar To CL
SetLocationProximityFunction(zone, 829.316, 13.7854, -189.276, 10, "GriffonTower", "Leave")  -- Nmar To Docks
SetLocationProximityFunction(zone, 828.892, 13.7353, -188.352, 10, "GriffonTower", "Leave")  -- CL To Docks
SetLocationProximityFunction(zone, -445.868, 74.7915, -1289.33, 10, "GriffonTower", "Leave")  -- CL To Nmar
SetLocationProximityFunction(zone, -248.078, 14.3349, 167.812, 10, "GriffonTower", "Leave")  -- Docks To CL
SetLocationProximityFunction(zone, -446.087, 74.7935, -1288.58, 10, "GriffonTower", "Leave")  -- Docks To NMar
SetLocationProximityFunction(zone, -445.644, 75.9053, -1289.18, 10, "GriffonTower", "Leave")  -- Bone to Nmar

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
function GriffonTower(zone, Spawn)
	if IsPlayer(Spawn) and IsOnAutoMount(Spawn) then
		EndAutoMount(Spawn)
	end
end