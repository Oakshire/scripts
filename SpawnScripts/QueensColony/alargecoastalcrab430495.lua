--[[ 
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430495.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430495.lua
	Script Author	:	Rylec
	Script Date	:	11-25-2019 05:43:55 
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
	MovementLoopAddLocation(NPC, -62.6, -8.21, 47.61, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -87.64, -7.83, 46.91, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -71.21, -8.21, 32.7, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -62.89, -8.42, 39.68, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -84.3, -8.55, 35.92, 2, 0)
	MovementLoopAddLocation(NPC, -89.56, -9.43, 35.98, 2, 0)
--	MovementLoopAddLocation(NPC, -91.15, -10.21, 34.94, 2, 0)
	MovementLoopAddLocation(NPC, -91.14, -10.17, 35.07, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -90.96, -9.58, 36.72, 2, 0)
	MovementLoopAddLocation(NPC, -91.26, -9.26, 38.33, 2, 0)
	MovementLoopAddLocation(NPC, -90.15, -8.72, 40.55, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -87.35, -8.5, 39.42, 2, 0)
	MovementLoopAddLocation(NPC, -80.11, -8.91, 31.88, 2, 0)
--	MovementLoopAddLocation(NPC, -78.9, -9.59, 29.37, 2, 0)
	MovementLoopAddLocation(NPC, -78.87, -9.58, 29.38, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -77.45, -9.17, 29.9, 2, 0)
	MovementLoopAddLocation(NPC, -74.41, -8.57, 30.54, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -71.36, -7.98, 34.1, 2, 0)
	MovementLoopAddLocation(NPC, -63.06, -8.35, 43.73, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -64.2, -8.02, 44.06, 2, 0)
	MovementLoopAddLocation(NPC, -89.08, -8.58, 40.46, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -87.46, -8.49, 39.61, 2, 0)
--	MovementLoopAddLocation(NPC, -80.58, -9.14, 31.38, 2, 0)
	MovementLoopAddLocation(NPC, -80.52, -9.13, 31.39, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -77.97, -8.7, 31.71, 2, 0)
	MovementLoopAddLocation(NPC, -71.45, -8.49, 30.31, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -62.46, -8.22, 47.63, 2, 0)
end

