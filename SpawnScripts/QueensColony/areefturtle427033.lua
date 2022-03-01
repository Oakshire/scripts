--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427033.lua
	Script Purpose	:	Waypoint Path for areefturtle427033.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 09:00:06 
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
	MovementLoopAddLocation(NPC, -131.63, -11.8, 25.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.82, -11.64, 39.45, 2, 0)
	MovementLoopAddLocation(NPC, -123.64, -11.64, 42.98, 2, 0)
	MovementLoopAddLocation(NPC, -113.91, -11.26, 63.12, 2, 0)
	MovementLoopAddLocation(NPC, -111.02, -11.77, 67.69, 2, 0)
	MovementLoopAddLocation(NPC, -108.13, -11.83, 68.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.61, -11.71, 66.82, 2, 0)
	MovementLoopAddLocation(NPC, -121.04, -11.81, 46.05, 2, 0)
	MovementLoopAddLocation(NPC, -123.78, -11.81, 43.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125.24, -12.15, 38.24, 2, 0)
	MovementLoopAddLocation(NPC, -127.98, -12.15, 31.36, 2, 0)
	MovementLoopAddLocation(NPC, -131.6, -11.81, 9.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.34, -11.85, 29.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.7, -11.66, 27.99, 2, 0)
	MovementLoopAddLocation(NPC, -137.61, -11.67, 29.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.87, -12.05, 48.61, 2, 0)
	MovementLoopAddLocation(NPC, -122.39, -11.77, 55.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.04, -11.73, 53.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -121.72, -10.41, 54.46, 2, 0)
	MovementLoopAddLocation(NPC, -127.47, -10.5, 54.76, 2, 0)
	MovementLoopAddLocation(NPC, -132.94, -11.59, 57.71, 2, 0)
	MovementLoopAddLocation(NPC, -134.85, -11.65, 61.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.82, -11.6, 27.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.76, -12.72, 63.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.74, -12.67, 48.24, 2, math.random(10, 20))
end

