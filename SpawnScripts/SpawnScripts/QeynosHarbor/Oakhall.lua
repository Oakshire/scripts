--[[
	Script Name		:	Bilur.lua
	Script Purpose	:	Waypoint Path for Oakhall.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 01:10:38 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 802.60, -20.97, 136.78, 2, 20)
	MovementLoopAddLocation(NPC, 817.09, -23.31, 82.45, 2, 0)
	MovementLoopAddLocation(NPC, 833.86, -23.31, 44.3, 2, 0)
	MovementLoopAddLocation(NPC, 858.41, -25.37, 40.72, 2, 0)
	MovementLoopAddLocation(NPC, 911.08, -25.39, 37.14, 2, 0)
	MovementLoopAddLocation(NPC, 901.46, -25.37, -20.28, 2, 0)
	MovementLoopAddLocation(NPC, 893.95, -25.34, -48.41, 2, 0)
	MovementLoopAddLocation(NPC, 862.91, -25.43, -73.88, 2, 30)
	MovementLoopAddLocation(NPC, 893.95, -25.34, -48.41, 2, 0)
	MovementLoopAddLocation(NPC, 901.46, -25.37, -20.28, 2, 0)
	MovementLoopAddLocation(NPC, 911.08, -25.39, 37.14, 2, 0)
	MovementLoopAddLocation(NPC, 858.41, -25.37, 40.72, 2, 0)
	MovementLoopAddLocation(NPC, 833.86, -23.31, 44.3, 2, 0)
	MovementLoopAddLocation(NPC, 817.09, -23.31, 82.45, 2, 0)
	MovementLoopAddLocation(NPC, 802.60, -20.97, 136.78, 2, 20)
end


