--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428540.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428540.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:21:14 
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
	MovementLoopAddLocation(NPC, 48.92, -12.8, 18.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.02, -12.55, 19.85, 2, 0)
	MovementLoopAddLocation(NPC, 26.33, -13.02, 23.15, 2, 0)
	MovementLoopAddLocation(NPC, 19.09, -13.23, 24.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.02, -12.88, 15.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.07, -13.33, 21.57, 2, 0)
	MovementLoopAddLocation(NPC, -3.14, -13.74, 31.02, 2, 0)
	MovementLoopAddLocation(NPC, -8.96, -14.39, 32.36, 2, 0)
	MovementLoopAddLocation(NPC, -15.49, -14.45, 32.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.25, -13.86, 27.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.46, -12.73, 31.99, 2, 0)
	MovementLoopAddLocation(NPC, 8.76, -12.57, 32.03, 2, 0)
	MovementLoopAddLocation(NPC, 17.15, -12.04, 30.65, 2, 0)
	MovementLoopAddLocation(NPC, 23.97, -12.24, 30.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.31, -13.23, 28.47, 2, 0)
	MovementLoopAddLocation(NPC, 34.23, -13.56, 24.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.56, -13.47, 21.06, 2, 0)
	MovementLoopAddLocation(NPC, 38.4, -13.66, 16.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.82, -12.73, 21.42, 2, 0)
	MovementLoopAddLocation(NPC, 22, -12.3, 36.12, 2, 0)
	MovementLoopAddLocation(NPC, 18.21, -12.13, 41.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.67, -13.52, 26.09, 2, 0)
	MovementLoopAddLocation(NPC, 35.93, -13.55, 19.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.85, -11.94, 8.44, 2, 0)
	MovementLoopAddLocation(NPC, 57.99, -12.34, 0.91, 2, 0)
	MovementLoopAddLocation(NPC, 68.72, -12.44, -1.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.85, -12.57, -2.49, 2, 0)
	MovementLoopAddLocation(NPC, 82.41, -12.56, -6.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.5, -10.58, 7.58, 2, 0)
	MovementLoopAddLocation(NPC, 54.19, -12.8, 15.87, 2, 0)
end

