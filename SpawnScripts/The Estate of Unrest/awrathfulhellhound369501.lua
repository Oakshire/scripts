--[[
	Script Name	: SpawnScripts/The Estate of Unrest/awrathfulhellhound369501.lua
	Script Purpose	:	Waypoint Path for RoamerHellhound.lua
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/03/2021 02:18:56 PM
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
	MovementLoopAddLocation(NPC, 7.12, 3.88, 87.58, 2, 0)
	MovementLoopAddLocation(NPC, 8.28, 3.88, 96.49, 2, 0)
	MovementLoopAddLocation(NPC, 9.37, 3.88, 95.64, 2, 14)
	MovementLoopAddLocation(NPC, 7.49, 3.88, 88.46, 2, 14)
	MovementLoopAddLocation(NPC, 7.08, 3.88, 87.05, 2, 14)
	MovementLoopAddLocation(NPC, 7.25, 3.88, 87.77, 2, 14)
	MovementLoopAddLocation(NPC, 5.86, 3.88, 94.76, 2, 14)
	MovementLoopAddLocation(NPC, 6.07, 3.88, 95.88, 2, 14)
	MovementLoopAddLocation(NPC, 7.91, 3.88, 97.73, 2, 14)
	MovementLoopAddLocation(NPC, 8.02, 3.88, 98.7, 2, 14)
	MovementLoopAddLocation(NPC, 9.31, 3.88, 90.14, 2, 0)
end