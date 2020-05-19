--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428544.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428544.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:26:00 
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
	MovementLoopAddLocation(NPC, -4.43, -11.75, 58.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.42, -12.07, 49.38, 2, 0)
	MovementLoopAddLocation(NPC, 5.45, -12.16, 40.73, 2, 0)
	MovementLoopAddLocation(NPC, 7.86, -12.24, 31.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.13, -13.13, 48.39, 2, 0)
	MovementLoopAddLocation(NPC, 6.24, -12.51, 58.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.68, -12.05, 49.8, 2, 0)
	MovementLoopAddLocation(NPC, -7.06, -11.98, 45.97, 2, 0)
	MovementLoopAddLocation(NPC, -19.75, -12.32, 38.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.11, -11.4, 52.16, 2, 0)
	MovementLoopAddLocation(NPC, 1, -11.78, 57.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.26, -11.89, 50.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.25, -11.91, 45.12, 2, 0)
	MovementLoopAddLocation(NPC, 12.46, -12.28, 35.81, 2, 0)
	MovementLoopAddLocation(NPC, 15.57, -12.33, 31.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.67, -12.36, 24.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.11, -11.77, 43.85, 2, 0)
	MovementLoopAddLocation(NPC, 50.36, -12.45, 48.59, 2, 0)
	MovementLoopAddLocation(NPC, 54.74, -12.52, 51.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.22, -11.7, 53.8, 2, 0)
	MovementLoopAddLocation(NPC, 77.08, -10.98, 56.75, 2, 0)
	MovementLoopAddLocation(NPC, 82.94, -11.07, 57.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.86, -10.56, 58.14, 2, 0)
	MovementLoopAddLocation(NPC, 20.06, -11.05, 61.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.1, -11.82, 61.37, 2, 0)
end


