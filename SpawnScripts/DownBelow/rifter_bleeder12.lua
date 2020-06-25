--[[
	Script Name		:	rifter_bleeder12.lua
	Script Purpose	:	Waypoint Path for rifter_bleeder12.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 01:01:50 AM
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
	MovementLoopAddLocation(NPC, -210.7, -0.09, -134.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -206.13, -0.39, -123.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -200.41, -0.39, -122.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -209.1, -0.39, -124.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -208.45, 0, -114.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.5, -0.39, -124.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.54, -0.39, -127.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -205.49, -0.39, -124.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -201.54, -0.39, -127.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -198.5, -0.39, -124.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -208.45, 0, -114.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -209.1, -0.39, -124.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -200.41, -0.39, -122.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -206.13, -0.39, -123.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -210.7, -0.09, -134.4, 2, math.random(0,5))
end


