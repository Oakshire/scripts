--[[
	Script Name		:	tomb_sentry2.lua
	Script Purpose	:	Waypoint Path for tomb_sentry2.lua
	Script Author	:	Devn00b
	Script Date		:	06/19/2020 12:51:03 AM
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
	MovementLoopAddLocation(NPC, 52.41, -0.03, -88.32, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 44.04, -0.17, -97.11, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 32.74, 0.01, -86.51, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 35.46, 0.53, -71.31, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 40.35, 0.08, -69, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 44.58, 0.59, -60.46, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 44.18, -0.08, -49.27, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 57.63, 0.05, -48.26, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 60.6, 0.02, -44.85, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 62.16, 0.13, -34.52, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 67.67, 0.07, -31.02, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 85.82, 0, -32.01, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 89.33, 0.11, -32.19, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 96.29, 0.18, -38.75, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 95, 0.4, -56.5, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 97.11, 0.01, -71.06, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 95.09, 0.04, -79.56, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 84.96, 0.06, -83.43, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 59.48, 0.47, -83.61, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 54.67, 0.07, -87.4, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 59.48, 0.47, -83.61, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 84.96, 0.06, -83.43, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 95.09, 0.04, -79.56, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 97.11, 0.01, -71.06, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 95, 0.4, -56.5, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 96.29, 0.18, -38.75, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 89.33, 0.11, -32.19, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 85.82, 0, -32.01, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 67.67, 0.07, -31.02, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 62.16, 0.13, -34.52, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 60.6, 0.02, -44.85, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 57.63, 0.05, -48.26, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 44.18, -0.08, -49.27, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 44.58, 0.59, -60.46, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 40.35, 0.08, -69, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 35.46, 0.53, -71.31, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 32.74, 0.01, -86.51, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 44.04, -0.17, -97.11, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 52.41, -0.03, -88.32, 2, math.random(0,7))
end


