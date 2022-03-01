--[[
	Script Name	:	SpawnScripts/The Estate of Unrest/acrazedghoul369509.lua
	Script Purpose	:	Waypoint Path for ghoul2.lua
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/04/2021 02:27:15 PM
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
	MovementLoopAddLocation(NPC, 58.36, 0.01, 134.31, 1, 6)
	MovementLoopAddLocation(NPC, 79.95, 0.52, 143.1, 1, 6)
	MovementLoopAddLocation(NPC, 72.6, 0.5, 153.64, 1, 6)
	MovementLoopAddLocation(NPC, 51.69, 0.13, 131.31, 1, 6)
	MovementLoopAddLocation(NPC, 62.42, 0.07, 143.21, 1, 6)
	MovementLoopAddLocation(NPC, 61.38, 0, 161.69, 1, 6)
	MovementLoopAddLocation(NPC, 59.82, 0.02, 159.62, 1, 6)
end
