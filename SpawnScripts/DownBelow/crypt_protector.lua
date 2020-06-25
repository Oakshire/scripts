--[[
	Script Name		:	crypt_protector.lua
	Script Purpose	:	Waypoint Path for crypt_protector.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 12:59:25 AM
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
	MovementLoopAddLocation(NPC, -201.64, -0.39, -124.2, 2, 0)
	MovementLoopAddLocation(NPC, -211.08, -0.18, -125.35, 2, 0)
	MovementLoopAddLocation(NPC, -192.64, -0.39, -125.24, 2, 0)
	MovementLoopAddLocation(NPC, -202.08, -0.39, -125.16, 2, 0)
	MovementLoopAddLocation(NPC, -201.35, -0.02, -115.95, 2, 0)
	MovementLoopAddLocation(NPC, -201.39, 0, -134.97, 2, 0)
	MovementLoopAddLocation(NPC, -209.79, -0.39, -132.31, 2, 0)
	MovementLoopAddLocation(NPC, -207.25, -0.39, -118.09, 2, 0)
	MovementLoopAddLocation(NPC, -193.59, -0.39, -117.4, 2, 0)
	MovementLoopAddLocation(NPC, -193.67, -0.39, -132.67, 2, 0)
	MovementLoopAddLocation(NPC, -201.7, -0.39, -132.88, 2, 0)
	MovementLoopAddLocation(NPC, -203.74, -0.39, -123.96, 2, 0)
	MovementLoopAddLocation(NPC, -198.64, -0.39, -127.58, 2, 0)
	MovementLoopAddLocation(NPC, -205.09, -0.39, -126.97, 2, 0)
	MovementLoopAddLocation(NPC, -199.98, -0.39, -122.37, 2, 0)
	MovementLoopAddLocation(NPC, -205.09, -0.39, -126.97, 2, 0)
	MovementLoopAddLocation(NPC, -198.64, -0.39, -127.58, 2, 0)
	MovementLoopAddLocation(NPC, -203.74, -0.39, -123.96, 2, 0)
	MovementLoopAddLocation(NPC, -201.7, -0.39, -132.88, 2, 0)
	MovementLoopAddLocation(NPC, -193.67, -0.39, -132.67, 2, 0)
	MovementLoopAddLocation(NPC, -193.59, -0.39, -117.4, 2, 0)
	MovementLoopAddLocation(NPC, -207.25, -0.39, -118.09, 2, 0)
	MovementLoopAddLocation(NPC, -209.79, -0.39, -132.31, 2, 0)
	MovementLoopAddLocation(NPC, -201.39, 0, -134.97, 2, 0)
	MovementLoopAddLocation(NPC, -201.35, -0.02, -115.95, 2, 0)
	MovementLoopAddLocation(NPC, -202.08, -0.39, -125.16, 2, 0)
	MovementLoopAddLocation(NPC, -192.64, -0.39, -125.24, 2, 0)
	MovementLoopAddLocation(NPC, -211.08, -0.18, -125.35, 2, 0)
	MovementLoopAddLocation(NPC, -201.64, -0.39, -124.2, 2, 0)
end


