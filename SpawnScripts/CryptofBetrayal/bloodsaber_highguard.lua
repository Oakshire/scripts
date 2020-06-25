--[[
	Script Name		:	bloodsaber_highguard.lua
	Script Purpose	:	Waypoint Path for bloodsaber_highguard.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 03:39:05 PM
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
	MovementLoopAddLocation(NPC, 70.47, -4.16, -160.59, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 67.67, -4.16, -165.91, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 59.84, -4.16, -166.33, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 65.92, -4.16, -167.5, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 68.25, -4.16, -156.28, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 59.67, -4.16, -155.97, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 67.78, -4.16, -157.8, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 70.56, -4.16, -160.66, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 53.91, 0.21, -161.98, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 70.56, -4.16, -160.66, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 67.78, -4.16, -157.8, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 59.67, -4.16, -155.97, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 68.25, -4.16, -156.28, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 65.92, -4.16, -167.5, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 59.84, -4.16, -166.33, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 67.67, -4.16, -165.91, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 70.47, -4.16, -160.59, 2, math.random(0,20))
end


