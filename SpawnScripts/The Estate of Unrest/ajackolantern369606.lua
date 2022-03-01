--[[
	Script Name	:	SpawnScripts/The Estate of Unrest/ajackolantern369606.lua
Script Purpose	:	Waypoint Path for jack.lua
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/04/2021 01:21:07 PM
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
	MovementLoopAddLocation(NPC, -76.82, 0.29, 85.58, 2, 0)
	MovementLoopAddLocation(NPC, -69.98, 0, 69.56, 2, 10)
	MovementLoopAddLocation(NPC, -41.46, 0, 122.42, 2, 10)
	MovementLoopAddLocation(NPC, -55.19, -0.37, 108.23, 2, 10)
	MovementLoopAddLocation(NPC, -64.36, 0, 97.86, 2, 0)
	MovementLoopAddLocation(NPC, -61.99, 0, 100.31, 2, 6)
	MovementLoopAddLocation(NPC, -50.08, -0.15, 97.24, 2, 10)
	MovementLoopAddLocation(NPC, -53.75, -0.38, 104.41, 2, 10)
end

