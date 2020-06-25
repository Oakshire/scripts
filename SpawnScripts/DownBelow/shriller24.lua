--[[
	Script Name		:	shriller24.lua
	Script Purpose	:	Waypoint Path for shriller24.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 12:29:52 PM
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
	MovementLoopAddLocation(NPC, -220.47, -0.03, -77.41, 2, 0)
	MovementLoopAddLocation(NPC, -219.61, 0.16, -65.03, 2, 0)
	MovementLoopAddLocation(NPC, -216.72, 0.02, -55.5, 2, 0)
	MovementLoopAddLocation(NPC, -206.34, -0.91, -43.57, 2, 0)
	MovementLoopAddLocation(NPC, -192.81, 0, -29.57, 2, 0)
	MovementLoopAddLocation(NPC, -218.02, 0.04, -56.09, 2, 0)
	MovementLoopAddLocation(NPC, -219.02, -0.03, -75.69, 2, 0)
	MovementLoopAddLocation(NPC, -219.27, -0.06, -83.57, 2, 0)
	MovementLoopAddLocation(NPC, -209.64, -0.05, -92.67, 2, 0)
	MovementLoopAddLocation(NPC, -184.23, -0.02, -92.45, 2, 0)
	MovementLoopAddLocation(NPC, -173.21, -0.25, -73.87, 2, 0)
	MovementLoopAddLocation(NPC, -165.39, -0.25, -74.45, 2, 0)
	MovementLoopAddLocation(NPC, -149.14, -0.12, -83.6, 2, 0)
	MovementLoopAddLocation(NPC, -155.21, -0.02, -99.1, 2, 0)
	MovementLoopAddLocation(NPC, -148.02, -0.05, -77.36, 2, 0)
	MovementLoopAddLocation(NPC, -155.21, -0.02, -99.1, 2, 0)
	MovementLoopAddLocation(NPC, -149.14, -0.12, -83.6, 2, 0)
	MovementLoopAddLocation(NPC, -165.39, -0.25, -74.45, 2, 0)
	MovementLoopAddLocation(NPC, -173.21, -0.25, -73.87, 2, 0)
	MovementLoopAddLocation(NPC, -184.23, -0.02, -92.45, 2, 0)
	MovementLoopAddLocation(NPC, -209.64, -0.05, -92.67, 2, 0)
	MovementLoopAddLocation(NPC, -219.27, -0.06, -83.57, 2, 0)
	MovementLoopAddLocation(NPC, -219.02, -0.03, -75.69, 2, 0)
	MovementLoopAddLocation(NPC, -218.02, 0.04, -56.09, 2, 0)
	MovementLoopAddLocation(NPC, -192.81, 0, -29.57, 2, 0)
	MovementLoopAddLocation(NPC, -206.34, -0.91, -43.57, 2, 0)
	MovementLoopAddLocation(NPC, -216.72, 0.02, -55.5, 2, 0)
	MovementLoopAddLocation(NPC, -219.61, 0.16, -65.03, 2, 0)
	MovementLoopAddLocation(NPC, -220.47, -0.03, -77.41, 2, 0)
end


