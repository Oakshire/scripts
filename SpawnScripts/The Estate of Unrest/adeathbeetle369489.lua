--[[
	Script Name	:	SpawnScripts/The Estate of Unrest/adeathbeetle369489.lua
	Script Purpose	:
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/04/2021 04:50:11 PM
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
	MovementLoopAddLocation(NPC, 61.67, -0.37, 71.94, 2, 0)
	MovementLoopAddLocation(NPC, 71.75, -0.53, 78.52, 2, 10)
	MovementLoopAddLocation(NPC, 79.73, 0.36, 93.66, 2, 10)
	MovementLoopAddLocation(NPC, 53.36, -0.7, 70.82, 2, 0)
	MovementLoopAddLocation(NPC, 65.1, 0, 91.01, 2, 10)
	MovementLoopAddLocation(NPC, 68.18, -1.02, 83.44, 2, 10)
	MovementLoopAddLocation(NPC, 85.43, 0, 84.59, 2, 10)
	MovementLoopAddLocation(NPC, 73.59, -0.61, 88.53, 2, 10)
	MovementLoopAddLocation(NPC, 61.65, -0.39, 72.31, 2, 10)
end