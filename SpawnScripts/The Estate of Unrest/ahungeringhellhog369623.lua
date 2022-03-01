--[[
	Script Name		:	hellhoundretake.lua
	Script Purpose	:	Waypoint Path for hellhoundretake.lua
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/03/2021 01:49:03 PM
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
	MovementLoopAddLocation(NPC, 68.22, 0.15, 232.64, 2, 0)
	MovementLoopAddLocation(NPC, 73.71, 0.45, 235.88, 2, 14)
	MovementLoopAddLocation(NPC, 75.26, 0.69, 228.88, 2, 14)
	MovementLoopAddLocation(NPC, 88.83, 0.16, 229.54, 2, 14)
	MovementLoopAddLocation(NPC, 77.85, 0.29, 237.44, 2, 14)
	MovementLoopAddLocation(NPC, 90.95, 0, 231.26, 2, 14)
	MovementLoopAddLocation(NPC, 84.31, 0.47, 239.95, 2, 14)
	MovementLoopAddLocation(NPC, 84.93, 0.5, 235.39, 2, 14)
	MovementLoopAddLocation(NPC, 68.17, 0.19, 233.2, 2, 14)
end