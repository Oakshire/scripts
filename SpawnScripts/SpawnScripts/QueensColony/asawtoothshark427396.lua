--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427396.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427396.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:16:04 
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
	MovementLoopAddLocation(NPC, 81.92, -12.87, -38.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.4, -12.33, -43.2, 2, 0)
	MovementLoopAddLocation(NPC, 71.85, -12.2, -49.85, 2, 0)
	MovementLoopAddLocation(NPC, 55.75, -11.79, -68.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.28, -11.75, -78.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.79, -11.82, -70.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.12, -11.07, -47.64, 2, 0)
	MovementLoopAddLocation(NPC, 76.38, -11.8, -39.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.37, -12.24, -28.35, 2, 0)
	MovementLoopAddLocation(NPC, 93.1, -12.59, -17.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 98.54, -11.52, -27.94, 2, 0)
	MovementLoopAddLocation(NPC, 101.2, -11.13, -34.33, 2, 0)
	MovementLoopAddLocation(NPC, 100.94, -10.7, -42.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.79, -10.7, -45.14, 2, 0)
	MovementLoopAddLocation(NPC, 79.88, -10.7, -47.39, 2, 0)
	MovementLoopAddLocation(NPC, 68.94, -11.3, -58.42, 2, 0)
	MovementLoopAddLocation(NPC, 61.49, -11.79, -69.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.59, -11.23, -52.51, 2, 0)
	MovementLoopAddLocation(NPC, 74.86, -11.56, -46.82, 2, 0)
	MovementLoopAddLocation(NPC, 78.66, -12.37, -41.88, 2, 0)
end


