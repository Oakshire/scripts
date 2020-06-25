--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427392.lua
	Script Purpose	:	Waypoint Path for saw_021_07.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:14:40 
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
	MovementLoopAddLocation(NPC, 59.05, -11.74, -71.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.16, -11.8, -59.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.59, -12.05, -50.88, 2, 0)
	MovementLoopAddLocation(NPC, 75.86, -12.32, -46.27, 2, 0)
	MovementLoopAddLocation(NPC, 81.19, -12.27, -39.54, 2, 0)
	MovementLoopAddLocation(NPC, 92.09, -11.83, -27.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.76, -12.19, -31.22, 2, 0)
	MovementLoopAddLocation(NPC, 80.68, -11.82, -37.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.24, -12.08, -33.11, 2, 0)
	MovementLoopAddLocation(NPC, 85.2, -12.58, -24.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.83, -11.18, -39.24, 2, 0)
	MovementLoopAddLocation(NPC, 75.38, -10.7, -52.95, 2, 0)
	MovementLoopAddLocation(NPC, 74, -10.7, -58.54, 2, 0)
	MovementLoopAddLocation(NPC, 80.15, -10.7, -72.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.28, -11.16, -58.03, 2, 0)
	MovementLoopAddLocation(NPC, 57.83, -11.19, -56.32, 2, 0)
	MovementLoopAddLocation(NPC, 53.2, -11.22, -55.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.3, -10.7, -42.57, 2, 0)
	MovementLoopAddLocation(NPC, 74.92, -10.7, -36.43, 2, 0)
	MovementLoopAddLocation(NPC, 80.44, -11.68, -30.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.82, -11.78, -36.84, 2, 0)
	MovementLoopAddLocation(NPC, 76.29, -11.66, -39.72, 2, 0)
	MovementLoopAddLocation(NPC, 68.88, -11.65, -49.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.7, -12.13, -43.45, 2, 0)
	MovementLoopAddLocation(NPC, 85.18, -11.85, -35.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.31, -11.83, -23.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.46, -11.53, -31.48, 2, 0)
	MovementLoopAddLocation(NPC, 78.48, -11.32, -36.2, 2, 0)
	MovementLoopAddLocation(NPC, 74.91, -11.27, -42.02, 2, 0)
	MovementLoopAddLocation(NPC, 73.1, -11.04, -46.14, 2, 0)
	MovementLoopAddLocation(NPC, 70.39, -11.58, -53.97, 2, 0)
	MovementLoopAddLocation(NPC, 68.3, -11.82, -58.41, 2, math.random(10, 20))
end

