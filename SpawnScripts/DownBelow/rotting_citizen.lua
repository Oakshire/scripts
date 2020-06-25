--[[
	Script Name		:	rotting_citizen.lua
	Script Purpose	:	Waypoint Path for rotting_citizen.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 12:33:15 PM
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
	MovementLoopAddLocation(NPC, -203.61, 0, -25.16, 2, 0)
	MovementLoopAddLocation(NPC, -196.09, 0, -36.25, 2, 0)
	MovementLoopAddLocation(NPC, -198.4, 0, -37.39, 2, 0)
	MovementLoopAddLocation(NPC, -190.34, 0, -22.9, 2, 0)
	MovementLoopAddLocation(NPC, -187.05, 0, -29.52, 2, 0)
	MovementLoopAddLocation(NPC, -196.76, 0, -16.13, 2, 0)
	MovementLoopAddLocation(NPC, -205.09, 0, -30.14, 2, 0)
	MovementLoopAddLocation(NPC, -199.87, 0, -25.62, 2, 0)
	MovementLoopAddLocation(NPC, -191.8, 0, -32.86, 2, 0)
	MovementLoopAddLocation(NPC, -197.23, 0, -38.21, 2, 0)
	MovementLoopAddLocation(NPC, -202.29, 0, -22.4, 2, 0)
	MovementLoopAddLocation(NPC, -197.23, 0, -38.21, 2, 0)
	MovementLoopAddLocation(NPC, -191.8, 0, -32.86, 2, 0)
	MovementLoopAddLocation(NPC, -199.87, 0, -25.62, 2, 0)
	MovementLoopAddLocation(NPC, -205.09, 0, -30.14, 2, 0)
	MovementLoopAddLocation(NPC, -196.76, 0, -16.13, 2, 0)
	MovementLoopAddLocation(NPC, -187.05, 0, -29.52, 2, 0)
	MovementLoopAddLocation(NPC, -190.34, 0, -22.9, 2, 0)
	MovementLoopAddLocation(NPC, -198.4, 0, -37.39, 2, 0)
	MovementLoopAddLocation(NPC, -196.09, 0, -36.25, 2, 0)
	MovementLoopAddLocation(NPC, -203.61, 0, -25.16, 2, 0)
end


