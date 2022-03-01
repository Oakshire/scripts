--[[
	Script Name		:	adervishgobetween006.lua
	Script Purpose	:	Waypoint Path for adervishgobetween006.lua
	Script Author	:	Auto Generated
	Script Date		:	09/02/2020 10:49:32 AM
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
	MovementLoopAddLocation(NPC, 1021.44, -42.67, 437.65, 4, 0)
	MovementLoopAddLocation(NPC, 732.04, -54.8, 368.91, 4, 0)
	MovementLoopAddLocation(NPC, 709.47, -50.16, 260.3, 4, 0)
	MovementLoopAddLocation(NPC, 732.04, -54.8, 368.91, 4, 0)
	MovementLoopAddLocation(NPC, 1021.44, -42.67, 437.65, 4, 0)
end


