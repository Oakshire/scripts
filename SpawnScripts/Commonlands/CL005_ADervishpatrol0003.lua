--[[
	Script Name		:	CL005_adervishpatrol0003.lua
	Script Purpose	:	Waypoint Path for CL005_adervishpatrol0003.lua
	Script Author	:	Auto Generated
	Script Date		:	07/28/2020 03:28:33 AM
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
	MovementLoopAddLocation(NPC, 1247.03, -41.9, -90.28, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1262.78, -36.37, -74.55, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1259.93, -36.6, -47.76, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1265.8, -34.64, -57.83, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1275.67, -32.11, -68.5, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1262.97, -36.38, -101.14, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1256.85, -37.82, -64.04, 1.8, math.random(4, 12))
	MovementLoopAddLocation(NPC, 1253.82, -38.95, -100.05, 1.8, math.random(4, 12))
end


