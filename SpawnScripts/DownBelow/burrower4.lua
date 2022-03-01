--[[
	Script Name		:	burrower4.lua
	Script Purpose	:	Waypoint Path for burrower4.lua
	Script Author	:	Devn00b
	Script Date		:	05/11/2020 11:29:56 PM
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
	MovementLoopAddLocation(NPC, -31.82, -0.07, -121.38, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.54, 0.53, -126.44, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.63, 0.04, -132.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -54.66, -0.02, -150.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -63.44, 0.04, -153.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.45, -0.01, -152.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.3, -0.08, -158.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.52, -0.05, -176.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.29, -0.04, -162.33, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.84, -0.07, -167.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.54, -0.08, -159.99, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.62, -0.08, -154.6, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.88, -0.11, -152.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -71, -0.08, -148.6, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -76.49, -0.08, -137.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -71, -0.08, -148.6, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.88, -0.11, -152.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -83.62, -0.08, -154.6, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.54, -0.08, -159.99, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.84, -0.07, -167.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.29, -0.04, -162.33, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.52, -0.05, -176.5, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.3, -0.08, -158.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.45, -0.01, -152.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -63.44, 0.04, -153.31, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -54.66, -0.02, -150.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.63, 0.04, -132.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.54, 0.53, -126.44, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -31.82, -0.07, -121.38, 2, math.random(0,10))
end


