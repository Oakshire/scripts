--[[
	Script Name	:	SpawnScripts/The Estate of Unrest/acrazedghoul369508.lua
	Script Purpose	:	Waypoint Path for chigger.lua
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/07/2021 06:45:46 PM
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
	MovementLoopAddLocation(NPC, 45.28, 0, 228.03, 1, 6)
	MovementLoopAddLocation(NPC, 27.56, 0.51, 228.05, 1, 6)
	MovementLoopAddLocation(NPC, 44.64, 0, 238.49, 1, 6)
	MovementLoopAddLocation(NPC, 58.86, 0, 232.33, 1, 6)
	MovementLoopAddLocation(NPC, 47.58, 0.01, 225.3, 1, 6)
	MovementLoopAddLocation(NPC, 61.26, 0, 229.87, 1, 6)
	MovementLoopAddLocation(NPC, 64.63, 0, 232.48, 1, 6)
	MovementLoopAddLocation(NPC, 44.14, 0, 241.94, 1, 6)
	MovementLoopAddLocation(NPC, 58.09, 0, 239.26, 1, 6)
	MovementLoopAddLocation(NPC, 27.58, 0.47, 229.82, 1, 6)
	MovementLoopAddLocation(NPC, 30.88, 0.28, 230.6, 1, 6)
	MovementLoopAddLocation(NPC, 61.25, 0, 228.93, 1, 6)
	MovementLoopAddLocation(NPC, 37.99, 0, 240.91, 1, 6)
end