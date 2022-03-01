--[[
	Script Name		:	forager4.lua
	Script Purpose	:	Waypoint Path for forager4.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 02:49:07 PM
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
	MovementLoopAddLocation(NPC, -86.57, -0.09, -145.99, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.67, -0.03, -138.35, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -77.47, -0.08, -137.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -74.68, -0.07, -132.53, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -77.29, -0.05, -130.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -73.18, -0.08, -124.67, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -71.04, -0.11, -126.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -75.86, -0.06, -127.63, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.79, -0.1, -120.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.03, -0.11, -113.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -77.08, -0.11, -109.68, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -72.17, -0.11, -103.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -72.33, -0.11, -96.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -64.42, 0.06, -95.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -60.65, -0.11, -94.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -59.14, -0.12, -92.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -56.9, 0.6, -90.16, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -57.37, -0.06, -74.43, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -55.26, -0.09, -71.37, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -52.4, -0.11, -66.41, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.63, -0.09, -63.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -42.34, -0.01, -65.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.15, -0.03, -69.48, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -42.34, -0.01, -65.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.63, -0.09, -63.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -52.4, -0.11, -66.41, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -55.26, -0.09, -71.37, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -57.37, -0.06, -74.43, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -56.9, 0.6, -90.16, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -59.14, -0.12, -92.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -60.65, -0.11, -94.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -64.42, 0.06, -95.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -72.33, -0.11, -96.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -72.17, -0.11, -103.24, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -77.08, -0.11, -109.68, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.03, -0.11, -113.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.79, -0.1, -120.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -75.86, -0.06, -127.63, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -71.04, -0.11, -126.96, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -73.18, -0.08, -124.67, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -77.29, -0.05, -130.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -74.68, -0.07, -132.53, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -77.47, -0.08, -137.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.67, -0.03, -138.35, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.57, -0.09, -145.99, 2, math.random(0,10))
end


