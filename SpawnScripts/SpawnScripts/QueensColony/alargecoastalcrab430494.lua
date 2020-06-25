--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430494.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430494.lua
	Script Author	:	Rylec
	Script Date	:	11-25-2019 05:43:43 
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
	MovementLoopAddLocation(NPC, -92.22, -9.18, 39.55, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -63.96, -8.09, 43.04, 2, 0)
	MovementLoopAddLocation(NPC, -59.58, -8.57, 44.16, 2, 0)
--	MovementLoopAddLocation(NPC, -55.25, -9.7, 44.44, 2, 0)
	MovementLoopAddLocation(NPC, -55.38, -9.66, 44.27, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -58.25, -8.94, 40.77, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.67, -9.33, 36.59, 2, 0)
--	MovementLoopAddLocation(NPC, -92.26, -10.41, 35.1, 2, 0)
	MovementLoopAddLocation(NPC, -92.25, -10.36, 35.16, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.92, -9.46, 38, 2, 0)
	MovementLoopAddLocation(NPC, -86.16, -7.88, 45.66, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -61.64, -8.29, 44.72, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -83.92, -8.43, 36.82, 2, 0)
	MovementLoopAddLocation(NPC, -88.22, -9.18, 35.72, 2, 0)
--	MovementLoopAddLocation(NPC, -90.39, -9.87, 34.52, 2, 0)
	MovementLoopAddLocation(NPC, -90.35, -9.83, 34.53, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -88.68, -9.41, 35.02, 2, 0)
--	MovementLoopAddLocation(NPC, -64.02, -9.26, 32.53, 2, 0)
	MovementLoopAddLocation(NPC, -64.11, -9.24, 32.54, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.87, -8.65, 40.7, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -69.08, -8.81, 29.59, 2, 0)
	MovementLoopAddLocation(NPC, -69.2, -8.78, 29.64, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -75.45, -8.21, 32.8, 2, 0)
	MovementLoopAddLocation(NPC, -83.35, -8.47, 35.74, 2, 0)
	MovementLoopAddLocation(NPC, -88.16, -8.51, 40.18, 2, 0)
--	MovementLoopAddLocation(NPC, -92.3, -9.19, 39.54, 2, 0)
end

