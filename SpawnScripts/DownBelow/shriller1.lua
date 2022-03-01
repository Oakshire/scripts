--[[
	Script Name		:	shriller1.lua
	Script Purpose	:	Waypoint Path for shriller1.lua
	Script Author	:	Devn00b
	Script Date		:	05/09/2020 09:58:37 PM
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
	MovementLoopAddLocation(NPC, -42.5, -0.1, -77.41, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -41.49, 0.27, -80.14, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -38.8, -0.1, -78.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -39.26, -0.09, -74.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -40.12, -0.11, -76.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -39.31, -0.08, -80.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -43.22, 0.23, -79.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -42.03, -0.1, -74.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -40.82, -0.1, -75.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -42.03, -0.1, -74.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -43.22, 0.23, -79.04, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -39.31, -0.08, -80.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -40.12, -0.11, -76.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -39.26, -0.09, -74.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -38.8, -0.1, -78.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -41.49, 0.27, -80.14, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -42.5, -0.1, -77.41, 2, math.random(0,5))
end


