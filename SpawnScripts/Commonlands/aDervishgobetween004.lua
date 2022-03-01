--[[
	Script Name		:	adervishgobetween004.lua
	Script Purpose	:	Waypoint Path for adervishgobetween004.lua
	Script Author	:	Auto Generated
	Script Date		:	09/02/2020 10:49:30 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 1221.56, -33.82, -217.46, 4, 0)
	MovementLoopAddLocation(NPC, 1284.59, -30.94, -73.66, 4, 0)
	MovementLoopAddLocation(NPC, 1293.2, -29.66, -28.02, 4, 0)
	MovementLoopAddLocation(NPC, 1336.4, -32.67, 35.36, 4, 0)
	MovementLoopAddLocation(NPC, 1361.67, -34.98, 129.18, 4, 0)
	MovementLoopAddLocation(NPC, 1340.89, -40.19, 245.82, 4, 0)
	MovementLoopAddLocation(NPC, 1361.67, -34.98, 129.18, 4, 0)
	MovementLoopAddLocation(NPC, 1336.4, -32.67, 35.36, 4, 0)
	MovementLoopAddLocation(NPC, 1293.2, -29.66, -28.02, 4, 0)
	MovementLoopAddLocation(NPC, 1284.59, -30.94, -73.66, 4, 0)
	MovementLoopAddLocation(NPC, 1221.56, -33.82, -217.46, 4, 0)
end


