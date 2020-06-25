--[[
	Script Name		:	rifter_pest.lua
	Script Purpose	:	Waypoint Path for rifter_pest.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 12:50:21 AM
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
	MovementLoopAddLocation(NPC, -168, 0, -134.92, 2, 0)
	MovementLoopAddLocation(NPC, -211.1, -0.01, -134.6, 2, 0)
	MovementLoopAddLocation(NPC, -209.21, -0.39, -117.1, 2, 0)
	MovementLoopAddLocation(NPC, -191.91, -0.07, -116.54, 2, 0)
	MovementLoopAddLocation(NPC, -192.12, -0.19, -130.66, 2, 0)
	MovementLoopAddLocation(NPC, -168.12, 0, -131.62, 2, 0)
	MovementLoopAddLocation(NPC, -192.12, -0.19, -130.66, 2, 0)
	MovementLoopAddLocation(NPC, -191.91, -0.07, -116.54, 2, 0)
	MovementLoopAddLocation(NPC, -209.21, -0.39, -117.1, 2, 0)
	MovementLoopAddLocation(NPC, -211.1, -0.01, -134.6, 2, 0)
	MovementLoopAddLocation(NPC, -168, 0, -134.92, 2, 0)
end


