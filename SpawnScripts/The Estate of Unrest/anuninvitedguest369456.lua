--[[
	Script Name	:	SpawnScripts/The Estate of Unrest/anuninvitedguest369456.lua
	Script Purpose	:
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/06/2021 07:27:34 PM
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
	MovementLoopAddLocation(NPC, -79.35, -1.5, 155.11, 1, 14)
	MovementLoopAddLocation(NPC, -79.77, -0.94, 173.09, 1, 14)
	MovementLoopAddLocation(NPC, -91.77, 0, 175.09, 1, 14)
	MovementLoopAddLocation(NPC, -86.7, -0.81, 167.8, 1, 14)
	MovementLoopAddLocation(NPC, -78.76, -1.5, 150.75, 1, 14)
	MovementLoopAddLocation(NPC, -90.57, 0, 178.39, 1, 14)
	MovementLoopAddLocation(NPC, -88.67, 0.62, 186.77, 1, 14)
	MovementLoopAddLocation(NPC, -75.08, -1.5, 162.45, 1, 14)
	MovementLoopAddLocation(NPC, -86.59, -0.43, 172.27, 1, 14)
	MovementLoopAddLocation(NPC, -79.36, -1.5, 155.01, 1, 14)
end