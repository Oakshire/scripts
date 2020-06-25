--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430421.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430421.lua
	Script Author	:	Rylec
	Script Date	:	11-20-2019 06:59:02 
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
	MovementLoopAddLocation(NPC, -83.79, -8.36, 111.07, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -79.27, -8.2, 107.66, 2, 0)
--	MovementLoopAddLocation(NPC, -74.08, -9.19, 105.5, 2, 0)
	MovementLoopAddLocation(NPC, -74.18, -9.18, 105.51, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -95.71, -9.59, 106.62, 2, 0)
	MovementLoopAddLocation(NPC, -95.66, -9.57, 106.64, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -75.48, -9.76, 108.77, 2, 0)
	MovementLoopAddLocation(NPC, -75.56, -9.76, 108.79, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -79.55, -8.79, 110.06, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -74.42, -9.77, 107.67, 2, 0)
--	MovementLoopAddLocation(NPC, -74.55, -9.77, 107.7, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -92.78, -9.71, 112.09, 2, 0)
	MovementLoopAddLocation(NPC, -92.77, -9.68, 112.02, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.31, -8.73, 108.04, 2, 0)
	MovementLoopAddLocation(NPC, -96.52, -9.5, 95.35, 2, 0)
	MovementLoopAddLocation(NPC, -96.42, -9.51, 90.39, 2, 0)
--	MovementLoopAddLocation(NPC, -97.61, -10.06, 88.06, 2, 0)
	MovementLoopAddLocation(NPC, -97.55, -10.03, 88.06, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.22, -7.62, 91.11, 2, 0)
	MovementLoopAddLocation(NPC, -90.08, -7.34, 94.25, 2, 0)
	MovementLoopAddLocation(NPC, -91.85, -8.17, 96.78, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -88.05, -7.41, 83.29, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -74.7, -7.98, 96.69, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.27, -8.19, 108.54, 2, 0)
--	MovementLoopAddLocation(NPC, -91.96, -8.92, 109.87, 2, 0)
	MovementLoopAddLocation(NPC, -91.86, -8.9, 109.89, 2, math.random(16, 24))
end
