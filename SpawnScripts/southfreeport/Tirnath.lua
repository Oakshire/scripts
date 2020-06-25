--[[
	Script Name		:	Tirnath.lua
	Script Purpose	:	Waypoint Path for Tirnath.lua
	Script Author	:	Auto Generated
	Script Date		:	04/24/2020 09:55:20 PM
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
	MovementLoopAddLocation(NPC, -76.39, -25.01, 243.54, 2, 0)
	MovementLoopAddLocation(NPC, -72.21, -25.01, 258.73, 2, 0)
	MovementLoopAddLocation(NPC, -62.92, -25.02, 278.66, 2, 0)
	MovementLoopAddLocation(NPC, -72.21, -25.01, 258.73, 2, 0)
	MovementLoopAddLocation(NPC, -76.39, -25.01, 243.54, 2, 0)
end


