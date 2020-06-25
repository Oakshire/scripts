--[[
	Script Name		:	rifter_bleeder16.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder16.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 01:26:53 AM
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
	MovementLoopAddLocation(NPC, -202.05, -0.39, -125.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.47, -0.39, -121.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.59, -0.39, -122.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.92, -0.39, -127.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.46, -0.39, -127.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.9, -0.39, -122.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.88, -0.39, -122.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.17, -0.39, -127.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.74, -0.39, -128.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.28, -0.39, -122.53, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.74, -0.39, -128.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.17, -0.39, -127.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.88, -0.39, -122.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.9, -0.39, -122.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.46, -0.39, -127.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.92, -0.39, -127.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.59, -0.39, -122.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.47, -0.39, -121.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.05, -0.39, -125.2, 2, math.random(0,5))
end


