--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427103.lua
	Script Purpose	:	Waypoint Path for areefturtle427103.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:21:46 
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
	MovementLoopAddLocation(NPC, -3.27, -13.23, 33.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.5, -13.52, 33.79, 2, 0)
	MovementLoopAddLocation(NPC, -12.52, -13.54, 36.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -4.15, -12.37, 34.55, 2, 0)
	MovementLoopAddLocation(NPC, 2.02, -12.14, 30.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.75, -12.6, 42.04, 2, 0)
	MovementLoopAddLocation(NPC, 28.22, -12.57, 46.96, 2, 0)
	MovementLoopAddLocation(NPC, 33.56, -12.65, 47.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.13, -11.26, 44.5, 2, 0)
	MovementLoopAddLocation(NPC, 51.6, -11.35, 43.23, 2, 0)
	MovementLoopAddLocation(NPC, 62, -11.96, 38.86, 2, 0)
	MovementLoopAddLocation(NPC, 66.41, -12.32, 34.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.13, -11.34, 27.45, 2, 0)
	MovementLoopAddLocation(NPC, 80.57, -11.43, 23.84, 2, 0)
	MovementLoopAddLocation(NPC, 86.45, -12.21, 18.95, 2, 0)
	MovementLoopAddLocation(NPC, 91.85, -12.72, 13.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.69, -13.21, 6.4, 2, 0)
	MovementLoopAddLocation(NPC, 77.59, -12.39, -0.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.59, -11.95, 4.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.69, -13.74, 3.07, 2, 0)
	MovementLoopAddLocation(NPC, 72.04, -15.29, 1.53, 2, 0)
	MovementLoopAddLocation(NPC, 69.46, -15.5, 1.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.94, -14.96, 4.02, 2, 0)
	MovementLoopAddLocation(NPC, 75.38, -14.28, 6.27, 2, 0)
	MovementLoopAddLocation(NPC, 78.1, -13.38, 9.73, 2, 0)
	MovementLoopAddLocation(NPC, 79.65, -13.31, 12.78, 2, 0)
	MovementLoopAddLocation(NPC, 83.01, -12.85, 16.35, 2, 0)
	MovementLoopAddLocation(NPC, 85.23, -12.89, 17.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 100.33, -12.29, 23.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.37, -12.28, 26.95, 2, 0)
	MovementLoopAddLocation(NPC, 80.06, -12.41, 31.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.79, -11.5, 32.28, 2, 0)
	MovementLoopAddLocation(NPC, 61.59, -11.36, 31.59, 2, 0)
	MovementLoopAddLocation(NPC, 54.45, -11.04, 32.12, 2, 0)
	MovementLoopAddLocation(NPC, 27.31, -12.41, 30.22, 2, 0)
	MovementLoopAddLocation(NPC, 9.69, -12.75, 30.96, 2, 0)
end

