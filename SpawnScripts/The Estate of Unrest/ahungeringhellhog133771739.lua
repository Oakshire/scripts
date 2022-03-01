--[[
	Script Name     :SpawnScripts/The Estate of Unrest/ahungeringhellhog133771739.lua
	Script Purpose	:	Waypoint Path for Pig3.lua
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/03/2021 01:58:20 PM
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
	MovementLoopAddLocation(NPC, 89.13, 0.15, 229.18, 2, 0)
	MovementLoopAddLocation(NPC, 78.27, 0.33, 237.46, 2, 14)
	MovementLoopAddLocation(NPC, 90.71, 0, 231.28, 2, 14)
	MovementLoopAddLocation(NPC, 84.09, 0.48, 239.95, 2, 14)
	MovementLoopAddLocation(NPC, 84.96, 0.5, 235.22, 2, 14)
	MovementLoopAddLocation(NPC, 68.14, 0.18, 233.05, 2, 14)
	MovementLoopAddLocation(NPC, 72.27, 0.56, 232.42, 2, 14)
	MovementLoopAddLocation(NPC, 73.42, 0.45, 235.66, 2, 0)
	MovementLoopAddLocation(NPC, 74.78, 0.69, 228.87, 2, 14)
	MovementLoopAddLocation(NPC, 89.06, 0.17, 229.09, 2, 14)
end