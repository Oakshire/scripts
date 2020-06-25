--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430313.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430313.lua
	Script Author	:	Rylec
	Script Date	:	11-25-2019 05:43:58 
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
	MovementLoopAddLocation(NPC, -69.05, -9.21, 27.5, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -72.4, -8.53, 30.14, 2, 0)
	MovementLoopAddLocation(NPC, -85.21, -8.55, 36.85, 2, 0)
	MovementLoopAddLocation(NPC, -88.22, -8.86, 37.63, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -82.45, -8.44, 35.29, 2, 0)
--	MovementLoopAddLocation(NPC, -70.28, -9.07, 27.66, 2, 0)
	MovementLoopAddLocation(NPC, -70.34, -9.05, 27.73, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -72.46, -8.51, 30.22, 2, 0)
	MovementLoopAddLocation(NPC, -88.19, -8.75, 38.36, 2, 0)
	MovementLoopAddLocation(NPC, -92.09, -8.73, 41.72, 2, 0)
--	MovementLoopAddLocation(NPC, -94.44, -9.31, 41.57, 2, 0)
	MovementLoopAddLocation(NPC, -94.36, -9.29, 41.56, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.54, -8.98, 38.19, 2, 0)
	MovementLoopAddLocation(NPC, -87.58, -9.12, 35.45, 2, 0)
	MovementLoopAddLocation(NPC, -84.86, -9.08, 32.77, 2, 0)
	MovementLoopAddLocation(NPC, -75.49, -8.95, 29.66, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -78.44, -9.06, 30.69, 2, 0)
	MovementLoopAddLocation(NPC, -80.62, -8.95, 31.98, 2, 0)
	MovementLoopAddLocation(NPC, -82.89, -8.97, 32.58, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -84.07, -8.83, 33.79, 2, 0)
	MovementLoopAddLocation(NPC, -89.97, -9.32, 37, 2, 0)
	MovementLoopAddLocation(NPC, -93.1, -9.35, 39.8, 2, 0)
--	MovementLoopAddLocation(NPC, -95.83, -9.75, 40.85, 2, 0)
	MovementLoopAddLocation(NPC, -95.75, -9.7, 40.84, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -61.8, -8.54, 38.45, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -68.23, -8.9, 29.93, 2, 0)
--	MovementLoopAddLocation(NPC, -68.99, -9.23, 27.45, 2, 0)
end

