--[[
    Script Name    : SpawnScripts/DownBelow/rifter_bleeder_2988.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.03.26 02:03:33
    Script Purpose : Basic Pathing
                   : 
--]]



function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -174.27, 1.17, -122.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -171.15, 1.17, -124.10, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -174.16, 1.17, -116.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -183.61, 1.17, -122.73, 2, math.random(0,5))
    MovementLoopAddLocation(NPC, -174.16, 1.17, -116.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -174.27, 1.17, -122.48, 2, math.random(0,5))	
end
