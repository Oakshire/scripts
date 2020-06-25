--[[
	Script Name		:	Rimebreaker.lua
	Script Purpose	:	Waypoint Path for Rimebreaker.lua
	Script Author	:	Auto Generated
	Script Date		:	04/24/2020 09:45:08 PM
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
	MovementLoopAddLocation(NPC, -81.8, -25.04, 236.58, 2, 0)
	MovementLoopAddLocation(NPC, -100.06, -25, 215.61, 2, 0)
	MovementLoopAddLocation(NPC, -96.83, -24.95, 156.89, 2, 0)
	MovementLoopAddLocation(NPC, -100.06, -25, 215.61, 2, 0)
	MovementLoopAddLocation(NPC, -81.8, -25.04, 236.58, 2, 0)
end


