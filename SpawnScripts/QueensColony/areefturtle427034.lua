--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427034.lua
	Script Purpose	:	Waypoint Path for areefturtle427034.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 09:00:25 
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
	MovementLoopAddLocation(NPC, -118.89, -10.98, 8.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -122.26, -10.57, 14.18, 2, 0)
	MovementLoopAddLocation(NPC, -124.34, -10.5, 28.41, 2, 0)
	MovementLoopAddLocation(NPC, -124.89, -10.32, 60.88, 2, 0)
	MovementLoopAddLocation(NPC, -124.11, -11.71, 69.24, 2, 0)
	MovementLoopAddLocation(NPC, -122.46, -11.81, 72.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.96, -11.4, 70.69, 2, 0)
	MovementLoopAddLocation(NPC, -118.49, -11.39, 68.43, 2, 0)
	MovementLoopAddLocation(NPC, -115.88, -10.61, 46.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -122.57, -11.4, 42.82, 2, 0)
	MovementLoopAddLocation(NPC, -138.06, -12.35, 41.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.27, -12.61, 3.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.71, -12.8, 8.96, 2, 0)
	MovementLoopAddLocation(NPC, -129.92, -11.87, 39.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.94, -12.75, 47.91, 2, 0)
	MovementLoopAddLocation(NPC, -144.15, -13.08, 50.44, 2, 0)
	MovementLoopAddLocation(NPC, -147.87, -13.27, 54.2, 2, 0)
	MovementLoopAddLocation(NPC, -148.58, -13.57, 72.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.01, -13.27, 56.75, 2, 0)
	MovementLoopAddLocation(NPC, -145.32, -13.08, 51.84, 2, 0)
	MovementLoopAddLocation(NPC, -135.61, -12.22, 51.15, 2, 0)
	MovementLoopAddLocation(NPC, -128.79, -11.45, 55.69, 2, 0)
	MovementLoopAddLocation(NPC, -125.35, -11.32, 59.15, 2, 0)
	MovementLoopAddLocation(NPC, -125.39, -11.67, 66.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.89, -11.29, 60.24, 2, 0)
	MovementLoopAddLocation(NPC, -126.76, -10.4, 58.89, 2, 0)
	MovementLoopAddLocation(NPC, -132.11, -11.87, 56.2, 2, 0)
	MovementLoopAddLocation(NPC, -135.47, -12.81, 57.41, 2, 0)
	MovementLoopAddLocation(NPC, -136.13, -12.99, 63.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.96, -13.09, 56.9, 2, 0)
	MovementLoopAddLocation(NPC, -134.14, -12.48, 48.13, 2, 0)
	MovementLoopAddLocation(NPC, -125.51, -11.82, 33.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.44, -11.74, 30.98, 2, 0)
	MovementLoopAddLocation(NPC, -130.18, -11.27, 30.94, 2, 0)
	MovementLoopAddLocation(NPC, -135.47, -11.42, 31.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.77, -12.73, 23.69, 2, 0)
	MovementLoopAddLocation(NPC, -146.68, -13.38, 20.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.58, -12.04, 16.06, 2, 0)
	MovementLoopAddLocation(NPC, -129.08, -11.57, 12.28, 2, 0)
	MovementLoopAddLocation(NPC, -124.63, -10.99, 10.55, 2, 0)
end

