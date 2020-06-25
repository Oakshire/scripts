--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427434.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427434.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:26:05 
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
	MovementLoopAddLocation(NPC, 49.48, -12.56, 9.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.83, -12.21, 13.15, 2, 0)
	MovementLoopAddLocation(NPC, 46.24, -11.83, 21.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.72, -11.79, 14.32, 2, 0)
	MovementLoopAddLocation(NPC, 59.08, -12.24, 7.89, 2, 0)
	MovementLoopAddLocation(NPC, 68.79, -14.07, -0.38, 2, 0)
	MovementLoopAddLocation(NPC, 73.09, -14.08, -3.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.08, -14.3, 1.08, 2, 0)
	MovementLoopAddLocation(NPC, 66.9, -13.74, 8.01, 2, 0)
	MovementLoopAddLocation(NPC, 65.99, -12.57, 14.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.27, -11.9, 32.23, 2, 0)
	MovementLoopAddLocation(NPC, 57.28, -11.84, 41.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.56, -11.18, 47.48, 2, 0)
	MovementLoopAddLocation(NPC, 32.79, -11.73, 62.46, 2, 0)
	MovementLoopAddLocation(NPC, 31.2, -11.53, 65.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.44, -10.7, 71.1, 2, 0)
	MovementLoopAddLocation(NPC, 51.94, -10.7, 74.94, 2, 0)
	MovementLoopAddLocation(NPC, 55.85, -11.5, 80.67, 2, 0)
	MovementLoopAddLocation(NPC, 62.05, -11.66, 83.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.73, -11.34, 65.52, 2, 0)
	MovementLoopAddLocation(NPC, 48.43, -11.62, 54.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.71, -11.96, 43.8, 2, 0)
	MovementLoopAddLocation(NPC, 39.08, -12.59, 33.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.23, -12.23, 27.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.92, -12.34, 23.33, 2, 0)
end

