--[[
	Script Name	:	SpawnScripts/The Estate of Unrest/adeathbeetle369481.lua
	Script Purpose	:
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/06/2021 08:28:18 PM
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
	MovementLoopAddLocation(NPC, -54.22, -0.83, 77.78, 2, 14)
	MovementLoopAddLocation(NPC, -56.23, -0.02, 66.61, 2, 14)
	MovementLoopAddLocation(NPC, -74.62, 0, 62.27, 2, 14)
	MovementLoopAddLocation(NPC, -76.35, 0.18, 73.08, 2, 14)
	MovementLoopAddLocation(NPC, -88.2, 0.3, 74.2, 2, 14)
	MovementLoopAddLocation(NPC, -71.53, 0.45, 81.75, 2, 14)
	MovementLoopAddLocation(NPC, -63.57, -0.29, 87.51, 2, 14)
	MovementLoopAddLocation(NPC, -54.22, -0.8, 77.33, 2, 14)
end