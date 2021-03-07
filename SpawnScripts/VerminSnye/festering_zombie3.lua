--[[
	Script Name		:	festering_zombie3.lua
	Script Purpose	:	Waypoint Path for festering_zombie3.lua
	Script Author	:	Devn00b
	Script Date		:	06/19/2020 01:10:32 AM
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
	MovementLoopAddLocation(NPC, 68.73, -0.05, -72.99, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 67.94, -0.05, -75.68, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 71.61, 0.01, -76.52, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 71.5, -0.05, -72.69, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 71.73, -0.04, -72.53, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 67.82, -0.04, -76.3, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 67.78, -0.02, -74.44, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 73.24, 0.01, -74.15, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 71.12, -0.07, -73.1, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 71.72, 0.01, -75.78, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 67.78, -0.02, -74.08, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 69.61, -0.01, -76.58, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 72.7, 0.05, -76.66, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 71.46, 0.01, -74.87, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 68.83, -0.07, -73.25, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 67.94, 0.01, -71.97, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 69.41, -0.01, -76.87, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 67.94, 0.01, -71.97, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 68.83, -0.07, -73.25, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 71.46, 0.01, -74.87, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 72.7, 0.05, -76.66, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 69.61, -0.01, -76.58, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 67.78, -0.02, -74.08, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 71.72, 0.01, -75.78, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 71.12, -0.07, -73.1, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 73.24, 0.01, -74.15, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 67.78, -0.02, -74.44, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 67.82, -0.04, -76.3, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 71.73, -0.04, -72.53, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 71.5, -0.05, -72.69, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 71.61, 0.01, -76.52, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 67.94, -0.05, -75.68, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 68.73, -0.05, -72.99, 2, math.random(0,7))
end


