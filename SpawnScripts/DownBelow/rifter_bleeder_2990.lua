--[[
    Script Name    : SpawnScripts/DownBelow/rifter_bleeder_2990.lua
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
 spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -182.66, 1.17, -118.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.22, 1.17, -117.19, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.93, 1.17, -120.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.22, 1.17, -117.19, 2, math.random(0,5))
    MovementLoopAddLocation(NPC, -173.92, 1.17, -122.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -182.66, 1.17, -118.79, 2, math.random(0,5))	
end
