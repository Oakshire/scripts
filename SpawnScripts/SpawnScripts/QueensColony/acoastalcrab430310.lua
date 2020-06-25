--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430310.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430310.lua
	Script Author	:	Rylec
	Script Date	:	11-22-2019 03:23:00 
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
	MovementLoopAddLocation(NPC, -91.96, -8.43, 69.04, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -97.05, -9.76, 76.33, 2, 0)
	MovementLoopAddLocation(NPC, -97.04, -9.75, 76.25, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -97.07, -9.65, 58.76, 2, 0)
	MovementLoopAddLocation(NPC, -93.23, -8.75, 47.99, 2, 0)
	MovementLoopAddLocation(NPC, -90.33, -8.38, 43.32, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.12, -8.34, 77.19, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -83.97, -7.42, 61.79, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.09, -8.46, 55.36, 2, 0)
	MovementLoopAddLocation(NPC, -93.56, -8.8, 47.29, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -90.4, -8.14, 68.63, 2, 0)
	MovementLoopAddLocation(NPC, -86.93, -7.41, 75.03, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.53, -8.55, 59.65, 2, 0)
	MovementLoopAddLocation(NPC, -93.99, -8.92, 52.55, 2, 0)
	MovementLoopAddLocation(NPC, -93.96, -8.99, 49.9, 2, 0)
--	MovementLoopAddLocation(NPC, -94.64, -9.30, 48.54, 2, 0)
	MovementLoopAddLocation(NPC, -94.61, -9.29, 48.59, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -93.37, -8.8, 49.84, 2, 0)
	MovementLoopAddLocation(NPC, -91.68, -8.39, 60.8, 2, 0)
	MovementLoopAddLocation(NPC, -92.25, -8.38, 77.91, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -96.74, -9.44, 69.86, 2, 0)
	MovementLoopAddLocation(NPC, -96.91, -9.6, 58.57, 2, 0)
	MovementLoopAddLocation(NPC, -95, -9.44, 48.64, 2, 0)
	MovementLoopAddLocation(NPC, -94.22, -8.99, 44.04, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -95.14, -9.23, 52.69, 2, 0)
	MovementLoopAddLocation(NPC, -97.58, -9.75, 60.96, 2, 0)
	MovementLoopAddLocation(NPC, -99.87, -10.58, 66.65, 2, 0)
	MovementLoopAddLocation(NPC, -96.71, -9.44, 69.93, 2, 0)
	MovementLoopAddLocation(NPC, -94.81, -9.06, 75.57, 2, 0)
	MovementLoopAddLocation(NPC, -93.32, -8.7, 77.88, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -95.6, -9.15, 70.59, 2, 0)
	MovementLoopAddLocation(NPC, -95.59, -9.15, 70.58, 2, math.random(16, 24))
end

