--[[
	Script Name		:	crypt_substance16.lua
	Script Purpose	:	Waypoint Path for crypt_substance16.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 02:45:11 PM
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
	MovementLoopAddLocation(NPC, -154.19, -0.07, -138.8, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.54, -0.13, -134.39, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -149.12, -0.08, -139.29, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -158.74, 0.01, -133.61, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -157.33, 0.47, -106.62, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -149.57, -0.05, -94.81, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -157.28, -0.06, -98.6, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -142.65, -0.08, -78.3, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -147.79, -0.07, -76.26, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -152.73, -0.09, -87.7, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -148.59, -0.11, -84.49, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -152.73, -0.09, -87.7, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -147.79, -0.07, -76.26, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -142.65, -0.08, -78.3, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -157.28, -0.06, -98.6, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -149.57, -0.05, -94.81, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -157.33, 0.47, -106.62, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -158.74, 0.01, -133.61, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -149.12, -0.08, -139.29, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.54, -0.13, -134.39, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -154.19, -0.07, -138.8, 2, math.random(0,20))
end


