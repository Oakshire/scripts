--[[
	Script Name		:	SpawnScripts/The Estate of Unrest/adeathbeetle369492.lua
	Script Purpose	:
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/04/2021 02:46:27 PM
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
	MovementLoopAddLocation(NPC, 61.62, 0, 163.78, 2, 10)
	MovementLoopAddLocation(NPC, 63.63, 0, 147.52, 2, 10)
	MovementLoopAddLocation(NPC, 63.5, 0, 150.15, 2, 10)
	MovementLoopAddLocation(NPC, 73.1, 0.38, 163.72, 2, 10)
	MovementLoopAddLocation(NPC, 65.6, 0.09, 144.82, 2, 10)
	MovementLoopAddLocation(NPC, 60.31, -0.1, 178.42, 2, 10)
	MovementLoopAddLocation(NPC, 68.29, 0.29, 162.42, 2, 10)
	MovementLoopAddLocation(NPC, 78.02, 0, 178.66, 2, 10)
	MovementLoopAddLocation(NPC, 62.59, 0, 163.59, 2, 10)
end

