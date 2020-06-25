--[[
	Script Name		:	Shawnasy.lua
	Script Purpose	:	Waypoint Path for Shawnasy.lua
	Script Author	:	Auto Generated
	Script Date		:	04/24/2020 10:07:19 PM
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
	MovementLoopAddLocation(NPC, -155.15, -30.24, 250.2, 2, 0)
	MovementLoopAddLocation(NPC, -144.55, -30.24, 239.91, 2, 0)
	MovementLoopAddLocation(NPC, -151.17, -30.27, 227.91, 2, 0)
	MovementLoopAddLocation(NPC, -161.56, -30.24, 241.06, 2, 0)
end


