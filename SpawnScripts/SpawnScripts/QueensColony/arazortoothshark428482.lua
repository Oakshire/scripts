--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428482.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428482.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:45 
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
	MovementLoopAddLocation(NPC, 73.17, -11.69, -60.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.46, -11.83, -78.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.73, -11.6, -79.63, 2, 0)
	MovementLoopAddLocation(NPC, 25.86, -11.01, -80.84, 2, 0)
	MovementLoopAddLocation(NPC, 18.17, -10.7, -79.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.64, -10.73, -80.33, 2, 0)
	MovementLoopAddLocation(NPC, 38.94, -11.27, -78.25, 2, 0)
	MovementLoopAddLocation(NPC, 47.06, -11.73, -74.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.66, -11.74, -56.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.16, -11.12, -68.03, 2, 0)
	MovementLoopAddLocation(NPC, 71.05, -10.7, -82.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.25, -12, -64.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.05, -12.01, -78.85, 2, 0)
	MovementLoopAddLocation(NPC, 32.82, -11.66, -82.81, 2, 0)
	MovementLoopAddLocation(NPC, 27.66, -11.61, -84.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.27, -11.81, -82.09, 2, 0)
	MovementLoopAddLocation(NPC, 69.85, -11.72, -67.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.36, -11.68, -57.53, 2, 0)
	MovementLoopAddLocation(NPC, 73.89, -11.91, -50.6, 2, 0)
	MovementLoopAddLocation(NPC, 76.4, -11.89, -46.57, 2, 0)
	MovementLoopAddLocation(NPC, 83.02, -12.17, -41.83, 2, 0)
	MovementLoopAddLocation(NPC, 89.33, -12.46, -38.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.42, -11.28, -36.03, 2, 0)
	MovementLoopAddLocation(NPC, 76.96, -11.01, -33.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.14, -11.18, -49.76, 2, 0)
end

