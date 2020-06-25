--[[
	Script Name		:	Athgar.lua
	Script Purpose	:	Waypoint Path for Athgar.lua
	Script Author	:	Auto Generated
	Script Date		:	04/24/2020 10:20:51 PM
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
	MovementLoopAddLocation(NPC, -207.09, -44.84, 285.5, 2, 0)
	MovementLoopAddLocation(NPC, -202.86, -43.53, 295.82, 2, 0)
	MovementLoopAddLocation(NPC, -180.8, -37.62, 316.82, 2, 0)
	MovementLoopAddLocation(NPC, -202.86, -43.53, 295.82, 2, 0)
	MovementLoopAddLocation(NPC, -207.09, -44.84, 285.5, 2, 0)
end


