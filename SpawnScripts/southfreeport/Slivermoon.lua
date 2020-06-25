--[[
	Script Name		:	Slivermoon.lua
	Script Purpose	:	Waypoint Path for Slivermoon.lua
	Script Author	:	Auto Generated
	Script Date		:	04/24/2020 10:25:50 PM
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
	MovementLoopAddLocation(NPC, -202.45, -48.35, 254.11, 2, 0)
	MovementLoopAddLocation(NPC, -201.48, -50.09, 239.9, 2, 0)
	MovementLoopAddLocation(NPC, -186.3, -55.53, 211.78, 2, 0)
	MovementLoopAddLocation(NPC, -187.72, -57.21, 155.01, 2, 0)
	MovementLoopAddLocation(NPC, -186.3, -55.53, 211.78, 2, 0)
	MovementLoopAddLocation(NPC, -201.48, -50.09, 239.9, 2, 0)
	MovementLoopAddLocation(NPC, -202.45, -48.35, 254.11, 2, 0)
end


