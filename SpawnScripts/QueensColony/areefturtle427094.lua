--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427094.lua
	Script Purpose	:	Waypoint Path for areefturtle427094.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:25:53 
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
	MovementLoopAddLocation(NPC, 59.63, -13.67, 2.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.56, -13.44, 3.41, 2, 0)
	MovementLoopAddLocation(NPC, 89.97, -12.58, 8.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.73, -12.4, 8.42, 2, 0)
	MovementLoopAddLocation(NPC, 78.92, -12.44, 7.84, 2, 0)
	MovementLoopAddLocation(NPC, 69.1, -12.75, 7.84, 2, 0)
	MovementLoopAddLocation(NPC, 56.27, -12.7, 8.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.72, -12.35, 10.84, 2, 0)
	MovementLoopAddLocation(NPC, 40.33, -13.06, 14.85, 2, 0)
	MovementLoopAddLocation(NPC, 34.5, -13.41, 20.44, 2, 0)
	MovementLoopAddLocation(NPC, 29.25, -13.21, 24.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.24, -12.52, 27.68, 2, 0)
	MovementLoopAddLocation(NPC, 9.12, -12.22, 30.98, 2, 0)
	MovementLoopAddLocation(NPC, 2.2, -12.86, 32.11, 2, 0)
	MovementLoopAddLocation(NPC, -3.7, -13.44, 33.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.5, -13.08, 29.94, 2, 0)
	MovementLoopAddLocation(NPC, 2.22, -12.77, 24.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.06, -13.19, 31.06, 2, 0)
	MovementLoopAddLocation(NPC, 23.91, -13.63, 36.27, 2, 0)
	MovementLoopAddLocation(NPC, 28.9, -13.51, 37.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.24, -11.76, 40.76, 2, 0)
	MovementLoopAddLocation(NPC, 56.53, -11.59, 46.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.17, -11.26, 48.02, 2, 0)
	MovementLoopAddLocation(NPC, 70.72, -11.25, 48.05, 2, 0)
	MovementLoopAddLocation(NPC, 79.68, -11.71, 49.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.4, -12.23, 50.83, 2, 0)
	MovementLoopAddLocation(NPC, 52.81, -12.71, 52.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.7, -12.23, 33.78, 2, 0)
	MovementLoopAddLocation(NPC, 73.13, -12.74, 27.45, 2, 0)
	MovementLoopAddLocation(NPC, 74.57, -13.04, 22.73, 2, 0)
	MovementLoopAddLocation(NPC, 73.07, -13.69, 18.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.43, -13.32, 15.02, 2, 0)
	MovementLoopAddLocation(NPC, 64, -13.28, 9.19, 2, 0)
	MovementLoopAddLocation(NPC, 61.32, -13.7, 4.97, 2, 0)
end

