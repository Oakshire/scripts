--[[
    Script Name    : SpawnScripts/DownBelow/rifter_bleeder_2983.lua
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
	MovementLoopAddLocation(NPC, -179.41, 1.17, -125.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -180.83, 1.17, -121.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -185.14, 1.17, -125.67, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.50, 1.17, -122.44, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -185.14, 1.17, -125.67, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -174.00, 1.17, -117.20, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -175.82, 1.17, -126.14, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -179.41, 1.17, -125.04, 2, math.random(0,5))
end

