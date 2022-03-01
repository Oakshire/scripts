--[[
	Script Name	:	SpawnScripts/The Estate of Unrest/ajackolantern369605.lua
	Script Purpose	:	Waypoint Path for jack2.lua
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/04/2021 01:30:29 PM
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
	MovementLoopAddLocation(NPC, -92.19, 1.12, 191.24, 2, 0)
	MovementLoopAddLocation(NPC, -74.03, -1.5, 159.35, 2, 10)
	MovementLoopAddLocation(NPC, -77.9, -1.41, 167.89, 2, 10)
	MovementLoopAddLocation(NPC, -99.78, 2.1, 201.45, 2, 10)
	MovementLoopAddLocation(NPC, -76.81, -1.5, 152.2, 2, 10)
	MovementLoopAddLocation(NPC, -92.15, 0.97, 186.7, 2, 10)
end