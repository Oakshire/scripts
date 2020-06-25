--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427095.lua
	Script Purpose	:	Waypoint Path for areefturtle427095.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:26:20 
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
	MovementLoopAddLocation(NPC, 73.13, -11.74, 49.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.91, -11.42, 42.12, 2, 0)
	MovementLoopAddLocation(NPC, 85.69, -11.31, 37.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.24, -11, 34.59, 2, 0)
	MovementLoopAddLocation(NPC, 63.02, -10.2, 31.64, 2, 0)
	MovementLoopAddLocation(NPC, 52.21, -11.41, 30.18, 2, 0)
	MovementLoopAddLocation(NPC, 46.04, -11.8, 27.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.13, -11.17, 28.15, 2, 0)
	MovementLoopAddLocation(NPC, 73.76, -10.2, 26.41, 2, 0)
	MovementLoopAddLocation(NPC, 82.67, -11.64, 24.64, 2, 0)
	MovementLoopAddLocation(NPC, 88.72, -12.5, 25.38, 2, 0)
	MovementLoopAddLocation(NPC, 93.43, -12.7, 27.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.66, -12.65, 13.05, 2, 0)
	MovementLoopAddLocation(NPC, 72.84, -13.02, 8.28, 2, 0)
	MovementLoopAddLocation(NPC, 68.64, -14.06, 6.62, 2, 0)
	MovementLoopAddLocation(NPC, 65.31, -14.32, 6.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.6, -12.53, -7.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.62, -14.35, -1.26, 2, 0)
	MovementLoopAddLocation(NPC, 67.16, -14.42, 1.02, 2, 0)
	MovementLoopAddLocation(NPC, 62.92, -13.72, 5.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.68, -12.69, 8.33, 2, 0)
	MovementLoopAddLocation(NPC, 56.19, -11.9, 21.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.09, -10.3, 34.79, 2, 0)
	MovementLoopAddLocation(NPC, 41.08, -10.73, 40.95, 2, 0)
	MovementLoopAddLocation(NPC, 36.3, -12.47, 49.63, 2, 0)
	MovementLoopAddLocation(NPC, 32.7, -12.7, 51.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39, -12.49, 50.67, 2, 0)
	MovementLoopAddLocation(NPC, 44.59, -12.27, 51.14, 2, 0)
	MovementLoopAddLocation(NPC, 48.56, -11.82, 52.57, 2, 0)
	MovementLoopAddLocation(NPC, 53.27, -11.72, 54.92, 2, 0)
	MovementLoopAddLocation(NPC, 58.48, -11.22, 58.1, 2, 0)
	MovementLoopAddLocation(NPC, 65.71, -11.47, 61.78, 2, 0)
	MovementLoopAddLocation(NPC, 69.75, -11.68, 62.08, 2, math.random(10, 20))
end

