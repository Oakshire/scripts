--[[
	Script Name	:	SpawnScripts/The Estate of Unrest/adeathbeetle369480.lua
	Script Purpose	:
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/06/2021 07:46:01 PM
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
	MovementLoopAddLocation(NPC, -56.09, -0.68, 83.09, 2, 14)
	MovementLoopAddLocation(NPC, -72.29, 0.5, 77.61, 2, 14)
	MovementLoopAddLocation(NPC, -68.91, 0.4, 89.9, 2, 14)
	MovementLoopAddLocation(NPC, -81.19, 0, 71.47, 2, 14)
	MovementLoopAddLocation(NPC, -81.24, 0, 74.51, 2, 14)
	MovementLoopAddLocation(NPC, -82.49, 0, 81.09, 2, 14)
	MovementLoopAddLocation(NPC, -71.45, 0.5, 86.61, 2, 14)
	MovementLoopAddLocation(NPC, -73.55, 0.48, 86.56, 2, 0)
	MovementLoopAddLocation(NPC, -62.08, -0.15, 68.72, 2, 14)
	MovementLoopAddLocation(NPC, -67.25, 0.23, 85.08, 2, 14)
	MovementLoopAddLocation(NPC, -76.33, 0, 69.92, 2, 14)
	MovementLoopAddLocation(NPC, -55.85, -0.69, 83.22, 2, 14)
end