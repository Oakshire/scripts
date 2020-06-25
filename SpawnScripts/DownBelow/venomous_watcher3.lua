--[[
	Script Name		:	venomous_watcher3.lua
	Script Purpose	:	Waypoint Path for venomous_watcher3.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 01:36:09 PM
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
	MovementLoopAddLocation(NPC, -128.91, 0, -190.89, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -111.01, 0, -191.6, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -109.87, -0.06, -181.63, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -110.11, 0, -191.48, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.8, 0, -191.58, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.92, 0, -204.52, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -131.05, 0, -193.37, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -118.99, 0, -205.25, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.57, 0, -203.12, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.18, 0, -206.33, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.58, 0, -202.19, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.67, 0, -200.21, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.95, 0, -193.74, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.35, 0, -193.5, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.81, 0, -196.61, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -122.61, 0, -204.3, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.63, 0, -201.75, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.53, 0, -198.71, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -123.07, 0, -194.36, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.9, 0, -201.96, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.07, 0, -196.74, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.75, 0, -193.27, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.03, 0, -203.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.41, 0, -198.29, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.54, 0, -196.38, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.61, 0, -203.84, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.49, 0, -204, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.61, 0, -203.84, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.54, 0, -196.38, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.41, 0, -198.29, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.03, 0, -203.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.75, 0, -193.27, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.07, 0, -196.74, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.9, 0, -201.96, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -123.07, 0, -194.36, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.53, 0, -198.71, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.63, 0, -201.75, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -122.61, 0, -204.3, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.81, 0, -196.61, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.35, 0, -193.5, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.95, 0, -193.74, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.67, 0, -200.21, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.58, 0, -202.19, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.18, 0, -206.33, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.57, 0, -203.12, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -118.99, 0, -205.25, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -131.05, 0, -193.37, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.92, 0, -204.52, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.8, 0, -191.58, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -110.11, 0, -191.48, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -109.87, -0.06, -181.63, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -111.01, 0, -191.6, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.91, 0, -190.89, 2, math.random(0,20))
end


