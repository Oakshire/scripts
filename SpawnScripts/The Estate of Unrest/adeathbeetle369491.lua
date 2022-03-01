--[[
	Script Name		:	SpawnScripts/The Estate of Unrest/adeathbeetle369491.lua
	Script Purpose	:
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/04/2021 02:55:41 PM
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
	MovementLoopAddLocation(NPC, 65.32, 0.04, 145.49, 2, 0)
	MovementLoopAddLocation(NPC, 60.67, -0.15, 177.91, 2, 10)
	MovementLoopAddLocation(NPC, 68.39, 0.3, 162.71, 2, 10)
	MovementLoopAddLocation(NPC, 77.88, 0, 178.4, 2, 10)
	MovementLoopAddLocation(NPC, 62.62, 0, 163.69, 2, 10)
	MovementLoopAddLocation(NPC, 65.55, -0.44, 182, 2, 10)
	MovementLoopAddLocation(NPC, 69, 0.41, 156.1, 2, 10)
	MovementLoopAddLocation(NPC, 60.92, -0.14, 167.29, 2, 10)
	MovementLoopAddLocation(NPC, 63.59, 0, 147.46, 2, 0)
end