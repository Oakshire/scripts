--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430308.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430308.lua
	Script Author	:	Rylec
	Script Date	:	11-22-2019 03:22:51 
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
	MovementLoopAddLocation(NPC, -59.47, -9.76, 88.71, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -59.51, -8.38, 86.7, 2, 0)
	MovementLoopAddLocation(NPC, -56.3, -9.05, 82.42, 2, 0)
	MovementLoopAddLocation(NPC, -55.82, -8.56, 79.58, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -93.01, -8.65, 55.78, 2, 0)
	MovementLoopAddLocation(NPC, -95.38, -9.27, 53.58, 2, 0)
	MovementLoopAddLocation(NPC, -96.71, -9.71, 53.15, 2, 0)
	MovementLoopAddLocation(NPC, -96.86, -9.78, 52.39, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -95.61, -9.74, 47.76, 2, 0)
--	MovementLoopAddLocation(NPC, -96.13, -9.56, 43.73, 2, 0)
	MovementLoopAddLocation(NPC, -96.07, -9.55, 43.79, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -67.64, -7.43, 79.71, 2, 0)
	MovementLoopAddLocation(NPC, -63.84, -7.55, 83.91, 2, 0)
--	MovementLoopAddLocation(NPC, -61.85, -8.47, 87.3, 2, 0)
	MovementLoopAddLocation(NPC, -61.87, -8.5, 87.38, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -63.2, -8.71, 91.52, 2, 0)
	MovementLoopAddLocation(NPC, -63.32, -8.72, 91.37, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -95.18, -9.14, 56.31, 2, 0)
--	MovementLoopAddLocation(NPC, -96.62, -9.7, 52.56, 2, 0)
	MovementLoopAddLocation(NPC, -96.58, -9.69, 52.59, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -95.4, -9.28, 53.6, 2, 0)
	MovementLoopAddLocation(NPC, -95.87, -9.27, 59.19, 2, 0)
	MovementLoopAddLocation(NPC, -97.3, -9.57, 65.61, 2, 0)
--	MovementLoopAddLocation(NPC, -97, -9.77, 76.47, 2, 0)
	MovementLoopAddLocation(NPC, -96.95, -9.74, 76.48, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -59.45, -9.76, 88.75, 2, 0)
end

