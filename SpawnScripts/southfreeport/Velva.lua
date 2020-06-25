--[[
	Script Name		:	Velva.lua
	Script Purpose	:	Waypoint Path for Velva.lua
	Script Author	:	Auto Generated
	Script Date		:	04/24/2020 08:53:42 PM
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
	MovementLoopAddLocation(NPC, -44.97, -8.26, 207.6, 2, 0)
	MovementLoopAddLocation(NPC, -43.8, -8.26, 219.84, 2, 0)
	MovementLoopAddLocation(NPC, -21.11, -8.28, 226.61, 2, 0)
	MovementLoopAddLocation(NPC, -14.47, -8.27, 233.53, 2, 0)
	MovementLoopAddLocation(NPC, 18.23, -8.19, 238.78, 2, 0)
	MovementLoopAddLocation(NPC, -14.47, -8.27, 233.53, 2, 0)
	MovementLoopAddLocation(NPC, -21.11, -8.28, 226.61, 2, 0)
	MovementLoopAddLocation(NPC, -43.8, -8.26, 219.84, 2, 0)
	MovementLoopAddLocation(NPC, -44.97, -8.26, 207.6, 2, 0)
end


