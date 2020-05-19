--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427030.lua
	Script Purpose	:	Waypoint Path for areefturtle427030.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:59:33 
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
	MovementLoopAddLocation(NPC, -137.62, -12.75, 11.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -126.31, -12.05, 37.64, 2, 0)
	MovementLoopAddLocation(NPC, -122.11, -11.98, 43.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -123.3, -11.96, 43.24, 2, 0)
	MovementLoopAddLocation(NPC, -125.06, -11.61, 44.82, 2, 0)
	MovementLoopAddLocation(NPC, -130.47, -11, 52.14, 2, 0)
	MovementLoopAddLocation(NPC, -134.68, -11.38, 57.77, 2, 0)
	MovementLoopAddLocation(NPC, -134.68, -11.59, 68.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.87, -12.76, 37.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.49, -13.36, 48.45, 2, 0)
	MovementLoopAddLocation(NPC, -134.75, -12.85, 47.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.94, -12.67, 47.8, 2, 0)
	MovementLoopAddLocation(NPC, -149.41, -13.14, 44.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.13, -12.71, 56.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.1, -12.79, 76.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.74, -12.29, 81.25, 2, 0)
	MovementLoopAddLocation(NPC, -136.54, -12.54, 80.83, 2, 0)
	MovementLoopAddLocation(NPC, -141.76, -13.32, 76.73, 2, 0)
	MovementLoopAddLocation(NPC, -144.05, -13.7, 71.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.37, -13.27, 48.9, 2, 0)
	MovementLoopAddLocation(NPC, -136.13, -12.35, 48.51, 2, 0)
	MovementLoopAddLocation(NPC, -131.41, -11.78, 46.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.54, -11.37, 33.42, 2, 0)
	MovementLoopAddLocation(NPC, -137.82, -12.68, 11.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125, -12.09, 39, 2, 0)
	MovementLoopAddLocation(NPC, -122.37, -11.87, 43.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.18, -11.1, 47.92, 2, 0)
	MovementLoopAddLocation(NPC, -133.19, -11.19, 55.21, 2, 0)
	MovementLoopAddLocation(NPC, -134.66, -11.6, 67.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.72, -12.77, 37.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138.49, -13.21, 47.45, 2, 0)
	MovementLoopAddLocation(NPC, -134.57, -12.74, 47.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.65, -12.77, 47.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.14, -12.88, 55.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.27, -12.76, 76.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.53, -12.02, 79.1, 2, 0)
	MovementLoopAddLocation(NPC, -140.27, -13.12, 77.07, 2, 0)
	MovementLoopAddLocation(NPC, -143.8, -13.66, 70.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.19, -13.29, 48.99, 2, 0)
	MovementLoopAddLocation(NPC, -135.44, -12.36, 48.58, 2, 0)
	MovementLoopAddLocation(NPC, -131.55, -11.79, 45.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.02, -11.3, 31.96, 2, 0)
end

