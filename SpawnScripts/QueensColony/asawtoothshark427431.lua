--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427431.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427431.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:24:44 
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
	MovementLoopAddLocation(NPC, 5.62, -13.58, 24.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.85, -13.36, 31.92, 2, 0)
	MovementLoopAddLocation(NPC, 15.31, -14.03, 43.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.67, -10.7, 73.89, 2, 0)
	MovementLoopAddLocation(NPC, -7.52, -11.02, 73.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.13, -10.7, 70.31, 2, 0)
	MovementLoopAddLocation(NPC, 15.94, -10.7, 66.6, 2, 0)
	MovementLoopAddLocation(NPC, 27.99, -10.98, 55.85, 2, 0)
	MovementLoopAddLocation(NPC, 35.1, -11.97, 49.11, 2, 0)
	MovementLoopAddLocation(NPC, 45.28, -11.33, 34.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.33, -11.22, 24.01, 2, 0)
	MovementLoopAddLocation(NPC, 60.21, -11.69, 18.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.96, -12.18, 20.86, 2, 0)
	MovementLoopAddLocation(NPC, 29.11, -12.25, 28.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.61, -11.69, 56.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.49, -12.15, 46.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.64, -10.7, 55.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.51, -11.69, 52.61, 2, 0)
	MovementLoopAddLocation(NPC, 62.19, -11.9, 48.36, 2, 0)
	MovementLoopAddLocation(NPC, 73.45, -11.8, 46.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.62, -12.14, 44.57, 2, 0)
	MovementLoopAddLocation(NPC, 80.91, -12.22, 42.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.11, -12.24, 39.52, 2, 0)
	MovementLoopAddLocation(NPC, 74.35, -12.5, 33.3, 2, 0)
	MovementLoopAddLocation(NPC, 76.42, -13.72, 18.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.03, -12.76, 24.35, 2, 0)
	MovementLoopAddLocation(NPC, 66.13, -12.47, 30.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.83, -11.2, 30.74, 2, 0)
	MovementLoopAddLocation(NPC, 46.79, -11.16, 30.9, 2, 0)
	MovementLoopAddLocation(NPC, 42.39, -11.78, 30.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.55, -12.51, 30.5, 2, 0)
	MovementLoopAddLocation(NPC, 29.54, -13.1, 28.66, 2, 0)
	MovementLoopAddLocation(NPC, 19.14, -13.39, 27.93, 2, 0)
end

