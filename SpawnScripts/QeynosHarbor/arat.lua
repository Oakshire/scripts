--[[
	Script Name		:	arat.lua
	Script Purpose	:	Waypoint Path for arat.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 01:33:42 AM
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
	MovementLoopAddLocation(NPC, 952.27, -25.5, 26, 5, 0)
	MovementLoopAddLocation(NPC, 950.07, -25.5, 30.93, 5, 0)
	MovementLoopAddLocation(NPC, 934.24, -25.56, 28.39, 5, 0)
	MovementLoopAddLocation(NPC, 923.16, -25.49, 51.47, 5, 0)
	MovementLoopAddLocation(NPC, 905.32, -25.32, 46.06, 5, 0)
	MovementLoopAddLocation(NPC, 885.13, -25.48, 49.76, 5, 0)
	MovementLoopAddLocation(NPC, 876.7, -25.37, 56.62, 5, 0)
    MovementLoopAddLocation(NPC, 857.98, -25.37, 40.88, 5, 0)
	MovementLoopAddLocation(NPC, 836.85, -23.28, 43.62, 5, 0)
	MovementLoopAddLocation(NPC, 811.68, -23.35, 94.3, 5, 0)
	MovementLoopAddLocation(NPC, 836.85, -23.28, 43.62, 5, 0)
	MovementLoopAddLocation(NPC, 857.98, -25.37, 40.88, 5, 0)
	MovementLoopAddLocation(NPC, 876.7, -25.37, 56.62, 5, 0)
	MovementLoopAddLocation(NPC, 885.13, -25.48, 49.76, 5, 0)
	MovementLoopAddLocation(NPC, 905.32, -25.32, 46.06, 5, 0)
	MovementLoopAddLocation(NPC, 923.16, -25.49, 51.47, 5, 0)
	MovementLoopAddLocation(NPC, 934.24, -25.56, 28.39, 5, 0)
	MovementLoopAddLocation(NPC, 950.07, -25.5, 30.93, 5, 0)
	MovementLoopAddLocation(NPC, 952.27, -25.5, 26, 5, 0)
end


