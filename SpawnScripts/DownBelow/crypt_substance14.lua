--[[
	Script Name		:	crypt_substance14.lua
	Script Purpose	:	Waypoint Path for crypt_substance14.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 02:16:10 PM
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
	MovementLoopAddLocation(NPC, -115.76, -0.07, -116.78, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -122.7, 0.55, -119.14, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.43, -0.12, -127.23, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.18, -0.13, -135.37, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -138.87, -0.03, -135.22, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -149.63, -0.1, -137.19, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -158.78, -0.01, -134.5, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -156.62, -0.08, -127.11, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -160.55, -0.04, -111.91, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -145.8, -0.08, -74.41, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -160.55, -0.04, -111.91, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -156.62, -0.08, -127.11, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -158.78, -0.01, -134.5, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -149.63, -0.1, -137.19, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -138.87, -0.03, -135.22, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.18, -0.13, -135.37, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.43, -0.12, -127.23, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -122.7, 0.55, -119.14, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -115.76, -0.07, -116.78, 2, math.random(0,20))
end


