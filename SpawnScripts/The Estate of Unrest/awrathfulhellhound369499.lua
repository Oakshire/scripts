--[[
	Script Name	:SpawnScripts/The Estate of Unrest/awrathfulhellhound369499.lua
	Script Purpose	:	Waypoint Path for hellhound1.lua
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/03/2021 02:38:51 PM
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
	MovementLoopAddLocation(NPC, -2.28, 3.88, 73.33, 2, 0)
	MovementLoopAddLocation(NPC, 0.67, 3.88, 74.04, 2, 14)
	MovementLoopAddLocation(NPC, 15.44, 3.88, 79.62, 2, 14)
	MovementLoopAddLocation(NPC, 13.67, 3.88, 77.55, 2, 14)
	MovementLoopAddLocation(NPC, 6.27, 3.88, 70.14, 2, 14)
	MovementLoopAddLocation(NPC, 5.92, 3.88, 67.89, 2, 14)
	MovementLoopAddLocation(NPC, 9.61, 3.88, 72.2, 2, 0)
	MovementLoopAddLocation(NPC, 18.45, 3.88, 70.69, 2, 14)
	MovementLoopAddLocation(NPC, -3.39, 3.88, 72.36, 2, 14)
end