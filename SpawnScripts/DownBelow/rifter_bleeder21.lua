--[[
	Script Name		:	rifter_bleeder21.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder21.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 01:44:59 AM
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
	MovementLoopAddLocation(NPC, -195.79, -0.39, -125.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -196.03, -0.39, -127.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -196.72, -0.39, -126.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.02, -0.39, -127.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.8, -0.39, -123.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -210.47, -0.39, -132.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -209, 0, -134.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.41, 0, -135.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.25, 0, -135.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.9, -0.39, -130.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.91, -0.39, -132.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -192.08, -0.17, -129.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -190.53, -0.01, -134.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -196.74, 0, -135, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.64, 0, -135.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -196.74, 0, -135, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -190.53, -0.01, -134.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -192.08, -0.17, -129.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -197.91, -0.39, -132.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.9, -0.39, -130.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.25, 0, -135.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.41, 0, -135.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -209, 0, -134.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -210.47, -0.39, -132.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.8, -0.39, -123.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.02, -0.39, -127.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -196.72, -0.39, -126.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -196.03, -0.39, -127.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -195.79, -0.39, -125.37, 2, math.random(0,5))
end


