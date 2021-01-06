--[[
	Script Name	:	SpawnScripts/The Estate of Unrest/anuninvitedguest133771722.lua
	Script Purpose	:	Waypoint Path for left.lua
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/05/2021 07:28:42 PM
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
	MovementLoopAddLocation(NPC, 3.04, 0.31, 24.53, 1, 0)
	MovementLoopAddLocation(NPC, 5.91, 0.43, 44.72, 1, 12)
	MovementLoopAddLocation(NPC, 3.69, 0.37, 30.46, 1, 12)
	MovementLoopAddLocation(NPC, 4.19, 0.32, 48.04, 1, 12)
	MovementLoopAddLocation(NPC, 9.24, 0.37, 48.15, 1, 12)
	MovementLoopAddLocation(NPC, 11.04, 0.3, 48.63, 1, 12)
	MovementLoopAddLocation(NPC, 2.79, 0.3, 23.77, 1, 12)
end