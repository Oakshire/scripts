--[[
	Script Name		:	bloodsaber_inquisitor2.lua
	Script Purpose	:	Waypoint Path for bloodsaber_inquisitor2.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 03:31:00 PM
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
	MovementLoopAddLocation(NPC, 48.09, -4.17, -137.8, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 48.94, -0.15, -153.35, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 47.74, -4.16, -142.95, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 42.75, -4.16, -140.75, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 42.47, -4.16, -149.26, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 43.14, -4.16, -144.99, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 47.09, -4.16, -138.49, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 52.4, -4.16, -140.35, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 53.04, -4.16, -148.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 52.4, -4.16, -140.35, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 47.09, -4.16, -138.49, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 43.14, -4.16, -144.99, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 42.47, -4.16, -149.26, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 42.75, -4.16, -140.75, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 47.74, -4.16, -142.95, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 48.94, -0.15, -153.35, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 48.09, -4.17, -137.8, 2, math.random(0,20))
end


