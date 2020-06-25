--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428530.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428530.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:25:18 
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
	MovementLoopAddLocation(NPC, -17.66, -11.75, 31.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -4.86, -11.89, 35.59, 2, 0)
	MovementLoopAddLocation(NPC, 8.55, -13.08, 43.11, 2, 0)
	MovementLoopAddLocation(NPC, 12.83, -12.86, 46.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5, -12.79, 43.99, 2, 0)
	MovementLoopAddLocation(NPC, -4.21, -12.04, 45.1, 2, 0)
	MovementLoopAddLocation(NPC, -8.07, -11.59, 46.87, 2, 0)
	MovementLoopAddLocation(NPC, -13.78, -11.69, 52.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3, -11.04, 60.55, 2, 0)
	MovementLoopAddLocation(NPC, 2.55, -10.61, 65.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.08, -10.64, 24.24, 2, 0)
	MovementLoopAddLocation(NPC, 75.32, -12.33, 11.83, 2, 0)
	MovementLoopAddLocation(NPC, 80.09, -12.19, 8.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.82, -12.55, 4.24, 2, 0)
	MovementLoopAddLocation(NPC, 63.16, -11.77, -0.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.28, -11.19, 11.34, 2, 0)
	MovementLoopAddLocation(NPC, 80.5, -12.19, 22.42, 2, 0)
	MovementLoopAddLocation(NPC, 82.94, -12.3, 27.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.93, -11.09, 21.69, 2, 0)
	MovementLoopAddLocation(NPC, 79.31, -10.7, 10.6, 2, 0)
	MovementLoopAddLocation(NPC, 80.01, -12.47, -0.62, 2, 0)
	MovementLoopAddLocation(NPC, 79.61, -12.61, -8.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.44, -13.12, -0.71, 2, 0)
	MovementLoopAddLocation(NPC, 56.48, -12.3, 5.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.59, -15.2, 0.66, 2, 0)
	MovementLoopAddLocation(NPC, 73.17, -15.38, -4.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.46, -11.84, 7.57, 2, 0)
	MovementLoopAddLocation(NPC, 76.3, -10.7, 22.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.54, -10.7, 29.39, 2, 0)
	MovementLoopAddLocation(NPC, 24.47, -10.7, 43.74, 2, 0)
	MovementLoopAddLocation(NPC, 15.82, -11.26, 48.96, 2, 0)
	MovementLoopAddLocation(NPC, 10.83, -11.25, 54.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.48, -11.31, 58.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.04, -12.54, 51.62, 2, 0)
	MovementLoopAddLocation(NPC, -5.96, -12.65, 43.13, 2, 0)
end

