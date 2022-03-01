--[[
	Script Name		:	shriller11.lua
	Script Purpose	:	Waypoint Path for shriller11.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 12:23:40 PM
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
	MovementLoopAddLocation(NPC, -99.92, -0.08, -166.57, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.45, -0.07, -166.52, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.08, 0.65, -162.21, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.49, -0.08, -162.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.09, -0.08, -167.45, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.78, -0.07, -165.23, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.26, -0.04, -154.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.25, -0.1, -152.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.79, -0.08, -146.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -78.93, -0.07, -135.41, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.91, -0.09, -145.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.82, -0.06, -136.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.14, -0.08, -122.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.23, 0.13, -118.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.48, -0.09, -116.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -92.87, -0.09, -120.19, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.79, -0.09, -118.07, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.77, -0.12, -122.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -110.54, -0.08, -112.95, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -127.36, -0.1, -125.04, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -110.54, -0.08, -112.95, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.77, -0.12, -122.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.79, -0.09, -118.07, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -92.87, -0.09, -120.19, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.48, -0.09, -116.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.23, 0.13, -118.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -98.14, -0.08, -122.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.82, -0.06, -136.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.91, -0.09, -145.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -78.93, -0.07, -135.41, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.79, -0.08, -146.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -69.25, -0.1, -152.84, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.26, -0.04, -154.15, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -89.78, -0.07, -165.23, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.09, -0.08, -167.45, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.49, -0.08, -162.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.08, 0.65, -162.21, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.45, -0.07, -166.52, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.92, -0.08, -166.57, 2, math.random(0,10))
end


