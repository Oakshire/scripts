--[[
	Script Name		:	ZoneScripts/Commonlands.lua
	Script Purpose	:
	Script Author	:	Neatz09
	Script Date		:	2/2/2019
	Script Notes	:	
--]]



function init_zone_script(zone)
    SetLocationProximityFunction(zone, 757.39, -31.98, -585.17, 10, "GriffonTower", "Leave")   -- Nektulos (from Freeport)
    SetLocationProximityFunction(zone, -599.41, -33.73, -771.12, 10, "GriffonTower", "Leave") -- Freeport (from Nektulos)
    SetLocationProximityFunction(zone, 523.49, -33.40, 747.70, 10, "GriffonTower", "Leave") -- HiddenCanyon (from Freeport)
    SetLocationProximityFunction(zone, 534.17, -33.42, 757.78, 10, "GriffonTower", "Leave") -- HiddenCanyon (from Nektulos)
    SetLocationProximityFunction(zone, 771.67, -31.97, -588.20, 10, "GriffonTower", "Leave")   -- Nektulos (from HiddenCanyon)
    SetLocationProximityFunction(zone, -597.07, -33.75, -758.43, 10, "GriffonTower", "Leave") -- Freeport (from HiddenCanyon)
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

function Leave(zone, Spawn)
end