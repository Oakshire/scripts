--[[
	Script Name		:	tombforager.lua
	Script Purpose	:	Waypoint Path for tombforager.lua
	Script Author	:	Devn00b
	Script Date		:	05/09/2020 07:09:53 PM
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
	MovementLoopAddLocation(NPC, -52.72, -0.06, -73.67, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -55.94, -0.12, -78.5, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -58, -0.08, -85.92, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -58.9, -0.06, -94.42, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -65.51, 0.07, -96.3, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -70.17, -0.11, -98.15, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -75.2, -0.11, -103.2, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -76.55, -0.11, -107.15, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -84.89, -0.11, -112, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -85.1, -0.06, -120.25, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -75.41, -0.13, -130.36, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -87.54, -0.12, -142.53, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -85.58, -0.07, -138.1, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -90.09, 0.41, -132.39, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -97.87, -0.05, -125.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -102.97, -0.1, -119.34, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -97.87, -0.05, -125.29, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -90.09, 0.41, -132.39, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -85.58, -0.07, -138.1, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -87.54, -0.12, -142.53, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -75.41, -0.13, -130.36, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -85.1, -0.06, -120.25, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -84.89, -0.11, -112, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -76.55, -0.11, -107.15, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -75.2, -0.11, -103.2, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -70.17, -0.11, -98.15, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -65.51, 0.07, -96.3, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -58.9, -0.06, -94.42, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -58, -0.08, -85.92, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -55.94, -0.12, -78.5, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, -52.72, -0.06, -73.67, 2, math.random(0,15))
end


