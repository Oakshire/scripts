--[[
        Script Name     :       SpawnScripts/Frostfell/areindeer1587428.lua
	Script Purpose	:	Waypoint Path for areindeer1587428.lua
	Script Author	:	Rylec
	Script Date	:	12-01-2019 07:29:03 
	Script Notes	:	Script by Rylec
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
	MovementLoopAddLocation(NPC, 560.8, -36.22, -1496.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 548.87, -36.25, -1492.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 556.7, -36.27, -1498.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 552.17, -35.18, -1509.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 552.95, -36.27, -1497.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 559.7, -34.55, -1483.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 563.84, -36.18, -1494.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 549.04, -34.97, -1482.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 547.79, -36.22, -1467.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 545.73, -35.19, -1479.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 557.53, -36.26, -1497.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 551.82, -35.14, -1508.9, 2, math.random(10, 20))
end
