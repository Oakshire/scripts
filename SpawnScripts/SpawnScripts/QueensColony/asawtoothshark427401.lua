--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427401.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427401.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:17:30 
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
	MovementLoopAddLocation(NPC, 58.56, -10.77, -82.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.29, -11.42, -58.67, 2, 0)
	MovementLoopAddLocation(NPC, 68.73, -11.55, -51.51, 2, 0)
	MovementLoopAddLocation(NPC, 77.4, -12.49, -43.63, 2, 0)
	MovementLoopAddLocation(NPC, 83.17, -12.36, -35.88, 2, 0)
	MovementLoopAddLocation(NPC, 85.77, -12.19, -30.07, 2, 0)
	MovementLoopAddLocation(NPC, 86.95, -11.96, -21.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.81, -11.79, -13.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.31, -12.18, -23.49, 2, 0)
	MovementLoopAddLocation(NPC, 86.17, -11.91, -33.09, 2, 0)
	MovementLoopAddLocation(NPC, 84.51, -11.66, -39.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.93, -12.02, -32.54, 2, 0)
	MovementLoopAddLocation(NPC, 98.79, -11.73, -26.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 86.31, -11.61, -40.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 98.85, -12.75, -25.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.16, -12.46, -31.16, 2, 0)
	MovementLoopAddLocation(NPC, 88.01, -12.18, -35.31, 2, 0)
	MovementLoopAddLocation(NPC, 78.62, -11.83, -40.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.56, -10.97, -52.66, 2, 0)
	MovementLoopAddLocation(NPC, 52.09, -10.7, -63.8, 2, 0)
	MovementLoopAddLocation(NPC, 44.86, -10.7, -66.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.67, -11.13, -48.54, 2, 0)
	MovementLoopAddLocation(NPC, 77.17, -11.68, -46.07, 2, 0)
	MovementLoopAddLocation(NPC, 86.87, -11.93, -40.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 93.14, -11.8, -19.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.96, -11.37, -34.55, 2, 0)
	MovementLoopAddLocation(NPC, 75.8, -10.7, -37.03, 2, 0)
	MovementLoopAddLocation(NPC, 71.15, -10.7, -41.04, 2, 0)
	MovementLoopAddLocation(NPC, 64.71, -10.7, -44.47, 2, 0)
	MovementLoopAddLocation(NPC, 55.58, -11.23, -45.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.64, -10.7, -53.56, 2, 0)
	MovementLoopAddLocation(NPC, 60.28, -10.7, -67.02, 2, 0)
end

