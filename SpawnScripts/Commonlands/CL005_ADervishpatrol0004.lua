--[[
	Script Name		:	CL005_adervishpatrol0004.lua
	Script Purpose	:	Waypoint Path for CL005_adervishpatrol0004.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:28:35 AM
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
	MovementLoopAddLocation(NPC, 1253.69, -37.9, -111.82, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1256.77, -38.51, -90.39, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1253.31, -39.68, -68.61, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1285.12, -32.11, -89.76, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1269.61, -33.62, -121.96, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1247.18, -36.24, -126.85, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1256.9, -38.48, -94.96, 1.8, math.random(4, 12))
end


