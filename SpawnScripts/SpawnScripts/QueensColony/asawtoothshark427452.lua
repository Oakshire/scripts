--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427452.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427452.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:49:40 
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
	MovementLoopAddLocation(NPC, 76.47, -12.81, 39.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.89, -12.76, 35.23, 2, 0)
	MovementLoopAddLocation(NPC, 79.12, -12.6, 26.81, 2, 0)
	MovementLoopAddLocation(NPC, 86.09, -12.41, 20.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.4, -12.52, 25, 2, 0)
	MovementLoopAddLocation(NPC, 72.31, -13.15, 35.41, 2, 0)
	MovementLoopAddLocation(NPC, 66.21, -13.44, 39.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.23, -10.38, 39.55, 2, 0)
	MovementLoopAddLocation(NPC, 41.45, -11.13, 39.44, 2, 0)
	MovementLoopAddLocation(NPC, 34.54, -12.15, 38, 2, 0)
	MovementLoopAddLocation(NPC, 28.33, -12.41, 35.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.94, -12.63, 30.36, 2, 0)
	MovementLoopAddLocation(NPC, 13.41, -12.34, 21.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.1, -13.12, 28.2, 2, 0)
	MovementLoopAddLocation(NPC, -6.11, -13.69, 33.05, 2, 0)
	MovementLoopAddLocation(NPC, -8.39, -13.53, 34.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.64, -12.71, 36.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.98, -12.47, 40.38, 2, 0)
	MovementLoopAddLocation(NPC, 4.92, -12.41, 52.05, 2, 0)
	MovementLoopAddLocation(NPC, 15.77, -11.31, 65.01, 2, 0)
	MovementLoopAddLocation(NPC, 20.63, -10.7, 70.23, 2, 0)
	MovementLoopAddLocation(NPC, 42.64, -11.3, 89.76, 2, 0)
	MovementLoopAddLocation(NPC, 46.06, -11.56, 96.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.63, -11.63, 90.06, 2, 0)
	MovementLoopAddLocation(NPC, 52.68, -10.56, 78.93, 2, 0)
	MovementLoopAddLocation(NPC, 54.87, -10.7, 72.16, 2, 0)
	MovementLoopAddLocation(NPC, 55.22, -10.66, 65.98, 2, 0)
	MovementLoopAddLocation(NPC, 57.02, -11.26, 61.04, 2, 0)
	MovementLoopAddLocation(NPC, 59.49, -11.66, 56.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.92, -11.01, 47.06, 2, 0)
	MovementLoopAddLocation(NPC, 73.76, -11.21, 41.49, 2, 0)
	MovementLoopAddLocation(NPC, 78, -12.29, 40.17, 2, 0)
	MovementLoopAddLocation(NPC, 83.89, -12.37, 41.51, 2, math.random(10, 20))
end

