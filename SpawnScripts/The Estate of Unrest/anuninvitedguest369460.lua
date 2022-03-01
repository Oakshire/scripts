--[[
	Script Name		:	SpawnScripts/The Estate of Unrest/anuninvitedguest369460.lua
	Script Purpose	:
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/05/2021 07:42:58 PM
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
	MovementLoopAddLocation(NPC, 9.32, 0.42, 23.67, 1, 0)
	MovementLoopAddLocation(NPC, 5.72, 0.43, 26.11, 1, 12)
	MovementLoopAddLocation(NPC, 11.31, 0.35, 34.5, 1, 12)
	MovementLoopAddLocation(NPC, 11.74, 0.29, 47.37, 1, 12)
	MovementLoopAddLocation(NPC, 6.85, 0.43, 41.46, 1, 12)
	MovementLoopAddLocation(NPC, 10.44, 0.4, 24.07, 1, 12)
	MovementLoopAddLocation(NPC, 6.31, 0.43, 29.83, 1, 0)
end