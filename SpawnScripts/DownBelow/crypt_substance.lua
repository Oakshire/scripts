--[[
	Script Name		:	crypt_substance.lua
	Script Purpose	:	Waypoint Path for crypt_substance.lua
	Script Author	:	Devn00b
	Script Date		:	05/10/2020 08:06:14 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 1.95, -0.09, -18.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 0.71, -0.12, -20.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -0.7, 0.13, -28.53, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -3.82, -0.08, -27.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.43, -0.06, -30.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -4.38, -0.08, -35.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -8.13, -0.05, -31.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.22, -0.08, -32.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -8.59, -0.05, -37.18, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.26, -0.04, -39.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.34, -0.06, -38.19, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -12.26, -0.01, -42.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -16.86, 0.52, -46.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -12.48, -0.09, -47.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -15.39, -0.06, -51.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.47, -0.08, -49.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.61, 0.53, -53.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.03, -0.08, -57.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -3.95, -0.06, -56.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -7.68, -0.06, -58.93, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.85, -0.06, -62.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -1.34, -0.13, -59.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 8.71, -0.06, -57.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 8.83, -0.08, -62.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 4.35, -0.06, -62.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 4.6, -0.1, -70.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 4.35, -0.06, -62.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 8.83, -0.08, -62.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 8.71, -0.06, -57.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -1.34, -0.13, -59.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.85, -0.06, -62.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -7.68, -0.06, -58.93, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -3.95, -0.06, -56.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.03, -0.08, -57.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.61, 0.53, -53.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.47, -0.08, -49.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -15.39, -0.06, -51.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -12.48, -0.09, -47.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -16.86, 0.52, -46.11, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -12.26, -0.01, -42.21, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.34, -0.06, -38.19, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.26, -0.04, -39.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -8.59, -0.05, -37.18, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.22, -0.08, -32.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -8.13, -0.05, -31.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -4.38, -0.08, -35.05, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.43, -0.06, -30.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -3.82, -0.08, -27.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -0.7, 0.13, -28.53, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 0.71, -0.12, -20.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 1.95, -0.09, -18.37, 2, math.random(0,5))
end


