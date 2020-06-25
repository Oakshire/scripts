--[[
	Script Name		:	SpawnScripts/Neriak/acourtesan1.lua
	Script Purpose	:	Waypoint Path for a courtesan Neriak Underground Entrance Right
	Script Author	:	Cynnar
	Script Date		:	5/26/2018 12:00:00 AM
	Script Notes	:	<special-instructions>
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
	MovementLoopAddLocation(NPC, -108.44, 7.44, 303.36, 2, 0)
	MovementLoopAddLocation(NPC, -111.22, 7.53, 308.67, 2, 0)
	MovementLoopAddLocation(NPC, -113.68, 7.63, 313.21, 2, 0)
	MovementLoopAddLocation(NPC, -116.4, 7.53, 315.43, 2, 0)
	MovementLoopAddLocation(NPC, -121.05, 7.98, 313.64, 2, 0)
	MovementLoopAddLocation(NPC, -126.46, 8.14, 314.4, 2, 0)
	MovementLoopAddLocation(NPC, -132.14, 8.11, 318.48, 2, 0)
	MovementLoopAddLocation(NPC, -135.36, 7.81, 322.87, 2, 0)
	MovementLoopAddLocation(NPC, -141.83, 7.8, 325.35, 2, 0)
	MovementLoopAddLocation(NPC, -152.51, 7.85, 323.29, 2, 0)
	MovementLoopAddLocation(NPC, -159.26, 8.38, 320.96, 2, 0)
	MovementLoopAddLocation(NPC, -152.51, 7.85, 323.29, 2, 0)
	MovementLoopAddLocation(NPC, -141.83, 7.8, 325.35, 2, 0)
	MovementLoopAddLocation(NPC, -135.36, 7.81, 322.87, 2, 0)
	MovementLoopAddLocation(NPC, -132.14, 8.11, 318.48, 2, 0)
	MovementLoopAddLocation(NPC, -126.46, 8.14, 314.4, 2, 0)
	MovementLoopAddLocation(NPC, -121.05, 7.98, 313.64, 2, 0)
	MovementLoopAddLocation(NPC, -116.4, 7.53, 315.43, 2, 0)
	MovementLoopAddLocation(NPC, -113.68, 7.63, 313.21, 2, 0)
	MovementLoopAddLocation(NPC, -111.22, 7.53, 308.67, 2, 0)
	MovementLoopAddLocation(NPC, -108.44, 7.44, 303.36, 2, 0)
end