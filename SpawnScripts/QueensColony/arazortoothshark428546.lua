--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428546.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428546.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:47:44 
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
	MovementLoopAddLocation(NPC, 55.82, -11.77, 46.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.77, -11.34, 43.34, 2, 0)
	MovementLoopAddLocation(NPC, 42.5, -11.58, 41.43, 2, 0)
	MovementLoopAddLocation(NPC, 30.15, -13.57, 34.9, 2, 0)
	MovementLoopAddLocation(NPC, 23.88, -13.65, 32.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.51, -12.34, 46.16, 2, 0)
	MovementLoopAddLocation(NPC, 34.87, -11.85, 51.12, 2, 0)
	MovementLoopAddLocation(NPC, 39.88, -11.92, 53.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.71, -11.1, 41.17, 2, 0)
	MovementLoopAddLocation(NPC, 47.72, -10.7, 25.22, 2, 0)
	MovementLoopAddLocation(NPC, 53.9, -11.73, 15.88, 2, 0)
	MovementLoopAddLocation(NPC, 56.38, -13.3, 9.82, 2, 0)
	MovementLoopAddLocation(NPC, 59.2, -13.34, 6.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.39, -12.78, 3.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.6, -11.8, 2.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.76, -12.05, 10.82, 2, 0)
	MovementLoopAddLocation(NPC, 60.65, -11.2, 27.17, 2, 0)
	MovementLoopAddLocation(NPC, 59.44, -11.13, 35.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.29, -11.06, 34.25, 2, 0)
	MovementLoopAddLocation(NPC, 7.59, -12.53, 36.28, 2, 0)
	MovementLoopAddLocation(NPC, -12.57, -13.65, 39.45, 2, 0)
	MovementLoopAddLocation(NPC, -16.86, -13.43, 41.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.76, -13.62, 36.48, 2, 0)
	MovementLoopAddLocation(NPC, 29.47, -13.2, 28.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.64, -11.42, 42.05, 2, 0)
end


