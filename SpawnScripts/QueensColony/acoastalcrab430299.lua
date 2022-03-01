--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430299.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430299.lua
	Script Author	:	Rylec
	Script Date	:	11-22-2019 03:22:19 
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
	MovementLoopAddLocation(NPC, -57.01, -8.35, 73.42, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -54.41, -8.62, 76.23, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -54.52, -9.1, 80.6, 2, 0)
	MovementLoopAddLocation(NPC, -54.83, -9.33, 81.88, 2, 0)
--	MovementLoopAddLocation(NPC, -54.41, -9.78, 83.25, 2, 0)
	MovementLoopAddLocation(NPC, -54.49, -9.78, 83.19, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -94.58, -9, 56.72, 2, 0)
	MovementLoopAddLocation(NPC, -94.58, -9, 56.87, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.45, -8.94, 59.65, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -85.14, -7.41, 56.78, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -90.56, -8.04, 70.67, 2, 0)
	MovementLoopAddLocation(NPC, -92.65, -8.51, 74.83, 2, 0)
--	MovementLoopAddLocation(NPC, -94.42, -8.98, 76.32, 2, 0)
	MovementLoopAddLocation(NPC, -94.38, -8.97, 76.35, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -67.8, -7.87, 91.48, 2, 0)
--	MovementLoopAddLocation(NPC, -65.72, -8.74, 93.04, 2, 0)
	MovementLoopAddLocation(NPC, -65.76, -8.7, 92.95, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -67.19, -7.57, 89.53, 2, 0)
	MovementLoopAddLocation(NPC, -88.26, -7.72, 55.65, 2, 0)
	MovementLoopAddLocation(NPC, -93.2, -8.78, 48.61, 2, 0)
	MovementLoopAddLocation(NPC, -94.35, -9, 45.92, 2, 0)
--	MovementLoopAddLocation(NPC, -96.1, -9.56, 44.62, 2, 0)
	MovementLoopAddLocation(NPC, -96.09, -9.55, 44.61, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.36, -8.53, 42.49, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -96.4, -9.42, 59.96, 2, 0)
	MovementLoopAddLocation(NPC, -97.31, -9.56, 66.94, 2, 0)
	MovementLoopAddLocation(NPC, -95.65, -9.14, 68.34, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -97.48, -9.64, 63.2, 2, 0)
--	MovementLoopAddLocation(NPC, -96.18, -9.66, 51.26, 2, 0)
	MovementLoopAddLocation(NPC, -96.14, -9.64, 51.27, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -82.31, -7.34, 56.12, 2, 0)
	MovementLoopAddLocation(NPC, -63.07, -8.43, 69.24, 2, 0)
	MovementLoopAddLocation(NPC, -59.58, -8.28, 72.1, 2, 0)
end

