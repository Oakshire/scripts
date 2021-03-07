--[[
	Script Name		:	forager.lua
	Script Purpose	:	Waypoint Path for forager.lua
	Script Author	:	Devn00b
	Script Date		:	04/28/2020 03:23:58 PM
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
	MovementLoopAddLocation(NPC, -98.11, -0.08, -124.37, 2, 0)
	MovementLoopAddLocation(NPC, -84.68, -0.08, -137.39, 2, 0)
	MovementLoopAddLocation(NPC, -87.42, -0.13, -142.06, 2, 0)
	MovementLoopAddLocation(NPC, -77.08, -0.1, -131.49, 2, 0)
	MovementLoopAddLocation(NPC, -80.02, -0.09, -125.69, 2, 0)
	MovementLoopAddLocation(NPC, -84.96, -0.07, -119.83, 2, 0)
	MovementLoopAddLocation(NPC, -84.76, -0.11, -111.47, 2, 0)
	MovementLoopAddLocation(NPC, -76.65, -0.11, -107.08, 2, 0)
	MovementLoopAddLocation(NPC, -75.01, -0.11, -103.67, 2, 0)
	MovementLoopAddLocation(NPC, -66.76, -0.11, -96.59, 2, 0)
	MovementLoopAddLocation(NPC, -60.48, -0.06, -95.76, 2, 0)
	MovementLoopAddLocation(NPC, -58.6, -0.11, -92.84, 2, 0)
	MovementLoopAddLocation(NPC, -58.41, 0.53, -89.35, 2, 0)
	MovementLoopAddLocation(NPC, -57.42, -0.06, -79.42, 2, 0)
	MovementLoopAddLocation(NPC, -54.06, -0.09, -75.93, 2, 0)
	MovementLoopAddLocation(NPC, -57.42, -0.06, -79.42, 2, 0)
	MovementLoopAddLocation(NPC, -58.41, 0.53, -89.35, 2, 0)
	MovementLoopAddLocation(NPC, -58.6, -0.11, -92.84, 2, 0)
	MovementLoopAddLocation(NPC, -60.48, -0.06, -95.76, 2, 0)
	MovementLoopAddLocation(NPC, -66.76, -0.11, -96.59, 2, 0)
	MovementLoopAddLocation(NPC, -75.01, -0.11, -103.67, 2, 0)
	MovementLoopAddLocation(NPC, -76.65, -0.11, -107.08, 2, 0)
	MovementLoopAddLocation(NPC, -84.76, -0.11, -111.47, 2, 0)
	MovementLoopAddLocation(NPC, -84.96, -0.07, -119.83, 2, 0)
	MovementLoopAddLocation(NPC, -80.02, -0.09, -125.69, 2, 0)
	MovementLoopAddLocation(NPC, -77.08, -0.1, -131.49, 2, 0)
	MovementLoopAddLocation(NPC, -87.42, -0.13, -142.06, 2, 0)
	MovementLoopAddLocation(NPC, -84.68, -0.08, -137.39, 2, 0)
	MovementLoopAddLocation(NPC, -98.11, -0.08, -124.37, 2, 0)
end


