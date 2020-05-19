--[[
        Script Name     :       SpawnScripts/everfrost_frostfell_new01/areindeer1586728.lua
	Script Purpose	:	Waypoint Path for areindeer1586728.lua
	Script Author	:	Rylec
	Script Date	:	12-01-2019 07:29:08 
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
	MovementLoopAddLocation(NPC, 74.41, -36.68, -1465.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.08, -36.68, -1455.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.9, -36.71, -1465.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.17, -36.68, -1452.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.43, -36.68, -1462.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.87, -36.68, -1453.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.32, -36.68, -1453.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.62, -36.68, -1462.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.62, -36.68, -1458.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.98, -36.68, -1459.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.57, -36.68, -1455.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.72, -36.68, -1447.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.24, -36.68, -1455.07, 2, math.random(10, 20))
end

