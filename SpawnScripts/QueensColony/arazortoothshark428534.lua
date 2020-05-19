--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428534.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428534.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:26:40 
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
	MovementLoopAddLocation(NPC, 75.44, -11.73, 46.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.41, -11.77, 49.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.57, -13.02, 45.5, 2, 0)
	MovementLoopAddLocation(NPC, 14.44, -14.27, 44.75, 2, 0)
	MovementLoopAddLocation(NPC, 9.13, -14.34, 42.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.83, -14.43, 39.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.88, -13.01, 30.42, 2, 0)
	MovementLoopAddLocation(NPC, 13.7, -12.58, 26.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.92, -10.7, 30.7, 2, 0)
	MovementLoopAddLocation(NPC, 41.24, -10.7, 32, 2, 0)
	MovementLoopAddLocation(NPC, 49.85, -10.7, 34.36, 2, 0)
	MovementLoopAddLocation(NPC, 53.94, -11.12, 38.72, 2, 0)
	MovementLoopAddLocation(NPC, 59.4, -11.64, 40.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.47, -11.05, 34.34, 2, 0)
	MovementLoopAddLocation(NPC, 38.67, -11.27, 29.84, 2, 0)
	MovementLoopAddLocation(NPC, 30.01, -13.62, 25.25, 2, 0)
	MovementLoopAddLocation(NPC, 25.65, -13.63, 24.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.16, -13.29, 25.06, 2, 0)
	MovementLoopAddLocation(NPC, 50.35, -10.99, 27.24, 2, 0)
	MovementLoopAddLocation(NPC, 54.24, -11.18, 28.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.28, -11.19, 29.84, 2, 0)
	MovementLoopAddLocation(NPC, 70.48, -11.17, 43.06, 2, 0)
	MovementLoopAddLocation(NPC, 73.42, -11.63, 45.73, 2, 0)
end

