--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427438.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427438.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:27:29 
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
	MovementLoopAddLocation(NPC, 12.83, -13.58, 21.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.28, -12.95, 21.58, 2, 0)
	MovementLoopAddLocation(NPC, 40.56, -12.19, 17.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.38, -12.18, 18.07, 2, 0)
	MovementLoopAddLocation(NPC, 81.65, -12.65, 15.7, 2, 0)
	MovementLoopAddLocation(NPC, 88.94, -12.56, 14.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.75, -12.81, 13.94, 2, 0)
	MovementLoopAddLocation(NPC, 77.72, -13, 11.48, 2, 0)
	MovementLoopAddLocation(NPC, 71.05, -13.09, 7.37, 2, 0)
	MovementLoopAddLocation(NPC, 61.43, -12.13, 4.55, 2, 0)
	MovementLoopAddLocation(NPC, 53.99, -12.25, 0.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.1, -10.7, 18.43, 2, 0)
	MovementLoopAddLocation(NPC, 71.06, -10.7, 24.04, 2, 0)
	MovementLoopAddLocation(NPC, 73.96, -11.73, 33.68, 2, 0)
	MovementLoopAddLocation(NPC, 75.64, -12.07, 37.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.39, -12.66, 16.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.25, -11.05, 27.52, 2, 0)
	MovementLoopAddLocation(NPC, 45.73, -11.12, 38.18, 2, 0)
	MovementLoopAddLocation(NPC, 40.03, -11.7, 42.47, 2, 0)
	MovementLoopAddLocation(NPC, 35.38, -11.79, 44.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.88, -11.92, 26.4, 2, 0)
	MovementLoopAddLocation(NPC, 46.8, -12.27, 20.69, 2, 0)
	MovementLoopAddLocation(NPC, 55, -12.75, 13.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.42, -12.15, 20.84, 2, 0)
	MovementLoopAddLocation(NPC, 44.12, -12.04, 26.67, 2, 0)
	MovementLoopAddLocation(NPC, 41.92, -11.52, 52.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.53, -10.7, 79.99, 2, 0)
	MovementLoopAddLocation(NPC, 34.05, -10.7, 86.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.51, -10.7, 67.12, 2, 0)
	MovementLoopAddLocation(NPC, 53.61, -10.7, 38.18, 2, 0)
	MovementLoopAddLocation(NPC, 57.38, -10.7, 23.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.44, -11.74, 25.42, 2, 0)
end

