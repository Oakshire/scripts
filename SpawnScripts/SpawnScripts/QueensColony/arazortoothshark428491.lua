--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428491.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428491.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:19:04 
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
	MovementLoopAddLocation(NPC, 89.76, -12.75, -41.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.54, -12.79, -27.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 93.37, -12.09, -16.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.07, -12.17, -28, 2, 0)
	MovementLoopAddLocation(NPC, 80.44, -12, -31.41, 2, 0)
	MovementLoopAddLocation(NPC, 74.67, -11.79, -47.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.52, -12.01, -42.54, 2, 0)
	MovementLoopAddLocation(NPC, 97.07, -12.71, -32.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.99, -12.85, -21.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.56, -11.02, -36.49, 2, 0)
	MovementLoopAddLocation(NPC, 70.29, -10.59, -43.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.79, -11.28, -59.36, 2, 0)
	MovementLoopAddLocation(NPC, 72.95, -11.77, -68.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.76, -10.7, -57.53, 2, 0)
	MovementLoopAddLocation(NPC, 76.1, -10.7, -51.01, 2, 0)
	MovementLoopAddLocation(NPC, 79.05, -10.94, -44.82, 2, 0)
	MovementLoopAddLocation(NPC, 89.08, -12.35, -37.46, 2, 0)
	MovementLoopAddLocation(NPC, 96.01, -12.45, -33.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.85, -12.68, -24.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.26, -12.54, -37.8, 2, 0)
	MovementLoopAddLocation(NPC, 78.23, -12.33, -42.08, 2, 0)
	MovementLoopAddLocation(NPC, 75.8, -12.07, -46.82, 2, 0)
	MovementLoopAddLocation(NPC, 74.08, -12.19, -49.82, 2, 0)
	MovementLoopAddLocation(NPC, 72.94, -11.83, -60.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.86, -10.7, -54.65, 2, 0)
	MovementLoopAddLocation(NPC, 75.65, -10.67, -49.82, 2, 0)
	MovementLoopAddLocation(NPC, 78.88, -11.04, -45.91, 2, 0)
	MovementLoopAddLocation(NPC, 85.2, -12.27, -42.43, 2, 0)
	MovementLoopAddLocation(NPC, 92.71, -12.78, -40.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.51, -11.95, -17.98, 2, math.random(10, 20))
end

