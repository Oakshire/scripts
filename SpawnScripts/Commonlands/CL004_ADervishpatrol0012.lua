--[[
	Script Name		:	CL004_adervishpatrol0012.lua
	Script Purpose	:	Waypoint Path for CL004_adervishpatrol0012.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:25:57 AM
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
	MovementLoopAddLocation(NPC, 1323.61, -39.7, 67.05, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1347.12, -36.23, 77.16, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1344.22, -36.65, 76.07, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1351.62, -36.62, 102.53, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1332.06, -35.57, 46.97, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1320.48, -38.66, 52, 1.8, math.random(4, 12))
end


