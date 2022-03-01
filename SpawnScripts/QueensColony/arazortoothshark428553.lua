--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428553.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428553.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:51:42 
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
	MovementLoopAddLocation(NPC, 26.13, -12.53, 59.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.5, -11.46, 67.65, 2, 0)
	MovementLoopAddLocation(NPC, 37.28, -10.83, 79.73, 2, 0)
	MovementLoopAddLocation(NPC, 42.31, -11.02, 90.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.18, -10.7, 79.36, 2, 0)
	MovementLoopAddLocation(NPC, 60.45, -10.58, 68.76, 2, 0)
	MovementLoopAddLocation(NPC, 71.82, -11.7, 60.29, 2, 0)
	MovementLoopAddLocation(NPC, 77.16, -11.96, 55.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.18, -11.2, 56.26, 2, 0)
	MovementLoopAddLocation(NPC, 66.93, -11.19, 55.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.79, -11.21, 48.44, 2, 0)
	MovementLoopAddLocation(NPC, 68.21, -12.39, 41.45, 2, 0)
	MovementLoopAddLocation(NPC, 71.4, -12.33, 33.64, 2, 0)
	MovementLoopAddLocation(NPC, 78.07, -12.36, 15.69, 2, 0)
	MovementLoopAddLocation(NPC, 79.85, -12.26, 8.18, 2, 0)
	MovementLoopAddLocation(NPC, 87.87, -12.56, -6.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.24, -12.22, 12.25, 2, 0)
	MovementLoopAddLocation(NPC, 96.88, -12.21, 18.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.25, -12.58, -2.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 93.9, -12.35, 11.09, 2, 0)
	MovementLoopAddLocation(NPC, 100.65, -12.5, 24.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.43, -12.47, 15.01, 2, 0)
	MovementLoopAddLocation(NPC, 94.1, -12.44, 8.65, 2, 0)
	MovementLoopAddLocation(NPC, 92.32, -12.48, -8.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.7, -12.72, 13.22, 2, 0)
	MovementLoopAddLocation(NPC, 82.36, -12.8, 17.58, 2, 0)
	MovementLoopAddLocation(NPC, 78.43, -12.79, 20.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.42, -12.28, 25.36, 2, 0)
	MovementLoopAddLocation(NPC, 64.97, -11.05, 28.5, 2, 0)
	MovementLoopAddLocation(NPC, 50.3, -10.99, 41.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.44, -11.53, 49.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.18, -11.11, 53.63, 2, 0)
	MovementLoopAddLocation(NPC, 32.04, -12.39, 58.9, 2, 0)
end

