--[[
	Script Name		:	ZoneScripts/Commonlands.lua
	Script Purpose	:
	Script Author	:	Neatz09
	Script Date		:	2/2/2019
	Script Notes	:	
--]]

local SearchForTheMissing = 573
local AFesteringProblem = 5800

function init_zone_script(zone)
    SetLocationProximityFunction(zone, 757.39, -31.98, -585.17, 10, "GriffonTower", "Leave")   -- Nektulos (from Freeport)
    SetLocationProximityFunction(zone, -599.41, -33.73, -771.12, 10, "GriffonTower", "Leave") -- Freeport (from Nektulos)
    SetLocationProximityFunction(zone, 523.49, -33.40, 747.70, 10, "GriffonTower", "Leave") -- HiddenCanyon (from Freeport)
    SetLocationProximityFunction(zone, 534.17, -33.42, 757.78, 10, "GriffonTower", "Leave") -- HiddenCanyon (from Nektulos)
    SetLocationProximityFunction(zone, 771.67, -31.97, -588.20, 10, "GriffonTower", "Leave")   -- Nektulos (from HiddenCanyon)
    SetLocationProximityFunction(zone, -597.07, -33.75, -758.43, 10, "GriffonTower", "Leave") -- Freeport (from HiddenCanyon)
    
    SetLocationProximityFunction(zone, -589.91, -49.14, -626.17, 10, "Kraofla", "Leave") -- Search For The Missing
    SetLocationProximityFunction(zone, 427.20, -25.02, -894.54, 10, "Kraofla", "Leave") -- A Festering Problem
end



     
function player_entry(zone, player)
SendPopUpMessage(player, "The Commonlands", 230, 230, 230)    
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

function Kraofla(zone, Spawn)
    if HasQuest(Spawn, SearchForTheMissing) then
        SpawnMob(zone, 330291, true, -589.91, -49.14, -626.17, 175.95)
    elseif HasQuest (Spawn, AFesteringProblem) then
        SpawnMob(zone, 330291, true, 427.20, -25.02, -894.54, 0)
     end
end

function Leave(zone, Spawn)
end