--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425485.lua
	Script Purpose	:	Waypoint Path for ashoalglider425485.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:20 
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
	MovementLoopAddLocation(NPC, 92.58, -12.46, -41.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.76, -12.52, -37.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.86, -12.9, -28.24, 2, 0)
	MovementLoopAddLocation(NPC, 97.66, -11.58, -11.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.08, -11.49, -29.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.79, -10.96, -39.12, 2, 0)
	MovementLoopAddLocation(NPC, 79.87, -10.7, -44.8, 2, 0)
	MovementLoopAddLocation(NPC, 75.54, -10.7, -54.72, 2, 0)
	MovementLoopAddLocation(NPC, 75.35, -10.7, -64.61, 2, 0)
	MovementLoopAddLocation(NPC, 74.08, -10.95, -69.99, 2, 0)
	MovementLoopAddLocation(NPC, 73.97, -11.04, -75.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.35, -10.7, -72.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.8, -10.7, -69.01, 2, 0)
	MovementLoopAddLocation(NPC, 62.9, -10.7, -55.97, 2, 0)
	MovementLoopAddLocation(NPC, 70.53, -10.99, -47.92, 2, 0)
	MovementLoopAddLocation(NPC, 82.17, -11.48, -37.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.16, -11.44, -43.65, 2, 0)
	MovementLoopAddLocation(NPC, 77.8, -10.6, -47.25, 2, 0)
	MovementLoopAddLocation(NPC, 77.89, -10.7, -49.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.62, -10.95, -43.28, 2, 0)
	MovementLoopAddLocation(NPC, 96.72, -11.47, -30.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.51, -11.49, -41.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.39, -12.12, -41.23, 2, math.random(10, 20))
end

