--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427406.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427406.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:19:19 
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
	MovementLoopAddLocation(NPC, 61.25, -11, -52.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.89, -11.19, -56.13, 2, 0)
	MovementLoopAddLocation(NPC, 55.26, -11.4, -64.87, 2, 0)
	MovementLoopAddLocation(NPC, 50.23, -11.79, -69.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.47, -11.4, -57.79, 2, 0)
	MovementLoopAddLocation(NPC, 64.14, -11.15, -54.19, 2, 0)
	MovementLoopAddLocation(NPC, 72.61, -11.16, -43.46, 2, 0)
	MovementLoopAddLocation(NPC, 76.79, -11.03, -36.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.41, -11.22, -50.31, 2, 0)
	MovementLoopAddLocation(NPC, 65.12, -11.87, -58.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.73, -11.87, -53.61, 2, 0)
	MovementLoopAddLocation(NPC, 75.55, -11.7, -40.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.13, -11.91, -48.46, 2, 0)
	MovementLoopAddLocation(NPC, 66.95, -12.06, -53.81, 2, 0)
	MovementLoopAddLocation(NPC, 63.9, -11.93, -55.88, 2, 0)
	MovementLoopAddLocation(NPC, 55.85, -11.54, -57.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.03, -11.65, -54.21, 2, 0)
	MovementLoopAddLocation(NPC, 66.77, -11.65, -49.98, 2, 0)
	MovementLoopAddLocation(NPC, 70.16, -11.44, -46.26, 2, 0)
	MovementLoopAddLocation(NPC, 74.49, -11.12, -39.86, 2, 0)
	MovementLoopAddLocation(NPC, 79.25, -10.58, -31.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.27, -12.6, -26.72, 2, 0)
	MovementLoopAddLocation(NPC, 98.28, -12.82, -26.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89, -12.74, -18.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.16, -12.43, -28.2, 2, 0)
	MovementLoopAddLocation(NPC, 85.33, -11.6, -32.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.76, -11.04, -46.25, 2, 0)
end

