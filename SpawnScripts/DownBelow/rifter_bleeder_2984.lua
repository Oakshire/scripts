--[[
    Script Name    : SpawnScripts/DownBelow/rifter_bleeder_2984.lua
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
	MovementLoopAddLocation(NPC, -177.88, 1.17, -118.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -175.14, 1.17, -123.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -172.42, 1.17, -118.00, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -180.60, 1.17, -122.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -185.69, 1.17, -116.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.81, 1.17, -119.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -185.69, 1.17, -116.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -177.88, 1.17, -118.62, 2, math.random(0,5))
end

