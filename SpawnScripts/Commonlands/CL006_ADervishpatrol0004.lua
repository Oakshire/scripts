--[[
	Script Name		:	CL006_adervishpatrol0004.lua
	Script Purpose	:	Waypoint Path for CL006_adervishpatrol0004.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:30:06 AM
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
	MovementLoopAddLocation(NPC, 1212.11, -32.49, 416.32, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1190.32, -38.82, 405.43, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1203.77, -35.99, 406.47, 1.8, 0)
	MovementLoopAddLocation(NPC, 1171.99, -42.22, 399.49, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1195.91, -34.16, 436.32, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1211.38, -34.55, 403.13, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1219.55, -33, 399.1, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1211.35, -32.77, 415.96, 1.8, math.random(4, 12))
end


