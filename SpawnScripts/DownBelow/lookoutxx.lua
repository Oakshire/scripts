--[[
	Script Name		:	lookoutxx.lua
	Script Purpose	:	Waypoint Path for lookoutxx.lua
	Script Author	:	Devn00b
	Script Date		:	05/09/2020 08:17:55 PM
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
	MovementLoopAddLocation(NPC, 21, -0.08, -107.49, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 23.48, -0.05, -104.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 17.01, 0.16, -98.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 19.83, 0.16, -96.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 6.53, -0.05, -108.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 0.86, -0.09, -104.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -5.34, 0.44, -98.1, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 0.86, -0.09, -104.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 6.53, -0.05, -108.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 19.83, 0.16, -96.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 17.01, 0.16, -98.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 23.48, -0.05, -104.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 21, -0.08, -107.49, 2, math.random(0,10))
end


