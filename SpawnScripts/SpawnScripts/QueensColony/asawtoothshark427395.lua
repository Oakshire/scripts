--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427395.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427395.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:42 
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
	MovementLoopAddLocation(NPC, 75.82, -11.6, -67.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.64, -10.7, -60.57, 2, 0)
	MovementLoopAddLocation(NPC, 76.04, -10.7, -52.05, 2, 0)
	MovementLoopAddLocation(NPC, 78.3, -11.35, -45.78, 2, 0)
	MovementLoopAddLocation(NPC, 81.31, -11.56, -41.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.04, -11.23, -51.12, 2, 0)
	MovementLoopAddLocation(NPC, 66.56, -11.46, -73.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.04, -11.73, -51.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.68, -11.59, -47.3, 2, 0)
	MovementLoopAddLocation(NPC, 80.2, -11.73, -44.6, 2, 0)
	MovementLoopAddLocation(NPC, 94.92, -12.01, -38.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.86, -12.73, -23.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 93.78, -11.53, -19.76, 2, 0)
	MovementLoopAddLocation(NPC, 97.76, -11.13, -11.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 91.81, -12.11, -24.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.61, -11.7, -29.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96.69, -11.63, -43.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.58, -11.05, -46.68, 2, 0)
	MovementLoopAddLocation(NPC, 73.92, -11.23, -51.48, 2, 0)
	MovementLoopAddLocation(NPC, 72.59, -11.54, -54.93, 2, 0)
	MovementLoopAddLocation(NPC, 72.56, -11.92, -59.33, 2, math.random(10, 20))
end

