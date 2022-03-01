--[[
	Script Name		:	CL005_adervishpatrol0014.lua
	Script Purpose	:	Waypoint Path for CL005_adervishpatrol0014.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:29:04 AM
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
	MovementLoopAddLocation(NPC, 1251.34, -40.64, -71, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1246.4, -41.68, -96.15, 1.8, 0)
	MovementLoopAddLocation(NPC, 1243.87, -41.5, -101.39, 1.8, 0)
	MovementLoopAddLocation(NPC, 1244.16, -41.21, -105.94, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1239.81, -40.92, -112.35, 1.8, 0)
	MovementLoopAddLocation(NPC, 1225.37, -41.32, -121.57, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1238.01, -36.63, -132.68, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1234.45, -41.96, -100.73, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1266.42, -35.6, -90.37, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1250.07, -41.48, -78.72, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1257.19, -38.39, -89.6, 1.8, math.random(4, 12))
end


