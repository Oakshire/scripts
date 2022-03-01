--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428550.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428550.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:49:43 
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
	MovementLoopAddLocation(NPC, 65.78, -13.69, 42.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.04, -11.97, 41.93, 2, 0)
	MovementLoopAddLocation(NPC, 50.08, -11.44, 41.59, 2, 0)
	MovementLoopAddLocation(NPC, 36.14, -12.19, 40.68, 2, 0)
	MovementLoopAddLocation(NPC, 12.14, -11.81, 34.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.4, -13.01, 39.57, 2, 0)
	MovementLoopAddLocation(NPC, 17.13, -12.69, 45.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.29, -13.39, 36.47, 2, 0)
	MovementLoopAddLocation(NPC, 33.66, -13.23, 30, 2, 0)
	MovementLoopAddLocation(NPC, 36.93, -13.27, 29.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.13, -12.24, 23.66, 2, 0)
	MovementLoopAddLocation(NPC, 54.29, -12.01, 18.14, 2, 0)
	MovementLoopAddLocation(NPC, 59.52, -12.34, 13.81, 2, 0)
	MovementLoopAddLocation(NPC, 67.36, -13.22, 8.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.55, -12.71, 10.92, 2, 0)
	MovementLoopAddLocation(NPC, 50.24, -12.64, 9.69, 2, 0)
	MovementLoopAddLocation(NPC, 45.17, -12.88, 7.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.46, -12.06, 14, 2, 0)
	MovementLoopAddLocation(NPC, 34.39, -12.35, 22.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.03, -12.55, 18.52, 2, 0)
	MovementLoopAddLocation(NPC, 56.7, -12.09, 18.71, 2, 0)
	MovementLoopAddLocation(NPC, 61.59, -12.49, 20.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.04, -11.99, 26.47, 2, 0)
	MovementLoopAddLocation(NPC, 62.54, -12.23, 36.34, 2, 0)
	MovementLoopAddLocation(NPC, 64.03, -13.12, 41.99, 2, 0)
	MovementLoopAddLocation(NPC, 68.6, -13.62, 46.56, 2, math.random(10, 20))
end


