--[[
	Script Name		:	rifter_bleeder22.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder22.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 01:47:28 AM
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
	MovementLoopAddLocation(NPC, -196.59, -0.39, -125.44, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.85, -0.39, -127.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.03, -0.39, -126.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.24, -0.39, -123.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -210.45, -0.39, -126.14, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -210.72, -0.37, -117.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.97, -0.39, -117.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.71, 0, -135.55, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.97, -0.39, -117.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -210.72, -0.37, -117.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -210.45, -0.39, -126.14, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.24, -0.39, -123.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.03, -0.39, -126.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.85, -0.39, -127.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -196.59, -0.39, -125.44, 2, math.random(0,5))
end


