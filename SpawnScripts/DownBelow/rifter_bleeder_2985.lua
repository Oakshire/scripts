--[[
    Script Name    : SpawnScripts/DownBelow/rifter_bleeder_2985.lua
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
	MovementLoopAddLocation(NPC, -174.73, 1.17, -124.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -178.91, 1.17, -124.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -180.86, 1.17, -118.74, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -186.35, 1.17, -116.55, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.76, 1.17, -119.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -186.53, 1.17, -116.55, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -174.73, 1.17, -124.92, 2, math.random(0,5))
end

