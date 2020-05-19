--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428476.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428476.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:14:02 
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
	MovementLoopAddLocation(NPC, 70.36, -11.85, -60.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.08, -11.77, -70.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.2, -12.04, -80.57, 2, 0)
	MovementLoopAddLocation(NPC, 42.09, -11.82, -82.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.26, -11.86, -79.97, 2, 0)
	MovementLoopAddLocation(NPC, 65.72, -11.78, -75.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.8, -11.73, -62.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.07, -12.1, -73.09, 2, 0)
	MovementLoopAddLocation(NPC, 39.62, -11.83, -78.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.61, -11.76, -59.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.08, -11.94, -48.22, 2, 0)
	MovementLoopAddLocation(NPC, 85.13, -11.7, -35.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.74, -12.14, -36.63, 2, 0)
	MovementLoopAddLocation(NPC, 96.07, -11.69, -42.04, 2, 0)
	MovementLoopAddLocation(NPC, 98.07, -11.56, -42.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.71, -10.7, -45.76, 2, 0)
	MovementLoopAddLocation(NPC, 80.63, -10.7, -47.31, 2, 0)
	MovementLoopAddLocation(NPC, 75.37, -10.7, -50.2, 2, 0)
	MovementLoopAddLocation(NPC, 68.42, -10.7, -55.97, 2, 0)
	MovementLoopAddLocation(NPC, 45.82, -10.7, -70.5, 2, 0)
	MovementLoopAddLocation(NPC, 38.79, -10.96, -78.26, 2, 0)
	MovementLoopAddLocation(NPC, 34.91, -11.71, -82.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.73, -11.82, -63.56, 2, math.random(10, 20))
end

