--[[
	Script Name	:	SpawnScripts/The Estate of Unrest/ajackolantern133771744.lua
	Script Purpose	:	
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/06/2021 07:00:22 PM
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
	MovementLoopAddLocation(NPC, 8.72, 1.04, 231.09, 2, 6)
	MovementLoopAddLocation(NPC, 10.87, 0.91, 229.32, 2, 6)
	MovementLoopAddLocation(NPC, 28.47, 0.16, 234.6, 2, 6)
	MovementLoopAddLocation(NPC, 41.08, 0, 226.4, 2, 6)
	MovementLoopAddLocation(NPC, 52.8, 0.01, 227.8, 2, 6)
	MovementLoopAddLocation(NPC, 28.96, 0.4, 229.68, 2, 6)
	MovementLoopAddLocation(NPC, 41.99, 0, 226.19, 2, 6)
	MovementLoopAddLocation(NPC, 3.26, 1.19, 234.62, 2, 6)
	MovementLoopAddLocation(NPC, 7.23, 0.97, 239.36, 2, 6)
	MovementLoopAddLocation(NPC, 52.83, 0, 231.21, 2, 6)
	MovementLoopAddLocation(NPC, 48.72, 0.02, 226.64, 2, 6)
	MovementLoopAddLocation(NPC, 23.61, 0.15, 238.75, 2, 6)
	MovementLoopAddLocation(NPC, 15.43, 0.94, 234.31, 2, 6)
end