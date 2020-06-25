--[[
	Script Name		:	Nightstalker.lua
	Script Purpose	:	Waypoint Path for Nightstalker.lua
	Script Author	:	Auto Generated
	Script Date		:	04/24/2020 10:28:58 PM
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
	MovementLoopAddLocation(NPC, -207.66, -46.66, 269.81, 2, 0)
	MovementLoopAddLocation(NPC, -204.26, -50.32, 239.38, 2, 0)
	MovementLoopAddLocation(NPC, -207.66, -46.66, 269.81, 2, 0)
end


