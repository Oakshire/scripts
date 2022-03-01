--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428492.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428492.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:19:22 
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
	MovementLoopAddLocation(NPC, 52.11, -11.81, -74.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.1, -11.97, -77.8, 2, 0)
	MovementLoopAddLocation(NPC, 61.4, -11.69, -80.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.64, -10.58, -69.78, 2, 0)
	MovementLoopAddLocation(NPC, 75.42, -10.7, -56.15, 2, 0)
	MovementLoopAddLocation(NPC, 75.98, -10.7, -51.79, 2, 0)
	MovementLoopAddLocation(NPC, 78.33, -10.7, -49.09, 2, 0)
	MovementLoopAddLocation(NPC, 82.04, -10.7, -47.1, 2, 0)
	MovementLoopAddLocation(NPC, 100.08, -11.71, -37.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96.32, -12.21, -38.24, 2, 0)
	MovementLoopAddLocation(NPC, 89.26, -12.63, -39.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.67, -12.31, -40.57, 2, 0)
	MovementLoopAddLocation(NPC, 68.78, -11.92, -48.3, 2, 0)
	MovementLoopAddLocation(NPC, 66.57, -11.81, -49.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.04, -11.85, -44.54, 2, 0)
	MovementLoopAddLocation(NPC, 101.39, -11.16, -39.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 97.24, -11.37, -40.91, 2, 0)
	MovementLoopAddLocation(NPC, 79, -10.75, -46.67, 2, 0)
	MovementLoopAddLocation(NPC, 71.94, -10.6, -51.64, 2, 0)
	MovementLoopAddLocation(NPC, 45.92, -10.99, -72.1, 2, 0)
	MovementLoopAddLocation(NPC, 42.9, -10.7, -73.26, 2, 0)
	MovementLoopAddLocation(NPC, 37.59, -10.78, -74.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.83, -11.12, -69.92, 2, 0)
	MovementLoopAddLocation(NPC, 71.27, -10.74, -42.51, 2, 0)
	MovementLoopAddLocation(NPC, 94.59, -11.82, -21.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.47, -12.71, -41.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.18, -11.69, -31.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.39, -11.28, -35.83, 2, 0)
	MovementLoopAddLocation(NPC, 72.75, -10.96, -41.12, 2, 0)
	MovementLoopAddLocation(NPC, 68.47, -11, -46.19, 2, 0)
end
