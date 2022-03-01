--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430492.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430492.lua
	Script Author	:	Rylec
	Script Date	:	11-20-2019 06:59:18 
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
	MovementLoopAddLocation(NPC, -83.77, -7.73, 107.73, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -94.12, -9.76, 111.05, 2, 0)
	MovementLoopAddLocation(NPC, -94.07, -9.74, 111.03, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.1, -8.98, 110.01, 2, 0)
	MovementLoopAddLocation(NPC, -87.72, -7.61, 103.52, 2, 0)
--	MovementLoopAddLocation(NPC, -77.3, -8.16, 92.19, 2, 0)
	MovementLoopAddLocation(NPC, -77.4, -8.12, 92.26, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -88.63, -7.09, 98.25, 2, 0)
--	MovementLoopAddLocation(NPC, -96.96, -9.71, 102.6, 2, 0)
	MovementLoopAddLocation(NPC, -96.95, -9.71, 102.54, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -97.17, -9.7, 92.73, 2, 0)
	MovementLoopAddLocation(NPC, -95.37, -9.32, 87.44, 2, 0)
	MovementLoopAddLocation(NPC, -93.7, -8.8, 85.85, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -78.41, -9.56, 115.31, 2, 0)
	MovementLoopAddLocation(NPC, -78.42, -9.56, 115.28, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -80.5, -8.88, 113.23, 2, 0)
end


