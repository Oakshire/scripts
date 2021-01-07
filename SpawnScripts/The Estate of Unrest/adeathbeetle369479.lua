--[[
	Script Name	:	SpawnScripts/The Estate of Unrest/adeathbeetle369479.lua
	Script Purpose	:
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/06/2021 08:19:49 PM
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
	MovementLoopAddLocation(NPC, -58.31, -0.54, 86.93, 2, 12)
	MovementLoopAddLocation(NPC, -69.22, 0.41, 82.15, 2, 12)
	MovementLoopAddLocation(NPC, -81.01, 0, 84.09, 2, 12)
	MovementLoopAddLocation(NPC, -64.15, -0.09, 80.01, 2, 0)
	MovementLoopAddLocation(NPC, -76.23, 0.34, 86.14, 2, 12)
	MovementLoopAddLocation(NPC, -82.26, 0, 74.88, 2, 12)
	MovementLoopAddLocation(NPC, -89.66, 0, 92.17, 2, 12)
	MovementLoopAddLocation(NPC, -60.9, -0.09, 82.04, 2, 12)
end 