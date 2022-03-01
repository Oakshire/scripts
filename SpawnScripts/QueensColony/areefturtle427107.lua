--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427107.lua
	Script Purpose	:	Waypoint Path for areefturtle427107.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:47:31 
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
	MovementLoopAddLocation(NPC, 72.94, -10.2, 71.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.91, -10.2, 65.04, 2, 0)
	MovementLoopAddLocation(NPC, 48.17, -10.56, 63.95, 2, 0)
	MovementLoopAddLocation(NPC, 44.4, -10.57, 64.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.06, -11.2, 54.45, 2, 0)
	MovementLoopAddLocation(NPC, 13.23, -11.44, 50.91, 2, 0)
	MovementLoopAddLocation(NPC, -2.39, -12.14, 42.76, 2, 0)
	MovementLoopAddLocation(NPC, -10.92, -12.28, 41.52, 2, 0)
	MovementLoopAddLocation(NPC, -16.6, -11.58, 39.71, 2, 0)
	MovementLoopAddLocation(NPC, -20.89, -11.65, 39.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.23, -12.51, 24.37, 2, 0)
	MovementLoopAddLocation(NPC, 4.79, -12.39, 19.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.44, -13.03, 29.28, 2, 0)
	MovementLoopAddLocation(NPC, -6.43, -13.15, 32.01, 2, 0)
	MovementLoopAddLocation(NPC, -17.33, -13.3, 39.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.91, -12.54, 42.1, 2, 0)
	MovementLoopAddLocation(NPC, -6.85, -12.11, 47, 2, 0)
	MovementLoopAddLocation(NPC, 3.67, -12.33, 54.73, 2, 0)
	MovementLoopAddLocation(NPC, 8.64, -12.58, 59.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.2, -12.78, 48.29, 2, 0)
	MovementLoopAddLocation(NPC, 23.56, -12.95, 44.08, 2, 0)
	MovementLoopAddLocation(NPC, 29.06, -13.51, 39.19, 2, 0)
	MovementLoopAddLocation(NPC, 31.86, -13.59, 34.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38, -12.49, 41.07, 2, 0)
	MovementLoopAddLocation(NPC, 42.91, -11.99, 43.74, 2, 0)
	MovementLoopAddLocation(NPC, 57.14, -10.2, 53.78, 2, 0)
	MovementLoopAddLocation(NPC, 62.51, -10.2, 60.2, 2, 0)
	MovementLoopAddLocation(NPC, 69.81, -10.2, 67.3, 2, 0)
end

