--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428477.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428477.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:14:21 
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
	MovementLoopAddLocation(NPC, 88.03, -11.91, -27.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.47, -12.35, -25.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.25, -12.37, -41.84, 2, 0)
	MovementLoopAddLocation(NPC, 75.63, -12.11, -45.82, 2, 0)
	MovementLoopAddLocation(NPC, 70.92, -11.81, -51.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.33, -11.21, -49.66, 2, 0)
	MovementLoopAddLocation(NPC, 77.33, -11.1, -48.07, 2, 0)
	MovementLoopAddLocation(NPC, 79.71, -11.04, -46.53, 2, 0)
	MovementLoopAddLocation(NPC, 88.29, -10.97, -43.84, 2, 0)
	MovementLoopAddLocation(NPC, 95.8, -11.28, -40.09, 2, 0)
	MovementLoopAddLocation(NPC, 99.51, -11.71, -37.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 99.6, -11.81, -23.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 101.53, -12.15, -30.47, 2, 0)
	MovementLoopAddLocation(NPC, 101.25, -11.92, -35.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.46, -12.79, -38.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.18, -12.38, -43.19, 2, 0)
	MovementLoopAddLocation(NPC, 73.04, -11.99, -44.56, 2, 0)
	MovementLoopAddLocation(NPC, 67.36, -11.41, -48.4, 2, 0)
	MovementLoopAddLocation(NPC, 56.86, -10.69, -53.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.39, -11.59, -24.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.56, -12.46, -19.73, 2, 0)
	MovementLoopAddLocation(NPC, 94.67, -12.84, -12.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.29, -12.82, -25.95, 2, 0)
	MovementLoopAddLocation(NPC, 87.52, -12.72, -39.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.93, -11.75, -35.2, 2, 0)
end


