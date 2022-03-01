--[[
        Script Name     :       SpawnScripts/Frostfell/areindeer1587430.lua
	Script Purpose	:	Waypoint Path for areindeer1587430.lua
	Script Author	:	Rylec
	Script Date	:	12-02-2019 05:45:13 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 574.22, -36.06, -1492.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 590.7, -34.01, -1480.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 592.23, -34.06, -1484.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 588.49, -33.97, -1492.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 569.52, -36.1, -1489.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 577.84, -36.02, -1493.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 590.28, -34.02, -1483.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 571.71, -34.58, -1453.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 577.13, -35.99, -1474.36, 2, math.random(10, 20))
end


