--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427113.lua
	Script Purpose	:	Waypoint Path for areefturtle427113.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:49:25 
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
	MovementLoopAddLocation(NPC, 66.37, -12.65, 46.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.6, -11.69, 39.24, 2, 0)
	MovementLoopAddLocation(NPC, 57.9, -11.32, 32.3, 2, 0)
	MovementLoopAddLocation(NPC, 54.41, -11.34, 25.81, 2, 0)
	MovementLoopAddLocation(NPC, 45.36, -12.24, 16.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.6, -12.21, 14.36, 2, 0)
	MovementLoopAddLocation(NPC, 55.75, -12.25, 10.81, 2, 0)
	MovementLoopAddLocation(NPC, 59.63, -12.29, 7.2, 2, 0)
	MovementLoopAddLocation(NPC, 68.8, -14.23, 2.06, 2, 0)
	MovementLoopAddLocation(NPC, 74.55, -14.38, 1.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.12, -12.87, -2.76, 2, 0)
	MovementLoopAddLocation(NPC, 67.16, -12.71, -5.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.44, -12.76, -5.76, 2, 0)
	MovementLoopAddLocation(NPC, 90.26, -12.78, -4.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.67, -12.91, -3.25, 2, 0)
	MovementLoopAddLocation(NPC, 72.55, -12.82, 2.84, 2, 0)
	MovementLoopAddLocation(NPC, 63.57, -13.14, 7.25, 2, 0)
	MovementLoopAddLocation(NPC, 53.85, -12.73, 6.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.08, -11.1, 26.19, 2, 0)
	MovementLoopAddLocation(NPC, 54.38, -10.74, 36.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.1, -10.91, 35.22, 2, 0)
	MovementLoopAddLocation(NPC, 37.22, -11.56, 35.34, 2, 0)
	MovementLoopAddLocation(NPC, 28.49, -12.19, 36.34, 2, 0)
	MovementLoopAddLocation(NPC, 24.15, -12.42, 35.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.65, -12.43, 28.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.09, -13, 31.04, 2, 0)
	MovementLoopAddLocation(NPC, 10.27, -14.3, 37.78, 2, 0)
	MovementLoopAddLocation(NPC, 8.61, -13.95, 42.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.52, -12.38, 53.61, 2, 0)
	MovementLoopAddLocation(NPC, 17.79, -11.35, 62.69, 2, 0)
	MovementLoopAddLocation(NPC, 22.33, -10.43, 69.82, 2, 0)
	MovementLoopAddLocation(NPC, 28.03, -10.57, 78.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.36, -10.4, 70.72, 2, 0)
	MovementLoopAddLocation(NPC, 8.33, -11.58, 55.42, 2, 0)
	MovementLoopAddLocation(NPC, 2.95, -12.56, 44.07, 2, 0)
	MovementLoopAddLocation(NPC, -3.88, -13.66, 31.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.67, -13.33, 36.15, 2, 0)
	MovementLoopAddLocation(NPC, 39.61, -11.77, 43, 2, 0)
	MovementLoopAddLocation(NPC, 56.96, -12.39, 46.57, 2, 0)
end

