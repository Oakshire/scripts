--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430304.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430304.lua
	Script Author	:	Rylec
	Script Date	:	11-20-2019 06:59:30 
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
	MovementLoopAddLocation(NPC, -95.05, -9.2, 79.08, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -93.59, -8.78, 80.57, 2, 0)
	MovementLoopAddLocation(NPC, -93, -8.45, 88.64, 2, 0)
	MovementLoopAddLocation(NPC, -91.93, -8.04, 91.65, 2, 0)
--	MovementLoopAddLocation(NPC, -91.79, -9.11, 110.87, 2, 0)
	MovementLoopAddLocation(NPC, -91.74, -9.06, 110.73, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.8, -8.17, 106.42, 2, math.random(16, 24))
--	MovementLoopAddLocation(NPC, -91.8, -9.76, 113.24, 2, 0)
	MovementLoopAddLocation(NPC, -91.76, -9.74, 113.2, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -89.59, -9.07, 112.83, 2, 0)
	MovementLoopAddLocation(NPC, -89.25, -9.39, 114.41, 2, 0)
--	MovementLoopAddLocation(NPC, -89.89, -9.78, 116.04, 2, 0)
	MovementLoopAddLocation(NPC, -89.83, -9.77, 116.03, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -87.05, -9.29, 115.89, 2, 0)
	MovementLoopAddLocation(NPC, -85.63, -9.22, 116.84, 2, 0)
	MovementLoopAddLocation(NPC, -83.42, -9.14, 117.46, 2, 0)
--	MovementLoopAddLocation(NPC, -82.71, -9.75, 120.09, 2, 0)
	MovementLoopAddLocation(NPC, -82.72, -9.75, 119.98, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -83.28, -9.21, 117.77, 2, 0)
	MovementLoopAddLocation(NPC, -85.12, -9.02, 116.12, 2, 0)
	MovementLoopAddLocation(NPC, -88.28, -9.1, 114.06, 2, 0)
	MovementLoopAddLocation(NPC, -91.89, -9.02, 110.4, 2, 0)
--	MovementLoopAddLocation(NPC, -94.99, -9.74, 109.82, 2, 0)
	MovementLoopAddLocation(NPC, -94.95, -9.73, 109.83, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -91.6, -8.9, 110.21, 2, 0)
	MovementLoopAddLocation(NPC, -87.52, -8.67, 112.47, 2, 0)
	MovementLoopAddLocation(NPC, -84.85, -8.66, 113.07, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -83.93, -8.48, 111.85, 2, 0)
	MovementLoopAddLocation(NPC, -79.22, -8.05, 106.93, 2, 0)
	MovementLoopAddLocation(NPC, -76.87, -7.82, 103.61, 2, 0)
	MovementLoopAddLocation(NPC, -74.51, -7.84, 101.21, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -79.96, -7.12, 96.12, 2, 0)
	MovementLoopAddLocation(NPC, -93.59, -8.77, 81.1, 2, 0)
	MovementLoopAddLocation(NPC, -94.02, -8.92, 80.19, 2, 0)
--	MovementLoopAddLocation(NPC, -95.15, -9.23, 78.99, 2, 0)
end

