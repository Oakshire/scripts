--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427028.lua
	Script Purpose	:	Waypoint Path for areefturtle427028.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:59:11 
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
	MovementLoopAddLocation(NPC, -137.73, -12.79, 41.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.23, -11.66, 33.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.14, -11.4, 46.9, 2, 0)
	MovementLoopAddLocation(NPC, -127.44, -10.4, 55.74, 2, 0)
	MovementLoopAddLocation(NPC, -125.11, -11.18, 61.05, 2, 0)
	MovementLoopAddLocation(NPC, -120.5, -10.99, 64.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.35, -11.58, 61.86, 2, 0)
	MovementLoopAddLocation(NPC, -126.89, -11.81, 57.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.6, -12.28, 56.53, 2, 0)
	MovementLoopAddLocation(NPC, -132.18, -12.78, 58.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.49, -11.94, 56.57, 2, 0)
	MovementLoopAddLocation(NPC, -129.67, -11.5, 56.54, 2, 0)
	MovementLoopAddLocation(NPC, -127.73, -10.67, 57.34, 2, 0)
	MovementLoopAddLocation(NPC, -122.96, -10.34, 60.37, 2, 0)
	MovementLoopAddLocation(NPC, -115.94, -11.68, 66.99, 2, 0)
	MovementLoopAddLocation(NPC, -110.04, -11.87, 70.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -118.21, -11.03, 68.02, 2, 0)
	MovementLoopAddLocation(NPC, -119.07, -10.3, 63.72, 2, 0)
	MovementLoopAddLocation(NPC, -123.62, -10.3, 57.27, 2, 0)
	MovementLoopAddLocation(NPC, -129.52, -10.57, 53.43, 2, 0)
	MovementLoopAddLocation(NPC, -133.96, -12.02, 46.11, 2, 0)
	MovementLoopAddLocation(NPC, -128.51, -11.86, 49.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.24, -11.39, 31.44, 2, 0)
	MovementLoopAddLocation(NPC, -136.27, -11.55, 19.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138, -12.74, 8.02, 2, 0)
	MovementLoopAddLocation(NPC, -145.57, -12.57, 4.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138.24, -12.41, 39.12, 2, 0)
	MovementLoopAddLocation(NPC, -137.98, -13.29, 44.96, 2, 0)
	MovementLoopAddLocation(NPC, -146.73, -13.26, 52.55, 2, math.random(10, 20))
end
