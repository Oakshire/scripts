--[[
	Script Name	:	SpawnScripts/The Estate of Unrest/acrazedghoul369507.lua
	Script Purpose	:	Waypoint Path for ghoul.lua
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/04/2021 01:39:50 PM
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
	MovementLoopAddLocation(NPC, -43.16, 1.51, 206.13, 1, 6)
	MovementLoopAddLocation(NPC, -32.56, 0.2, 213.81, 1, 6)
	MovementLoopAddLocation(NPC, -71.69, 0.45, 210.82, 1, 6)
	MovementLoopAddLocation(NPC, -52.94, 1.42, 209.67, 1, 6)
	MovementLoopAddLocation(NPC, -71.69, 0.45, 210.82, 1, 6)
	MovementLoopAddLocation(NPC, -32.56, 0.2, 213.81, 1, 6)
	MovementLoopAddLocation(NPC, -43.16, 1.51, 206.13, 1, 6)
end

