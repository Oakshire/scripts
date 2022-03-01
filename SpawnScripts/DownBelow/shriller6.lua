--[[
	Script Name		:	shriller6.lua
	Script Purpose	:	Waypoint Path for shriller6.lua
	Script Author	:	Devn00b
	Script Date		:	05/11/2020 04:11:04 PM
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
	MovementLoopAddLocation(NPC, -52.85, -0.1, -66.42, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.32, -0.13, -67.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.7, -0.09, -72.49, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.23, -0.07, -68.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.33, -0.1, -78.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.11, -0.07, -68.43, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -24.95, -0.07, -75.21, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -19.53, -0.1, -69.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -26.47, -0.13, -76.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -12.97, -0.09, -90.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -30.24, 0.56, -106.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.87, -0.07, -111.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.24, 0.54, -126.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.89, 0, -109.44, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.8, -0.08, -131.78, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -52.05, 0.25, -148.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -60.91, -0.06, -153.42, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.08, -0.03, -152.92, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -60.91, -0.06, -153.42, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -52.05, 0.25, -148.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.8, -0.08, -131.78, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.89, 0, -109.44, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.24, 0.54, -126.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.87, -0.07, -111.71, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -30.24, 0.56, -106.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -12.97, -0.09, -90.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -26.47, -0.13, -76.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -19.53, -0.1, -69.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -24.95, -0.07, -75.21, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.11, -0.07, -68.43, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.33, -0.1, -78.97, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.23, -0.07, -68.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.7, -0.09, -72.49, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -45.32, -0.13, -67.66, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -52.85, -0.1, -66.42, 2, math.random(0,10))
end


