--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430551.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430551.lua
	Script Author	:	Rylec
	Script Date	:	11-22-2019 03:22:12 
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
	MovementLoopAddLocation(NPC, -52.98, -9.61, 80.59, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.19, -8.48, 52.05, 2, 0)
	MovementLoopAddLocation(NPC, -94.69, -9.25, 49.81, 2, 0)
--	MovementLoopAddLocation(NPC, -97.33, -9.98, 48.7, 2, 0)
	MovementLoopAddLocation(NPC, -97.27, -9.87, 48.67, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -95.87, -9.77, 48.07, 2, 0)
	MovementLoopAddLocation(NPC, -94.3, -9.16, 47.83, 2, 0)
	MovementLoopAddLocation(NPC, -92.23, -8.48, 47.03, 2, 0)
	MovementLoopAddLocation(NPC, -88.55, -7.8, 53.45, 2, 0)
	MovementLoopAddLocation(NPC, -75.61, -8.38, 88.92, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.71, -8.97, 70.7, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -93.49, -8.76, 79.09, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.21, -8.37, 72.78, 2, 0)
	MovementLoopAddLocation(NPC, -89.77, -8.03, 58.97, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -52.95, -9.63, 80.62, 2, 0)
end


