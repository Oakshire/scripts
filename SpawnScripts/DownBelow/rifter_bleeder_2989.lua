--[[
    Script Name    : SpawnScripts/DownBelow/rifter_bleeder_2998.lua
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
	MovementLoopAddLocation(NPC, -177.16, 1.17, -124.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -177.24, 1.17, -121.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -171.88, 1.17, -123.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -180.63, 1.17, -117.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -177.16, 1.17, -124.47, 2, math.random(0,5))
	
end