--[[
	Script Name		:	venomous_watcher.lua
	Script Purpose	:	Waypoint Path for venomous_watcher.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 01:25:49 PM
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
	MovementLoopAddLocation(NPC, -124.96, 0, -204.59, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.01, 0, -204.38, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.38, 0, -198.83, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.18, 0, -190.96, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.38, 0, -191.53, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.98, 0, -197.21, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.1, 0, -195.81, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.21, 0, -201.39, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.14, 0, -194.99, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.26, 0, -206.78, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.5, 0, -206.69, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.84, 0, -200.89, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.43, 0, -205, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -123.2, 0, -201.62, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.74, 0, -202.5, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.77, 0, -199.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.99, 0, -199.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130, 0, -195.78, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.71, 0, -195.11, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.07, 0, -191.71, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.12, 0, -191.24, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.27, 0, -206.28, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -123.36, 0, -202, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.27, 0, -206.28, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.12, 0, -191.24, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.07, 0, -191.71, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.71, 0, -195.11, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130, 0, -195.78, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.99, 0, -199.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.77, 0, -199.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.74, 0, -202.5, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -123.2, 0, -201.62, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.43, 0, -205, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.84, 0, -200.89, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.5, 0, -206.69, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.26, 0, -206.78, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.14, 0, -194.99, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.21, 0, -201.39, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.1, 0, -195.81, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.98, 0, -197.21, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.38, 0, -191.53, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.18, 0, -190.96, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.38, 0, -198.83, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.01, 0, -204.38, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.96, 0, -204.59, 2, math.random(0,20))
end


