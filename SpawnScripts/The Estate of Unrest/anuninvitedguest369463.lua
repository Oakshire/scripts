--[[
	Script Name	:	SpawnScripts/The Estate of Unrest/anuninvitedguest369463.lua
	Script Purpose	:
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/05/2021 08:12:27 PM
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
	MovementLoopAddLocation(NPC, 63.78, 0.39, 133.81, 1, 14)
	MovementLoopAddLocation(NPC, 78.58, 0.05, 117.71, 1, 14)
	MovementLoopAddLocation(NPC, 76.51, 0.66, 123.25, 1, 14)
	MovementLoopAddLocation(NPC, 74.84, 0.38, 162.64, 1, 14)
	MovementLoopAddLocation(NPC, 61.76, 0, 158.45, 1, 14)
	MovementLoopAddLocation(NPC, 77.46, 0.21, 161.08, 1, 14)
	MovementLoopAddLocation(NPC, 72.34, 0.5, 152.55, 1, 14)
	MovementLoopAddLocation(NPC, 77.46, 0.21, 161.08, 1, 14)
	MovementLoopAddLocation(NPC, 61.76, 0, 158.45, 1, 14)
	MovementLoopAddLocation(NPC, 74.84, 0.38, 162.64, 1, 14)
	MovementLoopAddLocation(NPC, 76.51, 0.66, 123.25, 1, 14)
	MovementLoopAddLocation(NPC, 78.58, 0.05, 117.71, 1, 14)
	MovementLoopAddLocation(NPC, 63.78, 0.39, 133.81, 1, 14)
end