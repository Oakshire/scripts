--[[
	Script Name		:	SpawnScripts/The Estate of Unrest/adeathbeetle369488.lua
	Script Purpose	:
	Script Author	:	Auto Generated
	Script Date		:	01/04/2021 05:01:44 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 59.02, -0.27, 67.57, 2, 0)
	MovementLoopAddLocation(NPC, 49.61, -0.34, 72.59, 2, 10)
	MovementLoopAddLocation(NPC, 47.72, 0.08, 72.59, 2, 10)
	MovementLoopAddLocation(NPC, 72.19, -0.2, 72.62, 2, 0)
	MovementLoopAddLocation(NPC, 63.31, -0.32, 72.19, 2, 10)
	MovementLoopAddLocation(NPC, 79.27, 0.19, 92.39, 2, 10)
	MovementLoopAddLocation(NPC, 46.86, 0.47, 80.44, 2, 10)
	MovementLoopAddLocation(NPC, 59.74, -0.71, 83.7, 2, 10)
	MovementLoopAddLocation(NPC, 72.12, -0.23, 75.31, 2, 10)
	MovementLoopAddLocation(NPC, 70.38, -0.14, 71.54, 2, 10)
	MovementLoopAddLocation(NPC, 59.4, -0.21, 67.31, 2, 10)
end