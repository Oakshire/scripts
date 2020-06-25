--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428483.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428483.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:16:07 
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
	MovementLoopAddLocation(NPC, 75.87, -11.71, -43.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.01, -11.85, -41.46, 2, 0)
	MovementLoopAddLocation(NPC, 86.33, -11.84, -39.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.49, -10.61, -45.34, 2, 0)
	MovementLoopAddLocation(NPC, 75.45, -10.7, -53.4, 2, 0)
	MovementLoopAddLocation(NPC, 74.46, -11.2, -54.83, 2, 0)
	MovementLoopAddLocation(NPC, 73.82, -11.67, -66.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.51, -10.7, -56.18, 2, 0)
	MovementLoopAddLocation(NPC, 75.94, -10.7, -51.36, 2, 0)
	MovementLoopAddLocation(NPC, 79.59, -10.7, -47.22, 2, 0)
	MovementLoopAddLocation(NPC, 86.09, -10.6, -42.55, 2, 0)
	MovementLoopAddLocation(NPC, 93.55, -11.56, -38.43, 2, 0)
	MovementLoopAddLocation(NPC, 100.43, -11.81, -29.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.66, -11.91, -42.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.55, -12.46, -35.82, 2, 0)
	MovementLoopAddLocation(NPC, 97.59, -12.73, -30.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.62, -12.68, -23.38, 2, 0)
	MovementLoopAddLocation(NPC, 83.74, -12.44, -10.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.63, -11.39, -27.96, 2, 0)
	MovementLoopAddLocation(NPC, 74.86, -10.7, -36.3, 2, 0)
	MovementLoopAddLocation(NPC, 64.31, -10.7, -45.4, 2, 0)
	MovementLoopAddLocation(NPC, 50.27, -11.07, -47.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.16, -10.59, -46.85, 2, 0)
	MovementLoopAddLocation(NPC, 71.24, -11.38, -44.98, 2, 0)
end

