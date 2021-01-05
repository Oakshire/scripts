--[[
	Script Name		:	SpawnScripts/The Estate of Unrest/adeathbeetle369493.lua
	Script Purpose	:
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/04/2021 02:34:11 PM
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
	MovementLoopAddLocation(NPC, 73.54, 0.24, 165.85, 2, 13)
	MovementLoopAddLocation(NPC, 67.87, 0.29, 158.72, 2, 13)
	MovementLoopAddLocation(NPC, 74.95, 1, 135.81, 2, 13)
	MovementLoopAddLocation(NPC, 60.36, 0.09, 141.04, 2, 13)
	MovementLoopAddLocation(NPC, 61.49, 0.02, 138.35, 2, 13)
	MovementLoopAddLocation(NPC, 73.08, 0, 171.71, 2, 13)
	MovementLoopAddLocation(NPC, 78.94, 0.29, 154.12, 2, 13)
	MovementLoopAddLocation(NPC, 73.08, 0, 171.71, 2, 13)
	MovementLoopAddLocation(NPC, 61.49, 0.02, 138.35, 2, 13)
	MovementLoopAddLocation(NPC, 60.36, 0.09, 141.04, 2, 13)
	MovementLoopAddLocation(NPC, 74.95, 1, 135.81, 2, 13)
	MovementLoopAddLocation(NPC, 67.87, 0.29, 158.72, 2, 13)
	MovementLoopAddLocation(NPC, 73.54, 0.24, 165.85, 2, 0)
end