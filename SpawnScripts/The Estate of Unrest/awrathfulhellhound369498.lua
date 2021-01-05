--[[
	Script Name	:	SpawnScripts/The Estate of Unrest/awrathfulhellhound369498.lua
	Script Purpose	:	Waypoint Path for hellhound2.lua
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/04/2021 01:06:07 PM
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
	MovementLoopAddLocation(NPC, 4.74, 3.88, 78.2, 2, 0)
	MovementLoopAddLocation(NPC, 6.32, 3.88, 80.87, 2, 14)
	MovementLoopAddLocation(NPC, 4.65, 3.88, 72.17, 2, 14)
	MovementLoopAddLocation(NPC, 4.78, 3.88, 73.63, 2, 14)
	MovementLoopAddLocation(NPC, 7.13, 3.88, 79.37, 2, 14)
	MovementLoopAddLocation(NPC, 11.41, 3.88, 79.4, 2, 14)
	MovementLoopAddLocation(NPC, 8.78, 3.88, 78.09, 2, 14)
	MovementLoopAddLocation(NPC, 4.74, 3.88, 78.2, 2, 0)
end
