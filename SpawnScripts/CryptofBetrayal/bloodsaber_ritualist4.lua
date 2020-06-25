--[[
	Script Name		:	bloodsaber_ritualist4.lua
	Script Purpose	:	Waypoint Path for bloodsaber_ritualist4.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 03:42:14 PM
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
	MovementLoopAddLocation(NPC, 65.7, -4.16, -156.41, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 69.15, -4.16, -165.91, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 66.11, -4.16, -162.3, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 56.48, -0.31, -162.47, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 70.57, -4.16, -162.18, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 67.82, -4.16, -156, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 59.67, -4.16, -156.96, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 65.83, -4.16, -157.02, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 69.03, -4.16, -165.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 65.83, -4.16, -157.02, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 59.67, -4.16, -156.96, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 67.82, -4.16, -156, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 70.57, -4.16, -162.18, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 56.48, -0.31, -162.47, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 66.11, -4.16, -162.3, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 69.15, -4.16, -165.91, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, 65.7, -4.16, -156.41, 2, math.random(0,20))
end


