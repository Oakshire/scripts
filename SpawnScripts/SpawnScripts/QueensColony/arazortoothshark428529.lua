--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428529.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428529.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:24:47 
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
	MovementLoopAddLocation(NPC, 15.72, -12.68, 18.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.66, -12.89, 33.42, 2, 0)
	MovementLoopAddLocation(NPC, 22.45, -13.56, 42.89, 2, 0)
	MovementLoopAddLocation(NPC, 25.35, -13.39, 45.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.95, -13.16, 39.87, 2, 0)
	MovementLoopAddLocation(NPC, 23.81, -12.84, 31.5, 2, 0)
	MovementLoopAddLocation(NPC, 23.5, -13.33, 22.93, 2, 0)
	MovementLoopAddLocation(NPC, 25.53, -13.5, 19.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.12, -12.8, 28.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.27, -13.23, 47.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29, -12.31, 52.16, 2, 0)
	MovementLoopAddLocation(NPC, 25.96, -11.71, 68.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.02, -11.98, 51.27, 2, 0)
	MovementLoopAddLocation(NPC, 33.49, -12.11, 44.86, 2, 0)
	MovementLoopAddLocation(NPC, 39.63, -12.66, 33.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.51, -12.14, 30.28, 2, 0)
	MovementLoopAddLocation(NPC, 46.48, -11.57, 27.59, 2, 0)
	MovementLoopAddLocation(NPC, 54.77, -11.31, 24.15, 2, 0)
	MovementLoopAddLocation(NPC, 62.33, -12.44, 21.81, 2, 0)
	MovementLoopAddLocation(NPC, 66.11, -12.79, 19.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.3, -12.26, 17.31, 2, 0)
	MovementLoopAddLocation(NPC, 52.09, -12.19, 12.19, 2, 0)
	MovementLoopAddLocation(NPC, 48.9, -12.63, 8.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.81, -12.24, 15.09, 2, 0)
	MovementLoopAddLocation(NPC, 26.87, -12.15, 15.84, 2, 0)
	MovementLoopAddLocation(NPC, 21.94, -12.62, 18.93, 2, 0)
	MovementLoopAddLocation(NPC, 15.69, -13.67, 25.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.82, -14.05, 44.48, 2, 0)
	MovementLoopAddLocation(NPC, 19.26, -13.6, 50.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.65, -13.66, 47.96, 2, 0)
	MovementLoopAddLocation(NPC, 2.39, -12.22, 37.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.63, -12.52, 34.2, 2, 0)
	MovementLoopAddLocation(NPC, 10.1, -12.79, 30.53, 2, 0)
	MovementLoopAddLocation(NPC, 12.1, -12.89, 27.79, 2, 0)
end

