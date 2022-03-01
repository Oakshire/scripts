--[[
	Script Name		:	tomb_sentry4.lua
	Script Purpose	:	Waypoint Path for tomb_sentry4.lua
	Script Author	:	Devn00b
	Script Date		:	06/19/2020 01:33:38 AM
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
	MovementLoopAddLocation(NPC, 63.04, 0.28, -33.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 60.2, 0.09, -46.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 51.3, 0.08, -50.48, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 46.7, -0.07, -47.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 41.84, 0.06, -37.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 28.46, 0.1, -24.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 27.18, -0.07, -0.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 12.55, 0.01, -0.45, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 28.49, -0.09, 0.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 27.84, 0.6, 13.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 27.95, 0.15, -25.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 38.73, 0, -27.52, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 37.65, 0, -35.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 46.22, 0, -38.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 34.02, 0.01, -29.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 26.68, 0.18, -21.59, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 42.4, -0.01, -34.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 26.68, 0.18, -21.59, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 34.02, 0.01, -29.81, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 46.22, 0, -38.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 37.65, 0, -35.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 38.73, 0, -27.52, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 27.95, 0.15, -25.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 27.84, 0.6, 13.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 28.49, -0.09, 0.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 12.55, 0.01, -0.45, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 27.18, -0.07, -0.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 28.46, 0.1, -24.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 41.84, 0.06, -37.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 46.7, -0.07, -47.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 51.3, 0.08, -50.48, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 60.2, 0.09, -46.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 63.04, 0.28, -33.71, 2, math.random(0,10))
end


