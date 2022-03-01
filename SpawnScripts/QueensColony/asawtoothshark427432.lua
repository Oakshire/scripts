--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427432.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427432.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:25:15 
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
	MovementLoopAddLocation(NPC, -11.34, -13.74, 33.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.16, -11.89, 45.32, 2, 0)
	MovementLoopAddLocation(NPC, -11.23, -11.06, 56.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.38, -12.58, 47.43, 2, 0)
	MovementLoopAddLocation(NPC, 8.01, -14.31, 40.05, 2, 0)
	MovementLoopAddLocation(NPC, 10.49, -14.28, 34.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.45, -13.47, 26.37, 2, 0)
	MovementLoopAddLocation(NPC, 34.18, -13.78, 18.86, 2, 0)
	MovementLoopAddLocation(NPC, 39.85, -13.65, 13.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.97, -12.33, 16.33, 2, 0)
	MovementLoopAddLocation(NPC, 61.41, -12.43, 14.64, 2, 0)
	MovementLoopAddLocation(NPC, 67.96, -13.3, 13.4, 2, 0)
	MovementLoopAddLocation(NPC, 71.89, -13.37, 13.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.77, -12.88, 21.53, 2, 0)
	MovementLoopAddLocation(NPC, 64.08, -12.66, 34.98, 2, 0)
	MovementLoopAddLocation(NPC, 59.53, -12.77, 46.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.77, -12.25, 56.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.24, -11.26, 55.07, 2, 0)
	MovementLoopAddLocation(NPC, 39.89, -11.65, 50.25, 2, 0)
	MovementLoopAddLocation(NPC, 27.33, -13.47, 35.23, 2, 0)
	MovementLoopAddLocation(NPC, 23.47, -13.59, 30.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.88, -11.82, 55.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.44, -12.11, 51.43, 2, 0)
	MovementLoopAddLocation(NPC, 16.69, -13.15, 39.42, 2, 0)
	MovementLoopAddLocation(NPC, 8.97, -13.55, 30.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.7, -12.35, 37.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.14, -13.29, 39.54, 2, 0)
	MovementLoopAddLocation(NPC, 7.63, -14.62, 39.92, 2, 0)
	MovementLoopAddLocation(NPC, 12.03, -14.94, 41.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.37, -13.67, 37.24, 2, 0)
end

