--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427433.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427433.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:25:35 
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
	MovementLoopAddLocation(NPC, 33.48, -10.96, 74.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.6, -10.7, 70.59, 2, 0)
	MovementLoopAddLocation(NPC, 58.77, -10.7, 56.39, 2, 0)
	MovementLoopAddLocation(NPC, 69.02, -10.7, 46.71, 2, 0)
	MovementLoopAddLocation(NPC, 73.1, -11.68, 41.79, 2, 0)
	MovementLoopAddLocation(NPC, 74.81, -12.09, 34.34, 2, 0)
	MovementLoopAddLocation(NPC, 75.22, -12.42, 28.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.41, -12.47, 21.72, 2, 0)
	MovementLoopAddLocation(NPC, 85.03, -12.45, 16.92, 2, 0)
	MovementLoopAddLocation(NPC, 94.04, -11.79, 6.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.39, -10.7, 14.39, 2, 0)
	MovementLoopAddLocation(NPC, 74.69, -10.7, 23.32, 2, 0)
	MovementLoopAddLocation(NPC, 68.55, -12.53, 29.8, 2, 0)
	MovementLoopAddLocation(NPC, 66.75, -12.8, 34.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.32, -12.79, 45.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.82, -12.15, 46.67, 2, 0)
	MovementLoopAddLocation(NPC, 52.6, -11.78, 46.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.15, -12.6, 49.1, 2, 0)
	MovementLoopAddLocation(NPC, 43.59, -12.49, 52.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.08, -11.7, 62.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.83, -11.2, 62.57, 2, 0)
	MovementLoopAddLocation(NPC, 57.24, -11.26, 63.9, 2, 0)
	MovementLoopAddLocation(NPC, 69.84, -11.27, 70.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.75, -10.96, 60.19, 2, 0)
	MovementLoopAddLocation(NPC, 48.09, -11.34, 49.78, 2, 0)
	MovementLoopAddLocation(NPC, 42.73, -11.55, 45.39, 2, 0)
	MovementLoopAddLocation(NPC, 28.85, -13.13, 30.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.79, -13.52, 21.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.06, -13.64, 21.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.29, -13.61, 15.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.88, -11.76, 40.44, 2, 0)
end

