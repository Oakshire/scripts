--[[
	Script Name		:	tomb_sentry3.lua
	Script Purpose	:	Waypoint Path for tomb_sentry3.lua
	Script Author	:	Devn00b
	Script Date		:	06/19/2020 01:22:13 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 96.03, -0.7, -52, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 96.95, 0.16, -39.18, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 88.44, 0.51, -32.08, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 77.57, -0.04, -32.17, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 76.96, -0.01, -19.19, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 74.47, 0.05, -15.01, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 76.98, 0.07, -29.61, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 63.88, 0.14, -33.57, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 61.19, -0.13, -38.87, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 60.16, 0.1, -46.67, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 52.68, -0.12, -49.18, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 45.13, -0.15, -49.31, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 44.45, 0.08, -41.2, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 38.58, -0.05, -32.69, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 27.27, 0.2, -20.86, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 27.47, -0.05, -3.14, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 27.41, 0.46, 12.47, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 27.47, -0.05, -3.14, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 27.27, 0.2, -20.86, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 38.58, -0.05, -32.69, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 44.45, 0.08, -41.2, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 45.13, -0.15, -49.31, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 52.68, -0.12, -49.18, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 60.16, 0.1, -46.67, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 61.19, -0.13, -38.87, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 63.88, 0.14, -33.57, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 76.98, 0.07, -29.61, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 74.47, 0.05, -15.01, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 76.96, -0.01, -19.19, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 77.57, -0.04, -32.17, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 88.44, 0.51, -32.08, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 96.95, 0.16, -39.18, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 96.03, -0.7, -52, 2, math.random(0,7))
end


