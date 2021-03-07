--[[
	Script Name		:	tomb_vermin13.lua
	Script Purpose	:	Waypoint Path for tomb_vermin13.lua
	Script Author	:	Devn00b
	Script Date		:	06/19/2020 01:39:06 AM
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
	MovementLoopAddLocation(NPC, 83.02, -0.06, -31.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 68.7, 0.1, -30.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 62.63, 0.03, -35.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 58.92, -0.08, -46.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 53.56, -0.06, -49.63, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 46.36, -0.06, -50.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 43.26, 0.58, -60.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 37.8, 0.54, -72.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 35.18, 0.12, -82.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 36.31, -0.01, -88.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 43.45, -0.09, -95.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 54.42, 0.05, -84.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 57.82, 0.54, -82.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 70.11, 0.09, -79.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 78.77, 0.59, -83.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 89.45, 0.05, -80.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 94.55, -0.1, -75.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 94.66, 0.1, -64.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 94.31, -0.13, -39.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 90.14, -0.08, -34.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 94.31, -0.13, -39.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 94.66, 0.1, -64.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 94.55, -0.1, -75.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 89.45, 0.05, -80.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 78.77, 0.59, -83.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 70.11, 0.09, -79.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 57.82, 0.54, -82.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 54.42, 0.05, -84.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 43.45, -0.09, -95.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 36.31, -0.01, -88.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 35.18, 0.12, -82.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 37.8, 0.54, -72.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 43.26, 0.58, -60.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 46.36, -0.06, -50.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 53.56, -0.06, -49.63, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 58.92, -0.08, -46.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 62.63, 0.03, -35.82, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 68.7, 0.1, -30.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 83.02, -0.06, -31.64, 2, math.random(0,5))
end


