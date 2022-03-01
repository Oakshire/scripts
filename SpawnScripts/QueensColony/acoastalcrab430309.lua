--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430309.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430309.lua
	Script Author	:	Rylec
	Script Date	:	11-22-2019 03:22:57 
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
	MovementLoopAddLocation(NPC, -94.34, -8.97, 54.06, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -95.26, -9.17, 55.45, 2, 0)
--	MovementLoopAddLocation(NPC, -97.16, -9.76, 56.89, 2, 0)
	MovementLoopAddLocation(NPC, -97.1, -9.75, 56.84, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -95.59, -9.28, 55.63, 2, 0)
	MovementLoopAddLocation(NPC, -94.14, -8.96, 52.42, 2, 0)
--	MovementLoopAddLocation(NPC, -96.25, -9.81, 48.59, 2, 0)
	MovementLoopAddLocation(NPC, -96.16, -9.8, 48.63, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.45, -9.17, 49.61, 2, 0)
	MovementLoopAddLocation(NPC, -93.31, -8.71, 54.13, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.1, -8.46, 51.93, 2, 0)
	MovementLoopAddLocation(NPC, -92, -8.46, 49.95, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -94.26, -9.09, 50.45, 2, 0)
--	MovementLoopAddLocation(NPC, -96.33, -9.71, 51.15, 2, 0)
	MovementLoopAddLocation(NPC, -96.31, -9.7, 51.25, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -95.35, -9.21, 55.1, 2, 0)
--	MovementLoopAddLocation(NPC, -97.1, -9.74, 56.96, 2, 0)
	MovementLoopAddLocation(NPC, -97.04, -9.72, 56.97, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -84.68, -7.41, 58.69, 2, 0)
	MovementLoopAddLocation(NPC, -73.33, -8.05, 63.94, 2, math.random(16, 24))
end

