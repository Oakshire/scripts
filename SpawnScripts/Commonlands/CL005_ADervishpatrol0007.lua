--[[
	Script Name		:	CL005_adervishpatrol0007.lua
	Script Purpose	:	Waypoint Path for CL005_adervishpatrol0007.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:28:42 AM
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
	MovementLoopAddLocation(NPC, 1286.28, -32.42, -97.83, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1250.11, -41.02, -90.57, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1263.15, -35.51, -52.25, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1253.45, -39.88, -78.78, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1262.53, -35.15, -117.04, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1300.18, -28.3, -69.41, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1303.53, -21.52, -52.19, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1304.02, -29.2, -89.87, 1.8, math.random(4, 12))
end


