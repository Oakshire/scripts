--[[
	Script Name		:	rifter_bleeder13.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder13.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 01:04:03 AM
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
	MovementLoopAddLocation(NPC, -207.86, -0.39, -125.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -210.77, -0.35, -126.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.97, -0.39, -124.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.48, -0.39, -128.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.13, -0.39, -123.34, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.9, -0.39, -123.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.24, -0.39, -124.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.19, 0, -115.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -200.34, -0.39, -123.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.84, -0.39, -127.44, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.97, -0.39, -127.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.26, -0.08, -134.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.31, -0.39, -128.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.26, -0.08, -134.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.97, -0.39, -127.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.84, -0.39, -127.44, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -200.34, -0.39, -123.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.19, 0, -115.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.24, -0.39, -124.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.9, -0.39, -123.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.13, -0.39, -123.34, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.48, -0.39, -128.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.97, -0.39, -124.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -210.77, -0.35, -126.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -207.86, -0.39, -125.96, 2, math.random(0,5))
end


