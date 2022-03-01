--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425828.lua
	Script Purpose	:	Waypoint Path for atriggerfish425828.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:21:23 
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
	MovementLoopAddLocation(NPC, 8.93, -13.88, 49.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.78, -13.71, 42.99, 2, 0)
	MovementLoopAddLocation(NPC, -3.31, -13.88, 36.85, 2, 0)
	MovementLoopAddLocation(NPC, -8.46, -14.11, 35.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.21, -13.17, 32.35, 2, 0)
	MovementLoopAddLocation(NPC, 20.6, -12.86, 27.55, 2, 0)
	MovementLoopAddLocation(NPC, 45.74, -12.12, 22.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.94, -10.6, 25.94, 2, 0)
	MovementLoopAddLocation(NPC, 67.44, -11.14, 29.27, 2, 0)
	MovementLoopAddLocation(NPC, 70.96, -12.15, 29.28, 2, 0)
	MovementLoopAddLocation(NPC, 73.58, -12.39, 28.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.1, -12.37, 9.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.97, -12.32, 12.67, 2, 0)
	MovementLoopAddLocation(NPC, 47.17, -11.95, 23.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.93, -13.93, 33.78, 2, 0)
	MovementLoopAddLocation(NPC, 17.5, -13.01, 41.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.61, -13.48, 44.68, 2, 0)
	MovementLoopAddLocation(NPC, 20.64, -13.51, 47.67, 2, 0)
	MovementLoopAddLocation(NPC, 23.68, -13.44, 52.63, 2, 0)
	MovementLoopAddLocation(NPC, 25.31, -13.37, 56.7, 2, 0)
	MovementLoopAddLocation(NPC, 27.61, -13.07, 59.18, 2, 0)
	MovementLoopAddLocation(NPC, 31.24, -13.03, 60.09, 2, 0)
	MovementLoopAddLocation(NPC, 37.27, -12.7, 59.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.96, -11.9, 57.38, 2, 0)
	MovementLoopAddLocation(NPC, 20.4, -12.5, 41.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.34, -13.46, 35.3, 2, 0)
	MovementLoopAddLocation(NPC, 10.01, -13.98, 27.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.95, -12.46, 38.79, 2, 0)
	MovementLoopAddLocation(NPC, 32.57, -12.42, 41.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.57, -13.34, 45.16, 2, 0)
	MovementLoopAddLocation(NPC, 11.16, -13.89, 49.39, 2, 0)
end

