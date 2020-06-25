--[[
	Script Name		:	Armbreaker.lua
	Script Purpose	:	Waypoint Path for Armbreaker.lua
	Script Author	:	Auto Generated
	Script Date		:	04/24/2020 10:41:58 PM
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
	MovementLoopAddLocation(NPC, -134.87, -18.02, 281.22, 2, 0)
	MovementLoopAddLocation(NPC, -119.16, -18.02, 274.13, 2, 0)
	MovementLoopAddLocation(NPC, -117.63, -18.02, 265.21, 2, 0)
	MovementLoopAddLocation(NPC, -118.73, -18.02, 246.15, 2, 0)
	MovementLoopAddLocation(NPC, -112.88, -25.01, 226.74, 2, 0)
	MovementLoopAddLocation(NPC, -97.13, -25.01, 224.33, 2, 0)
	MovementLoopAddLocation(NPC, -112.88, -25.01, 226.74, 2, 0)
	MovementLoopAddLocation(NPC, -118.73, -18.02, 246.15, 2, 0)
	MovementLoopAddLocation(NPC, -117.63, -18.02, 265.21, 2, 0)
	MovementLoopAddLocation(NPC, -119.16, -18.02, 274.13, 2, 0)
	MovementLoopAddLocation(NPC, -134.87, -18.02, 281.22, 2, 0)
end


