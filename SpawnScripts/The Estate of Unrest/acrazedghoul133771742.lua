--[[
	Script Name		:	SpawnScripts/The Estate of Unrest/acrazedghoul133771742.lua
	Script Purpose	:
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/04/2021 03:12:51 PM
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
	MovementLoopAddLocation(NPC, 71.02, -0.03, 67.23, 1, 8)
	MovementLoopAddLocation(NPC, 61.56, -0.36, 71.56, 1, 8)
	MovementLoopAddLocation(NPC, 80.89, 0, 64.89, 1, 8)
	MovementLoopAddLocation(NPC, 57.84, -0.92, 78.6, 1, 8)
	MovementLoopAddLocation(NPC, 78.4, 0, 61.66, 1, 8)
	MovementLoopAddLocation(NPC, 56.04, -0.21, 84.63, 1, 8)
	MovementLoopAddLocation(NPC, 55.64, -0.19, 84.6, 1, 8)
	MovementLoopAddLocation(NPC, 76.22, 0, 61.51, 1, 0)
	MovementLoopAddLocation(NPC, 83.35, 0, 63.92, 1, 8)
	MovementLoopAddLocation(NPC, 71.38, -0.4, 77.3, 1, 8)
end

