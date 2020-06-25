--[[
	Script Name		:	venom_spitter.lua
	Script Purpose	:	Waypoint Path for venom_spitter.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 01:39:20 PM
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
	MovementLoopAddLocation(NPC, -128.15, 0, -203.88, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.13, 0, -206.96, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.04, 0, -203.89, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.79, 0, -204.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -99.54, 0, -203.77, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -98.84, 0, -194.55, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -98.78, 0, -200.32, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -112.02, 0, -199.82, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -105.63, 0, -207.42, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -111.19, 0, -206.3, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -115.52, 0, -204.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.17, 0, -204.53, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -123.96, 0, -197.41, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.34, 0, -190.64, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.15, 0, -197.18, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -122.53, 0, -196.31, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -122.98, 0, -191.48, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.35, 0, -198.33, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.8, 0, -205.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.78, 0, -199.83, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.32, 0, -200.41, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.01, 0, -191.6, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.56, 0, -194.89, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.15, 0, -201.6, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.56, 0, -194.89, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.01, 0, -191.6, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.32, 0, -200.41, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.78, 0, -199.83, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.8, 0, -205.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.35, 0, -198.33, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -122.98, 0, -191.48, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -122.53, 0, -196.31, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.15, 0, -197.18, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.34, 0, -190.64, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -123.96, 0, -197.41, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.17, 0, -204.53, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -115.52, 0, -204.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -111.19, 0, -206.3, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -105.63, 0, -207.42, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -112.02, 0, -199.82, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -98.78, 0, -200.32, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -98.84, 0, -194.55, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -99.54, 0, -203.77, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.79, 0, -204.08, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -124.04, 0, -203.89, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.13, 0, -206.96, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.15, 0, -203.88, 2, math.random(0,20))
end


