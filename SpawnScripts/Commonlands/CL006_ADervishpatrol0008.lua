--[[
	Script Name		:	CL006_adervishpatrol0008.lua
	Script Purpose	:	Waypoint Path for CL006_adervishpatrol0008.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:30:17 AM
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
	MovementLoopAddLocation(NPC, 1227.46, -40.08, 360.59, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1235.18, -29.42, 392.26, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1228.15, -27.23, 415.56, 1.8, 0)
	MovementLoopAddLocation(NPC, 1211.95, -33.27, 412.08, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1202.98, -32.83, 433.09, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1259.26, -25.21, 400.49, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1259.75, -32.61, 376.9, 1.8, math.random(4, 12))
end


