--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428545.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428545.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:26:20 
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
	MovementLoopAddLocation(NPC, 66.82, -13.12, 3.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.86, -12.45, 9.31, 2, 0)
	MovementLoopAddLocation(NPC, 77.77, -12.61, 15.7, 2, 0)
	MovementLoopAddLocation(NPC, 82.37, -12.75, 27.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.28, -12.53, 29.92, 2, 0)
	MovementLoopAddLocation(NPC, 78.05, -11.2, 36.95, 2, 0)
	MovementLoopAddLocation(NPC, 77.48, -11.07, 41.3, 2, 0)
	MovementLoopAddLocation(NPC, 78.9, -12.22, 48.76, 2, 0)
	MovementLoopAddLocation(NPC, 79.65, -12.37, 52.96, 2, 0)
	MovementLoopAddLocation(NPC, 78.05, -12.33, 56.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.27, -11.41, 39.11, 2, 0)
	MovementLoopAddLocation(NPC, 93.99, -12.16, 30.88, 2, 0)
	MovementLoopAddLocation(NPC, 99.64, -12.34, 24.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 97.76, -10.7, 19.34, 2, 0)
	MovementLoopAddLocation(NPC, 96.32, -10.7, 14.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.49, -10.7, 27.87, 2, 0)
	MovementLoopAddLocation(NPC, 73.5, -10.7, 41.25, 2, 0)
	MovementLoopAddLocation(NPC, 68.48, -12.26, 49.97, 2, 0)
	MovementLoopAddLocation(NPC, 66.02, -12.04, 53.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.9, -12.65, 35.91, 2, 0)
	MovementLoopAddLocation(NPC, 67.72, -12.7, 28.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.89, -11.89, 20.58, 2, 0)
	MovementLoopAddLocation(NPC, 64.87, -13.88, 8.55, 2, 0)
	MovementLoopAddLocation(NPC, 66.1, -14.65, 3.19, 2, 0)
	MovementLoopAddLocation(NPC, 67.12, -13.97, -5.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.11, -12.38, 11.06, 2, 0)
	MovementLoopAddLocation(NPC, 64.68, -11.86, 29.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.52, -12.05, 12.47, 2, 0)
	MovementLoopAddLocation(NPC, 67.22, -12.16, 7.24, 2, 0)
	MovementLoopAddLocation(NPC, 74.11, -11.81, -2.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.99, -11.94, 2.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.31, -12.45, -1.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.75, -12.15, -1.56, 2, 0)
end

