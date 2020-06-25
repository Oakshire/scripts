--[[
	Script Name		:	forager2.lua
	Script Purpose	:	Waypoint Path for forager2.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 12:47:30 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -102.38, -0.08, -117.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -97.3, 0.47, -127.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.39, 0.46, -130.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.01, -0.06, -136.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -82.99, -0.1, -137.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -71.63, -0.12, -125.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -74.22, -0.09, -126.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.07, -0.09, -145.19, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -78.21, -0.03, -130.59, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -82.01, -0.09, -125.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.58, -0.11, -119.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.08, -0.03, -115.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.69, -0.11, -104.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -65.51, 0.07, -97.41, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -58.07, -0.08, -95.36, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -56.86, -0.07, -86.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -52.2, -0.06, -72.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -56.86, -0.07, -86.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -58.07, -0.08, -95.36, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -65.51, 0.07, -97.41, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.69, -0.11, -104.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.08, -0.03, -115.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.58, -0.11, -119.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -82.01, -0.09, -125.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -78.21, -0.03, -130.59, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.07, -0.09, -145.19, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -74.22, -0.09, -126.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -71.63, -0.12, -125.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -82.99, -0.1, -137.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.01, -0.06, -136.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.39, 0.46, -130.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -97.3, 0.47, -127.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -102.38, -0.08, -117.71, 2, math.random(0,10))
end


