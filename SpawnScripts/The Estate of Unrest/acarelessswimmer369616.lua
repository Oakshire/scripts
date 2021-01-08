--[[
	Script Name	:	SpawnScripts/The Estate of Unrest/acarelessswimmer369616.lua
	Script Purpose	:
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/07/2021 06:16:25 PM
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
	MovementLoopAddLocation(NPC, 86.86, -8.67, 175.72, 2, 0)
	MovementLoopAddLocation(NPC, 84.16, -2.02, 175.57, 2, 14)
	MovementLoopAddLocation(NPC, 89.33, -2.81, 163.1, 2, 0)
	MovementLoopAddLocation(NPC, 89.82, -8.65, 163.48, 2, 0)
	MovementLoopAddLocation(NPC, 89.82, -6.44, 168.7, 2, 14)
	MovementLoopAddLocation(NPC, 89.83, -3.76, 170.64, 2, 0)
	MovementLoopAddLocation(NPC, 89.84, -3.76, 177.16, 2, 0)
	MovementLoopAddLocation(NPC, 89.84, -5.67, 179.83, 2, 0)
	MovementLoopAddLocation(NPC, 89.84, -8.05, 179.83, 2, 0)
	MovementLoopAddLocation(NPC, 89.25, -1.75, 169.76, 2, 14)
	MovementLoopAddLocation(NPC, 89.42, -7.76, 165.15, 2, 0)
	MovementLoopAddLocation(NPC, 84.62, -1.68, 176.58, 2, 14)
	MovementLoopAddLocation(NPC, 87.59, -8.26, 178.5, 2, 0)
end