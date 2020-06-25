--[[
	Script Name		:	rifter_hatchling4.lua
	Script Purpose	:	Waypoint Path for rifter_hatchling4.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 02:39:03 PM
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
	MovementLoopAddLocation(NPC, -121.57, 0.38, -153.49, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.07, -0.05, -144.79, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.07, -0.09, -139.44, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.5, -0.08, -130.96, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.89, -0.03, -130.07, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.26, -0.02, -137.8, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -140.52, -0.03, -137.97, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -144.63, -0.03, -138.41, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -156.57, -0.11, -134.73, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -158.57, -0.02, -129.85, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -160.11, -0.11, -117.64, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -175.75, 1.17, -118.71, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -161.47, -0.03, -119.72, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -157.86, -0.06, -126.23, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -157.7, -0.08, -136.69, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.57, -0.1, -136.29, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.96, -0.09, -121.58, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -113.31, -0.11, -113.32, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -98.28, -0.11, -123.05, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -113.31, -0.11, -113.32, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.96, -0.09, -121.58, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.57, -0.1, -136.29, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -157.7, -0.08, -136.69, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -157.86, -0.06, -126.23, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -161.47, -0.03, -119.72, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -175.75, 1.17, -118.71, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -160.11, -0.11, -117.64, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -158.57, -0.02, -129.85, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -156.57, -0.11, -134.73, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -144.63, -0.03, -138.41, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -140.52, -0.03, -137.97, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.26, -0.02, -137.8, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.89, -0.03, -130.07, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.5, -0.08, -130.96, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.07, -0.09, -139.44, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.07, -0.05, -144.79, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.57, 0.38, -153.49, 2, math.random(0,20))
end


