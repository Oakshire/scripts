--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427455.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427455.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:51:39 
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
	MovementLoopAddLocation(NPC, 33.24, -11.57, 55.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.33, -11.24, 49.25, 2, 0)
	MovementLoopAddLocation(NPC, 53.12, -11.46, 44.02, 2, 0)
	MovementLoopAddLocation(NPC, 59.98, -12.57, 41.44, 2, 0)
	MovementLoopAddLocation(NPC, 65.87, -12.87, 39.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.41, -12.37, 33.44, 2, 0)
	MovementLoopAddLocation(NPC, 74.06, -13.11, 26.71, 2, 0)
	MovementLoopAddLocation(NPC, 75.1, -13.28, 20.75, 2, 0)
	MovementLoopAddLocation(NPC, 74.29, -12.37, 13.39, 2, 0)
	MovementLoopAddLocation(NPC, 74.09, -12.57, 7.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.64, -12.86, 7.65, 2, 0)
	MovementLoopAddLocation(NPC, 56.27, -12.71, 12.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.02, -12.59, 4.84, 2, 0)
	MovementLoopAddLocation(NPC, 75.34, -12.2, -1.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.61, -12.59, -0.45, 2, 0)
	MovementLoopAddLocation(NPC, 55.81, -12.68, 1.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.66, -12.41, 5.34, 2, 0)
	MovementLoopAddLocation(NPC, 39.62, -13.48, 15.81, 2, 0)
	MovementLoopAddLocation(NPC, 31.94, -13.05, 23.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.45, -13.05, 20.62, 2, 0)
	MovementLoopAddLocation(NPC, 53.06, -11.64, 16.96, 2, 0)
	MovementLoopAddLocation(NPC, 66.46, -12.21, 13.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.35, -12.16, 13.07, 2, 0)
	MovementLoopAddLocation(NPC, 82.01, -12.69, 13.42, 2, 0)
	MovementLoopAddLocation(NPC, 91.38, -12.45, 10.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.62, -12.3, 15.85, 2, 0)
	MovementLoopAddLocation(NPC, 73.2, -11.74, 19.31, 2, 0)
	MovementLoopAddLocation(NPC, 68.08, -11.09, 24.91, 2, 0)
	MovementLoopAddLocation(NPC, 53.91, -10.7, 36.81, 2, 0)
	MovementLoopAddLocation(NPC, 40.95, -11.01, 47.85, 2, math.random(10, 20))
end
