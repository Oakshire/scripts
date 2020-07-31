--[[
	Script Name		:	CL004_adervishpatrol0001.lua
	Script Purpose	:	Waypoint Path for CL004_adervishpatrol0001.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:25:22 AM
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
	MovementLoopAddLocation(NPC, 1362.17, -32.75, 62.16, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1326.98, -38.37, 63.06, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1335.91, -35, 46.59, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1328.27, -36.99, 51.55, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1341.13, -37.72, 87.55, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1363.83, -33.21, 76.89, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1326.85, -39.57, 77.96, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1346.76, -33.5, 46.47, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1340.44, -37.4, 77.98, 1.8, math.random(4, 12))
end


