--[[
	Script Name		:	crypt_substance8.lua
	Script Purpose	:	Waypoint Path for crypt_substance8.lua
	Script Author	:	Devn00b
	Script Date		:	05/11/2020 04:05:48 PM
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
	MovementLoopAddLocation(NPC, -52.47, -0.08, -71.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -57.57, -0.08, -85.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -57.08, 0.57, -89.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -59.33, -0.08, -86.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -57.79, -0.03, -78.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -54.95, -0.08, -69.83, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -46.76, -0.11, -64.88, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.38, -0.09, -73.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.29, -0.09, -70.1, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.3, -0.06, -74.86, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -25.03, -0.06, -74.04, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -16.88, -0.08, -71.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -18.99, -0.08, -74.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -20.89, -0.08, -72.67, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -24.19, -0.06, -75.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -20.24, 0.02, -80.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -21.74, -0.06, -82.48, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -30.26, -0.01, -76.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -30.67, -0.06, -74.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.49, -0.03, -65.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.49, -0.04, -71.37, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.82, -0.1, -78.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.87, -0.1, -74.78, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.43, -0.09, -76.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.87, -0.08, -73.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.2, -0.05, -67.07, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -42.25, 0, -65.49, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -51.62, -0.08, -69.79, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -42.25, 0, -65.49, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.2, -0.05, -67.07, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.87, -0.08, -73.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.43, -0.09, -76.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.87, -0.1, -74.78, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.82, -0.1, -78.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.49, -0.04, -71.37, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.49, -0.03, -65.73, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -30.67, -0.06, -74.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -30.26, -0.01, -76.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -21.74, -0.06, -82.48, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -20.24, 0.02, -80.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -24.19, -0.06, -75.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -20.89, -0.08, -72.67, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -18.99, -0.08, -74.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -16.88, -0.08, -71.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -25.03, -0.06, -74.04, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.3, -0.06, -74.86, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.29, -0.09, -70.1, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.38, -0.09, -73.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -46.76, -0.11, -64.88, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -54.95, -0.08, -69.83, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -57.79, -0.03, -78.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -59.33, -0.08, -86.18, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -57.08, 0.57, -89.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -57.57, -0.08, -85.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -52.47, -0.08, -71.31, 2, math.random(0,10))
end


