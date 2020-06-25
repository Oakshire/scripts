--[[
	Script Name		:	venom_spitter2.lua
	Script Purpose	:	Waypoint Path for venom_spitter2.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 01:41:41 PM
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
	MovementLoopAddLocation(NPC, -121.76, 0, -199.5, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.89, 0, -191.26, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.66, 0, -195.59, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.94, 0, -190.9, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.15, 0, -193.63, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.76, 0, -206.51, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.98, 0, -205.9, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.78, 0, -201.61, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.92, 0, -200.1, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.78, 0, -204.17, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -123.56, 0, -201.18, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -123.81, 0, -193.24, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.09, 0, -196.75, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.78, 0, -192.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.73, 0, -198.47, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.84, 0, -197.47, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.88, 0, -203.64, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.76, 0, -206.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.64, 2, -206.84, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.91, 0, -206.83, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.32, 0, -203.09, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -114.08, 0, -204.09, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -122.38, 0, -203.41, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.28, 0, -198.05, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -123.64, 0, -193.8, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.4, 0, -196.46, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.46, 0, -200.06, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.98, 0, -198.77, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.35, 0, -203.72, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.98, 0, -198.77, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.46, 0, -200.06, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.4, 0, -196.46, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -123.64, 0, -193.8, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.28, 0, -198.05, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -122.38, 0, -203.41, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -114.08, 0, -204.09, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.32, 0, -203.09, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.91, 0, -206.83, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.64, 2, -206.84, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.76, 0, -206.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.88, 0, -203.64, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.84, 0, -197.47, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.73, 0, -198.47, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.78, 0, -192.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.09, 0, -196.75, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -123.81, 0, -193.24, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -123.56, 0, -201.18, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.78, 0, -204.17, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.92, 0, -200.1, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.78, 0, -201.61, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.98, 0, -205.9, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.76, 0, -206.51, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.15, 0, -193.63, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.94, 0, -190.9, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.66, 0, -195.59, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.89, 0, -191.26, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.76, 0, -199.5, 2, math.random(0,20))
end


