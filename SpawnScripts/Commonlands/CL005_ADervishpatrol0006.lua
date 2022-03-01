--[[
	Script Name		:	CL005_adervishpatrol0006.lua
	Script Purpose	:	Waypoint Path for CL005_adervishpatrol0006.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:28:40 AM
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
	MovementLoopAddLocation(NPC, 1306.85, -30.29, -7.02, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1273.12, -33.65, -89.9, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1240.31, -42.07, -95.45, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1266.42, -34.96, -74.9, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1259.81, -36.87, -69.53, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1263.3, -35.58, -46.96, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1253.89, -39.09, -62.71, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1274.64, -33.46, -36.87, 1.8, math.random(4, 12))
end


