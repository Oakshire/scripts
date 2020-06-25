--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430307.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430307.lua
	Script Author	:	Rylec
	Script Date	:	11-22-2019 03:22:48 
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
	MovementLoopAddLocation(NPC, -93.39, -8.77, 51.4, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.84, -8.41, 52.05, 2, 0)
--	MovementLoopAddLocation(NPC, -64.84, -9.09, 93.55, 2, 0)
	MovementLoopAddLocation(NPC, -64.87, -9.06, 93.49, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -93.28, -8.7, 58.36, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -60.57, -9.65, 88.86, 2, 0)
	MovementLoopAddLocation(NPC, -60.58, -9.64, 88.85, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.49, -8.54, 61.82, 2, 0)
--	MovementLoopAddLocation(NPC, -97.25, -9.67, 59.95, 2, 0)
	MovementLoopAddLocation(NPC, -97.24, -9.67, 59.92, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -95.24, -9.28, 52.38, 2, 0)
	MovementLoopAddLocation(NPC, -94.82, -9.42, 41.32, 2, 0)
--	MovementLoopAddLocation(NPC, -95.39, -9.76, 40.26, 2, 0)
	MovementLoopAddLocation(NPC, -95.37, -9.72, 40.38, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.46, -9.06, 46.07, 2, 0)
--	MovementLoopAddLocation(NPC, -95.98, -9.83, 47.31, 2, 0)
	MovementLoopAddLocation(NPC, -95.96, -9.8, 47.38, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -93.36, -8.72, 55.05, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -70.98, -7.66, 87.94, 2, 0)
	MovementLoopAddLocation(NPC, -68.03, -7.75, 91.06, 2, 0)
	MovementLoopAddLocation(NPC, -67.19, -8.52, 93.33, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -59.67, -8.26, 85.72, 2, 0)
--	MovementLoopAddLocation(NPC, -54.73, -9.87, 83.67, 2, 0)
	MovementLoopAddLocation(NPC, -54.79, -9.84, 83.62, 2, math.random(16, 24))
end

