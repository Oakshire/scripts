--[[
	Script Name		:	grave_scorpius4_1.lua
	Script Purpose	:	Waypoint Path for grave_scorpius4_1.lua
	Script Author	:	Devn00b
	Script Date		:	06/26/2020 05:19:49 PM
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
	MovementLoopAddLocation(NPC, 211.62, -6.86, -79.19, 2, 0)
	MovementLoopAddLocation(NPC, 207.87, -6.95, -92.03, 2, 0)
	MovementLoopAddLocation(NPC, 190.68, -6.82, -92.33, 2, 0)
	MovementLoopAddLocation(NPC, 196.53, -7.03, -89.79, 2, 0)
	MovementLoopAddLocation(NPC, 198.37, -6.31, -69.78, 2, 0)
	MovementLoopAddLocation(NPC, 198.41, -6.99, -57.12, 2, 0)
	MovementLoopAddLocation(NPC, 213.74, -6.88, -56.22, 2, 0)
	MovementLoopAddLocation(NPC, 232.46, -6.45, -39.62, 2, 0)
	MovementLoopAddLocation(NPC, 256.21, -6.91, -38.48, 2, 0)
	MovementLoopAddLocation(NPC, 232.46, -6.45, -39.62, 2, 0)
	MovementLoopAddLocation(NPC, 213.74, -6.88, -56.22, 2, 0)
	MovementLoopAddLocation(NPC, 198.41, -6.99, -57.12, 2, 0)
	MovementLoopAddLocation(NPC, 198.37, -6.31, -69.78, 2, 0)
	MovementLoopAddLocation(NPC, 196.53, -7.03, -89.79, 2, 0)
	MovementLoopAddLocation(NPC, 190.68, -6.82, -92.33, 2, 0)
	MovementLoopAddLocation(NPC, 207.87, -6.95, -92.03, 2, 0)
	MovementLoopAddLocation(NPC, 211.62, -6.86, -79.19, 2, 0)
end


