--[[
	Script Name		:	SpawnScripts/The Estate of Unrest/anuninvitedguest369462.lua
	Script Purpose	:
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/07/2021 06:31:56 PM
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
	MovementLoopAddLocation(NPC, 24.56, 0.58, 228.71, 1, 14)
	MovementLoopAddLocation(NPC, 5.83, 1.05, 231.84, 1, 14)
	MovementLoopAddLocation(NPC, 19.14, 0.71, 232.98, 1, 14)
	MovementLoopAddLocation(NPC, 8.51, 0.69, 227.72, 1, 14)
	MovementLoopAddLocation(NPC, 34.07, 0, 238.17, 1, 14)
	MovementLoopAddLocation(NPC, 3.07, 0.96, 229.82, 1, 14)
	MovementLoopAddLocation(NPC, 30.32, 0.42, 225.48, 1, 14)
	MovementLoopAddLocation(NPC, 45.39, 0, 239.46, 1, 14)
	MovementLoopAddLocation(NPC, 47.4, 0, 232.77, 1, 0)
	MovementLoopAddLocation(NPC, 39.79, 0, 238.98, 1, 0)
	MovementLoopAddLocation(NPC, 40.81, 0, 228.83, 1, 14)
end