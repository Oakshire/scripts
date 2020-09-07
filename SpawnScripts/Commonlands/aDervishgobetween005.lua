--[[
	Script Name		:	adervishgobetween005.lua
	Script Purpose	:	Waypoint Path for adervishgobetween005.lua
	Script Author	:	Auto Generated
	Script Date		:	09/02/2020 10:49:38 AM
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
	MovementLoopAddLocation(NPC, 1348.89, -29.81, 15.47, 4, 0)
	MovementLoopAddLocation(NPC, 1310.52, -41.76, 196.63, 4, 0)
	MovementLoopAddLocation(NPC, 1287.37, -39.98, 324.35, 4, 0)
	MovementLoopAddLocation(NPC, 1212.97, -31.45, 421.63, 4, 0)
	MovementLoopAddLocation(NPC, 1053.58, -43.65, 462.59, 4, 0)
	MovementLoopAddLocation(NPC, 866.82, -40.05, 433.61, 4, 0)
	MovementLoopAddLocation(NPC, 763.59, -46.75, 442.06, 4, 0)
	MovementLoopAddLocation(NPC, 866.82, -40.05, 433.61, 4, 0)
	MovementLoopAddLocation(NPC, 1053.58, -43.65, 462.59, 4, 0)
	MovementLoopAddLocation(NPC, 1212.97, -31.45, 421.63, 4, 0)
	MovementLoopAddLocation(NPC, 1287.37, -39.98, 324.35, 4, 0)
	MovementLoopAddLocation(NPC, 1310.52, -41.76, 196.63, 4, 0)
	MovementLoopAddLocation(NPC, 1348.89, -29.81, 15.47, 4, 0)
end


