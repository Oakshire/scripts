--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430380.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430380.lua
	Script Author	:	Rylec
	Script Date	:	11-25-2019 05:43:36 
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
	MovementLoopAddLocation(NPC, -62.17, -8.44, 49.73, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -64.9, -7.55, 49.65, 2, 0)
	MovementLoopAddLocation(NPC, -75.68, -8.27, 32.56, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.22, -9.06, 40.13, 2, 0)
	MovementLoopAddLocation(NPC, -93.95, -9.2, 41.5, 2, 0)
--	MovementLoopAddLocation(NPC, -95.6, -9.57, 41.51, 2, 0)
	MovementLoopAddLocation(NPC, -95.56, -9.56, 41.52, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -93.67, -9.1, 41.81, 2, 0)
	MovementLoopAddLocation(NPC, -85.76, -9.06, 33.88, 2, 0)
--	MovementLoopAddLocation(NPC, -80.97, -9.57, 30.23, 2, 0)
	MovementLoopAddLocation(NPC, -80.87, -9.53, 30.28, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -78.12, -8.98, 30.79, 2, 0)
--	MovementLoopAddLocation(NPC, -77.35, -10.33, 26.76, 2, 0)
	MovementLoopAddLocation(NPC, -77.3, -10.31, 26.81, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -74.99, -9.37, 27.94, 2, 0)
	MovementLoopAddLocation(NPC, -71.98, -8.74, 28.98, 2, 0)
	MovementLoopAddLocation(NPC, -66.91, -8.97, 30.47, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -86.16, -9.13, 33.91, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -87.95, -8.4, 41.06, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -78.97, -7.67, 46.47, 2, 0)
--	MovementLoopAddLocation(NPC, -58.67, -8.67, 44.72, 2, 0)
	MovementLoopAddLocation(NPC, -58.79, -8.65, 44.65, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -60.36, -8.52, 43.71, 2, 0)
	MovementLoopAddLocation(NPC, -62.33, -8.48, 41.26, 2, 0)
	MovementLoopAddLocation(NPC, -73.41, -8.32, 31.57, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -62.13, -8.45, 49.72, 2, 0)
end

