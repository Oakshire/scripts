--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428533.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428533.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:26:09 
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
	MovementLoopAddLocation(NPC, 82.76, -12.7, 5.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.61, -12.65, 6.13, 2, 0)
	MovementLoopAddLocation(NPC, 70.74, -12.39, 5.22, 2, 0)
	MovementLoopAddLocation(NPC, 63.01, -12.27, 6.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.96, -12.58, 10.86, 2, 0)
	MovementLoopAddLocation(NPC, 68.6, -12.22, 14.67, 2, 0)
	MovementLoopAddLocation(NPC, 74.59, -11.44, 18.87, 2, 0)
	MovementLoopAddLocation(NPC, 80.06, -10.63, 24.14, 2, 0)
	MovementLoopAddLocation(NPC, 86.69, -10.7, 27.45, 2, 0)
	MovementLoopAddLocation(NPC, 90.72, -10.7, 31.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.06, -10.7, 35.68, 2, 0)
	MovementLoopAddLocation(NPC, 80.72, -10.7, 46.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.6, -10.7, 40.32, 2, 0)
	MovementLoopAddLocation(NPC, 63.13, -11.24, 37.04, 2, 0)
	MovementLoopAddLocation(NPC, 56.41, -11.58, 39.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.38, -11.08, 35.41, 2, 0)
	MovementLoopAddLocation(NPC, 55.09, -11.35, 17.85, 2, 0)
	MovementLoopAddLocation(NPC, 52.7, -12.75, 11.75, 2, 0)
	MovementLoopAddLocation(NPC, 49.48, -12.74, 8.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.5, -12.13, 18.66, 2, 0)
	MovementLoopAddLocation(NPC, 32.34, -12.89, 33.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.18, -13.25, 33.45, 2, 0)
	MovementLoopAddLocation(NPC, 9.63, -13.2, 32.62, 2, 0)
	MovementLoopAddLocation(NPC, 0.69, -12.6, 33.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.97, -12.81, 33.58, 2, 0)
	MovementLoopAddLocation(NPC, 32.85, -12.65, 34.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.24, -12.53, 39.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.66, -11.49, 28.68, 2, 0)
	MovementLoopAddLocation(NPC, 63.3, -11.47, 18.1, 2, 0)
	MovementLoopAddLocation(NPC, 76.8, -12.6, 10.11, 2, 0)
end

