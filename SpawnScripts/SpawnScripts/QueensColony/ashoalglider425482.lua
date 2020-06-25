--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425482.lua
	Script Purpose	:	Waypoint Path for ashoalglider425482.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:14:12 
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
	MovementLoopAddLocation(NPC, 85.19, -12.5, -41.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.79, -11.79, -42.97, 2, 0)
	MovementLoopAddLocation(NPC, 79.94, -10.66, -46, 2, 0)
	MovementLoopAddLocation(NPC, 75.24, -10.7, -52.05, 2, 0)
	MovementLoopAddLocation(NPC, 73.06, -11.07, -64.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.32, -10.7, -53.05, 2, 0)
	MovementLoopAddLocation(NPC, 77.87, -10.7, -47.03, 2, 0)
	MovementLoopAddLocation(NPC, 83.48, -10.7, -41.26, 2, 0)
	MovementLoopAddLocation(NPC, 96.9, -11, -34.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96.24, -12.13, -39.11, 2, 0)
	MovementLoopAddLocation(NPC, 92.07, -12.5, -43.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.35, -12.47, -36.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.86, -11.51, -39.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.97, -11.13, -44.26, 2, 0)
	MovementLoopAddLocation(NPC, 79.24, -11.29, -46.08, 2, 0)
	MovementLoopAddLocation(NPC, 76.06, -11.13, -48.54, 2, 0)
	MovementLoopAddLocation(NPC, 73.99, -11.12, -52.06, 2, 0)
	MovementLoopAddLocation(NPC, 73.15, -11.44, -58.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.22, -11.52, -74.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.86, -11.11, -63.83, 2, 0)
	MovementLoopAddLocation(NPC, 75.14, -10.7, -54.88, 2, 0)
	MovementLoopAddLocation(NPC, 76.88, -10.7, -47.06, 2, 0)
	MovementLoopAddLocation(NPC, 81.17, -11.14, -42.75, 2, 0)
	MovementLoopAddLocation(NPC, 85.63, -12.42, -41.09, 2, 0)
	MovementLoopAddLocation(NPC, 88.36, -12.63, -41.19, 2, math.random(10, 20))
end

