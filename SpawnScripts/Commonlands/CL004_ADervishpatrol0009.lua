--[[
	Script Name		:	CL004_adervishpatrol0009.lua
	Script Purpose	:	Waypoint Path for CL004_adervishpatrol0009.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:25:48 AM
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
	MovementLoopAddLocation(NPC, 1341.75, -40.29, 204.85, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1325.49, -41.76, 206.83, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1341.25, -37.95, 132.87, 1.8, 0)
	MovementLoopAddLocation(NPC, 1335.16, -38.92, 126.47, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1333.76, -39.04, 116.6, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1336.48, -38.36, 98.86, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1336.95, -38.68, 136.23, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1322.74, -40.8, 171.42, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1320.29, -41.02, 171.36, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1351.98, -37.68, 191.01, 1.8, math.random(4, 12))
end


