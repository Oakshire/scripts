--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427391.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427391.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:14:18 
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
	MovementLoopAddLocation(NPC, 75.23, -10.7, -50.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.07, -11.26, -60.01, 2, 0)
	MovementLoopAddLocation(NPC, 49.85, -10.99, -60.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.59, -11.01, -59.89, 2, 0)
	MovementLoopAddLocation(NPC, 56.49, -10.81, -58.4, 2, 0)
	MovementLoopAddLocation(NPC, 71.63, -11.05, -48.25, 2, 0)
	MovementLoopAddLocation(NPC, 77.57, -11.25, -43.5, 2, 0)
	MovementLoopAddLocation(NPC, 91.8, -11.8, -33.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 86.64, -12, -35.49, 2, 0)
	MovementLoopAddLocation(NPC, 78.14, -11.38, -38.39, 2, 0)
	MovementLoopAddLocation(NPC, 73.67, -10.7, -39.89, 2, 0)
	MovementLoopAddLocation(NPC, 63.7, -10.7, -44.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.11, -10.7, -49.39, 2, 0)
	MovementLoopAddLocation(NPC, 69.88, -11.34, -64.77, 2, 0)
	MovementLoopAddLocation(NPC, 70.66, -11.8, -76.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.51, -11.82, -74.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.86, -11.93, -38.78, 2, 0)
	MovementLoopAddLocation(NPC, 87.72, -12.26, -32, 2, 0)
	MovementLoopAddLocation(NPC, 97.02, -11.94, -16.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 100.82, -12.16, -25.63, 2, 0)
	MovementLoopAddLocation(NPC, 101.57, -12.15, -29.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.2, -12.47, -40.04, 2, 0)
	MovementLoopAddLocation(NPC, 77.85, -12.45, -42.48, 2, 0)
	MovementLoopAddLocation(NPC, 58.35, -11.87, -70.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.52, -11.82, -72.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.76, -11.83, -69.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.8, -11.58, -57.67, 2, 0)
	MovementLoopAddLocation(NPC, 73.8, -11.38, -49.63, 2, 0)
	MovementLoopAddLocation(NPC, 75.46, -11.25, -37.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.61, -11.14, -41.92, 2, 0)
end
