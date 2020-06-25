--[[
	Script Name		:	Durakan.lua
	Script Purpose	:	Waypoint Path for Durakan.lua
	Script Author	:	Auto Generated
	Script Date		:	04/24/2020 09:58:41 PM
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
	MovementLoopAddLocation(NPC, -77.26, -25.04, 236.49, 2, 0)
	MovementLoopAddLocation(NPC, -99.94, -25, 215.59, 2, 0)
	MovementLoopAddLocation(NPC, -100.74, -24.98, 198.4, 2, 0)
	MovementLoopAddLocation(NPC, -99.94, -25, 215.59, 2, 0)
	MovementLoopAddLocation(NPC, -77.26, -25.04, 236.49, 2, 0)
end


