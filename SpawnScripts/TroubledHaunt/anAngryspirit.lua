--[[
    Script Name    : SpawnScripts/TroubledHaunt/anAngryspirit.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.23 12:11:10
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 2.91, 0.67, -8.28, 2, 6)
	MovementLoopAddLocation(NPC, 4.88, 0.67, -6.94, 2, 0)
	MovementLoopAddLocation(NPC, 6.86, 0.67, -6.09, 2, 0)
	MovementLoopAddLocation(NPC, 9.26, 0.67, -1.98, 2, 6)
	MovementLoopAddLocation(NPC, 7.73, 0.67, -4.55, 2, 0)
	MovementLoopAddLocation(NPC, 7.57, 0.67, -6.93, 2, 6)
end


