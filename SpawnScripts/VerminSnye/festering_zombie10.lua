--[[
	Script Name		:	festering_zombie10.lua
	Script Purpose	:	Waypoint Path for festering_zombie10.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 06:52:04 PM
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
	MovementLoopAddLocation(NPC, 256.87, -6.86, -40.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 255.07, -6.96, -39.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 257.7, -6.62, -38.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 255.42, -6.89, -39.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 255.18, -7, -36.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 255.28, -7.05, -37.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 257.38, -6.96, -36.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 256.74, -6.93, -38.27, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 257.38, -6.96, -36.09, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 255.28, -7.05, -37.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 255.18, -7, -36.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 255.42, -6.89, -39.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 257.7, -6.62, -38.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 255.07, -6.96, -39.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 256.87, -6.86, -40.04, 2, math.random(0,5))
end


