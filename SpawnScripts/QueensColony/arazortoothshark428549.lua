--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428549.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428549.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:49:15 
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
	MovementLoopAddLocation(NPC, 69.93, -13.66, -3.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.58, -13.28, -0.34, 2, 0)
	MovementLoopAddLocation(NPC, 81.63, -13.01, 2.59, 2, 0)
	MovementLoopAddLocation(NPC, 90.92, -12.59, 11.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.03, -12.29, 19.97, 2, 0)
	MovementLoopAddLocation(NPC, 79.46, -12.32, 26.35, 2, 0)
	MovementLoopAddLocation(NPC, 76.57, -12.44, 33.5, 2, 0)
	MovementLoopAddLocation(NPC, 76.16, -12.36, 47.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.82, -12.57, 53.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.17, -12.58, 43.76, 2, 0)
	MovementLoopAddLocation(NPC, 73.94, -12.76, 40.66, 2, 0)
	MovementLoopAddLocation(NPC, 68.53, -12.99, 32.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.02, -12.36, 26.71, 2, 0)
	MovementLoopAddLocation(NPC, 75.67, -12.52, 21.92, 2, 0)
	MovementLoopAddLocation(NPC, 76.66, -12.44, 12.69, 2, 0)
	MovementLoopAddLocation(NPC, 78.03, -13.28, 6.38, 2, 0)
	MovementLoopAddLocation(NPC, 82.05, -13.45, -0.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.69, -11.72, 6.18, 2, 0)
	MovementLoopAddLocation(NPC, 56.66, -11.72, 19.29, 2, 0)
	MovementLoopAddLocation(NPC, 47.07, -11.78, 23.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.1, -11.26, 27.08, 2, 0)
	MovementLoopAddLocation(NPC, 59.51, -10.7, 34.91, 2, 0)
	MovementLoopAddLocation(NPC, 67.68, -10.7, 43.79, 2, 0)
	MovementLoopAddLocation(NPC, 71.4, -11.66, 48.38, 2, 0)
	MovementLoopAddLocation(NPC, 73.92, -11.77, 53.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.63, -11.36, 43.22, 2, 0)
	MovementLoopAddLocation(NPC, 70.02, -12.58, 35.31, 2, 0)
	MovementLoopAddLocation(NPC, 69.69, -12.69, 28.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.11, -10.7, 19.57, 2, 0)
	MovementLoopAddLocation(NPC, 70.61, -10.7, 10.96, 2, 0)
	MovementLoopAddLocation(NPC, 71.6, -12.17, 2.03, 2, 0)
	MovementLoopAddLocation(NPC, 72.57, -12.43, -1.4, 2, 0)
	MovementLoopAddLocation(NPC, 76.22, -12.37, -6.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.05, -13.54, -4.65, 2, 0)
end

