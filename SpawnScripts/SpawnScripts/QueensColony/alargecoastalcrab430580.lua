--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430580.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430580.lua
	Script Author	:	Rylec
	Script Date	:	11-22-2019 03:22:22 
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
	MovementLoopAddLocation(NPC, -54.61, -8.58, 74.87, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -87.87, -7.77, 48.36, 2, 0)
	MovementLoopAddLocation(NPC, -92.03, -8.45, 44.11, 2, 0)
--	MovementLoopAddLocation(NPC, -95.71, -9.58, 41.68, 2, 0)
	MovementLoopAddLocation(NPC, -95.69, -9.57, 41.79, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -93.29, -8.72, 52.84, 2, 0)
	MovementLoopAddLocation(NPC, -91.05, -8.27, 61.51, 2, 0)
	MovementLoopAddLocation(NPC, -85.16, -7.41, 65.49, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -95.46, -9.42, 45.69, 2, 0)
	MovementLoopAddLocation(NPC, -95.46, -9.43, 45.76, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.44, -8.96, 57.01, 2, 0)
--	MovementLoopAddLocation(NPC, -97.2, -9.68, 59.14, 2, 0)
	MovementLoopAddLocation(NPC, -97.1, -9.64, 59.18, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -80.11, -7.37, 63.95, 2, 0)
	MovementLoopAddLocation(NPC, -68.11, -8.29, 66.69, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.27, -8.52, 49.9, 2, 0)
--	MovementLoopAddLocation(NPC, -95.76, -9.67, 46.59, 2, 0)
	MovementLoopAddLocation(NPC, -95.66, -9.63, 46.66, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -63.6, -8.43, 68.63, 2, 0)
	MovementLoopAddLocation(NPC, -60.16, -8.29, 71.8, 2, 0)
end


