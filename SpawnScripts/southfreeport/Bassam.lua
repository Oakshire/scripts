--[[
	Script Name		:	Bassam.lua
	Script Purpose	:	Waypoint Path for Bassam.lua
	Script Author	:	Auto Generated
	Script Date		:	04/24/2020 10:10:53 PM
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
	MovementLoopAddLocation(NPC, -167.04, -54.27, 180.72, 2, 0)
	MovementLoopAddLocation(NPC, -167.92, -57.16, 169.54, 2, 0)
	MovementLoopAddLocation(NPC, -214.14, -56.51, 170.64, 2, 0)
	MovementLoopAddLocation(NPC, -214.08, -56.48, 181.14, 2, 0)
	MovementLoopAddLocation(NPC, -214.14, -56.51, 170.64, 2, 0)
	MovementLoopAddLocation(NPC, -167.92, -57.16, 169.54, 2, 0)
	MovementLoopAddLocation(NPC, -167.04, -54.27, 180.72, 2, 0)
end


