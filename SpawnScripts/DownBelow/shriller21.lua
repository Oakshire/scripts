--[[
	Script Name		:	shriller21.lua
	Script Purpose	:	Waypoint Path for shriller21.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 02:15:31 AM
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
	MovementLoopAddLocation(NPC, -148.91, -0.12, -84.17, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -158.68, 0.47, -106.18, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -160.8, -0.03, -124.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -156.74, -0.14, -109.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -147.99, -0.08, -85.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -165.72, -0.22, -72.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -182.48, -0.12, -73.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -188.97, 0.41, -71.93, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -192.03, -0.02, -66.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -190.41, -0.1, -49.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -178.01, -0.1, -33.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -176.64, -0.1, -37.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.42, 0.05, -47.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -190.18, -0.09, -50.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.44, -0.06, -65.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.95, 0.4, -70.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -176.76, -0.21, -75.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -176.73, -0.24, -85.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -188.57, -0.04, -93.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.14, 0.6, -93.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -209.9, -0.04, -93.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -220.12, -0.05, -79.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -219.32, 0.16, -65.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -216.9, 0.03, -55.18, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.7, 0.14, -40.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -216.9, 0.03, -55.18, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -219.32, 0.16, -65.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -220.12, -0.05, -79.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -209.9, -0.04, -93.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.14, 0.6, -93.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -188.57, -0.04, -93.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -176.73, -0.24, -85.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -176.76, -0.21, -75.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.95, 0.4, -70.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.44, -0.06, -65.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -190.18, -0.09, -50.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.42, 0.05, -47.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -176.64, -0.1, -37.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -178.01, -0.1, -33.57, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -190.41, -0.1, -49.52, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -192.03, -0.02, -66.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -188.97, 0.41, -71.93, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -182.48, -0.12, -73.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -165.72, -0.22, -72.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -147.99, -0.08, -85.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -156.74, -0.14, -109.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -160.8, -0.03, -124.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -158.68, 0.47, -106.18, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -148.91, -0.12, -84.17, 2, math.random(0,5))
end


