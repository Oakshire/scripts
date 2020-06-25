--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428547.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428547.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:48:13 
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
	MovementLoopAddLocation(NPC, 9.15, -12.51, 24.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.85, -11.87, 30.14, 2, 0)
	MovementLoopAddLocation(NPC, -21.85, -11.62, 31.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.32, -11.97, 37.27, 2, 0)
	MovementLoopAddLocation(NPC, -11.53, -12.15, 42.98, 2, 0)
	MovementLoopAddLocation(NPC, -7, -11.73, 50.93, 2, 0)
	MovementLoopAddLocation(NPC, -6.25, -11.79, 54.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.04, -12.03, 45.11, 2, 0)
	MovementLoopAddLocation(NPC, 9.87, -13.34, 37.62, 2, 0)
	MovementLoopAddLocation(NPC, 18.35, -13.06, 36.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.05, -13.15, 28.07, 2, 0)
	MovementLoopAddLocation(NPC, 20.9, -12.83, 19.16, 2, 0)
	MovementLoopAddLocation(NPC, 26.15, -12.86, 11.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.5, -12.97, 15, 2, 0)
	MovementLoopAddLocation(NPC, 40.12, -11.26, 22.57, 2, 0)
	MovementLoopAddLocation(NPC, 50.39, -11.1, 31.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.2, -11.23, 31.24, 2, 0)
	MovementLoopAddLocation(NPC, 67.88, -11.12, 33.73, 2, 0)
	MovementLoopAddLocation(NPC, 79.02, -11.51, 35.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.03, -11.14, 34.69, 2, 0)
	MovementLoopAddLocation(NPC, 45.19, -10.6, 31.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.41, -11.01, 36.98, 2, 0)
	MovementLoopAddLocation(NPC, 50.59, -11.05, 43.93, 2, 0)
	MovementLoopAddLocation(NPC, 61, -11.72, 71.06, 2, 0)
	MovementLoopAddLocation(NPC, 65.06, -11.89, 77.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.3, -11.31, 71.28, 2, 0)
	MovementLoopAddLocation(NPC, 66.85, -11.18, 59.43, 2, 0)
	MovementLoopAddLocation(NPC, 67.96, -13.28, 45.59, 2, 0)
	MovementLoopAddLocation(NPC, 72.12, -13.6, 37.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.31, -13.52, 42.63, 2, 0)
	MovementLoopAddLocation(NPC, 67.4, -12.61, 47.78, 2, 0)
	MovementLoopAddLocation(NPC, 65.64, -12.65, 51.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.65, -11.57, 44.07, 2, 0)
	MovementLoopAddLocation(NPC, 72.26, -11.8, 33.92, 2, 0)
	MovementLoopAddLocation(NPC, 75.31, -12.85, 24.98, 2, 0)
	MovementLoopAddLocation(NPC, 78.75, -13.29, 14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.3, -12.8, 14.83, 2, 0)
	MovementLoopAddLocation(NPC, 45.03, -12.94, 15.76, 2, 0)
	MovementLoopAddLocation(NPC, 34.18, -13.14, 16.32, 2, 0)
	MovementLoopAddLocation(NPC, -12.15, -12.02, 27.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.3, -11.74, 30.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.57, -12.19, 39.12, 2, 0)
	MovementLoopAddLocation(NPC, -2.58, -12.08, 45.99, 2, math.random(10, 20))
end

