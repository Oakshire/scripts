--[[
        Script Name     :       SpawnScripts/QueensColony/alargecoastalcrab430490.lua
	Script Purpose	:	Waypoint Path for alargecoastalcrab430490.lua
	Script Author	:	Rylec
	Script Date	:	11-20-2019 06:58:57 
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
	MovementLoopAddLocation(NPC, -93.17, -8.64, 81.23, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.09, -7.98, 84.28, 2, 0)
	MovementLoopAddLocation(NPC, -87.77, -7.33, 92.1, 2, 0)
	MovementLoopAddLocation(NPC, -93.54, -8.82, 102.29, 2, 0)
--	MovementLoopAddLocation(NPC, -96.03, -9.52, 104.5, 2, 0)
	MovementLoopAddLocation(NPC, -95.91, -9.47, 104.48, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -76, -9.44, 107.93, 2, 0)
	MovementLoopAddLocation(NPC, -76.11, -9.39, 107.87, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -90.73, -8.29, 102.37, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -87.73, -7.8, 104.57, 2, 0)
--	MovementLoopAddLocation(NPC, -80.11, -9.07, 115.07, 2, 0)
	MovementLoopAddLocation(NPC, -80.15, -9.06, 115.01, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -93.04, -8.6, 97.59, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -79.77, -9.07, 113.11, 2, 0)
	MovementLoopAddLocation(NPC, -79.84, -9.04, 113.16, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -82.72, -8.84, 115.53, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -87.63, -7.08, 99.01, 2, 0)
	MovementLoopAddLocation(NPC, -88.51, -7.21, 94.25, 2, 0)
end


