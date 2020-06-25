--[[
	Script Name		:	rifter_bleeder23.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder23.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 01:50:03 AM
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
	MovementLoopAddLocation(NPC, -198.65, -0.39, -124.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.45, -0.39, -127.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.98, -0.39, -128.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.24, -0.39, -122.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -200.28, -0.39, -121.67, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.78, -0.39, -125.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.68, -0.39, -127.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -199.08, -0.39, -127.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.68, -0.39, -127.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.78, -0.39, -125.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -200.28, -0.39, -121.67, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.24, -0.39, -122.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.98, -0.39, -128.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -203.45, -0.39, -127.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.65, -0.39, -124.15, 2, math.random(0,5))
end


