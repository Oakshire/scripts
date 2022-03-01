--[[
	Script Name		:	burrower3.lua
	Script Purpose	:	Waypoint Path for burrower3.lua
	Script Author	:	Devn00b
	Script Date		:	05/11/2020 03:57:48 PM
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
	MovementLoopAddLocation(NPC, -51.54, -0.09, -65.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -50.08, -0.06, -70.86, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -55.36, -0.08, -69.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -51.72, -0.04, -74.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -56.37, -0.07, -72.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -53.39, -0.07, -78.04, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -58, -0.06, -76.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -56.06, -0.1, -77.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -54.03, -0.08, -72.22, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -50.28, -0.11, -65.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.98, -0.09, -63.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.4, -0.1, -68.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -44.59, -0.11, -66.43, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.63, -0.07, -70.99, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.35, -0.08, -73.1, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.12, -0.04, -71.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.41, -0.08, -65.95, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.18, -0.03, -71.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.16, -0.09, -80.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.52, -0.11, -77.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.66, -0.08, -66.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.4, -0.05, -68.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.22, -0.07, -73.55, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -49.3, -0.09, -64.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -49.92, -0.06, -70.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -55.25, -0.08, -68.83, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -43.33, -0.03, -64.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.21, -0.1, -68.8, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -43.33, -0.03, -64.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -55.25, -0.08, -68.83, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -49.92, -0.06, -70.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -49.3, -0.09, -64.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.22, -0.07, -73.55, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.4, -0.05, -68.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.66, -0.08, -66.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.52, -0.11, -77.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.16, -0.09, -80.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.18, -0.03, -71.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.41, -0.08, -65.95, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.12, -0.04, -71.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.35, -0.08, -73.1, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.63, -0.07, -70.99, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -44.59, -0.11, -66.43, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.4, -0.1, -68.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.98, -0.09, -63.27, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -50.28, -0.11, -65.89, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -54.03, -0.08, -72.22, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -56.06, -0.1, -77.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -58, -0.06, -76.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -53.39, -0.07, -78.04, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -56.37, -0.07, -72.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -51.72, -0.04, -74.03, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -55.36, -0.08, -69.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -50.08, -0.06, -70.86, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -51.54, -0.09, -65.8, 2, math.random(0,10))
end


