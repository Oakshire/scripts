--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427092.lua
	Script Purpose	:	Waypoint Path for areefturtle427092.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:24:59 
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
	MovementLoopAddLocation(NPC, -14.53, -13.66, 37.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -9.93, -13.4, 33.51, 2, 0)
	MovementLoopAddLocation(NPC, -5.5, -13.23, 31.92, 2, 0)
	MovementLoopAddLocation(NPC, 5.88, -12.24, 24.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.97, -13.19, 19.11, 2, 0)
	MovementLoopAddLocation(NPC, 35.79, -13.61, 18.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.29, -12.43, 30.63, 2, 0)
	MovementLoopAddLocation(NPC, 40.13, -11.88, 39.91, 2, 0)
	MovementLoopAddLocation(NPC, 42.71, -11.31, 55.66, 2, 0)
	MovementLoopAddLocation(NPC, 43.58, -10.33, 61.05, 2, 0)
	MovementLoopAddLocation(NPC, 43.87, -10.39, 76.86, 2, 0)
	MovementLoopAddLocation(NPC, 46.21, -10.52, 87.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.05, -10.28, 81.28, 2, 0)
	MovementLoopAddLocation(NPC, 33.94, -10.2, 79, 2, 0)
	MovementLoopAddLocation(NPC, 22.87, -10.27, 68.82, 2, 0)
	MovementLoopAddLocation(NPC, 16.15, -11.54, 61.99, 2, 0)
	MovementLoopAddLocation(NPC, 10.59, -12.66, 57.45, 2, 0)
	MovementLoopAddLocation(NPC, 7.85, -12.78, 54.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.77, -12.78, 21.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.27, -12.8, 39.87, 2, 0)
	MovementLoopAddLocation(NPC, -0.14, -12.28, 42.99, 2, 0)
	MovementLoopAddLocation(NPC, -4.48, -11.73, 46.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.34, -12.37, 43.15, 2, 0)
	MovementLoopAddLocation(NPC, 12.29, -13.77, 27.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.9, -13.72, 30.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.56, -13.01, 32.9, 2, 0)
	MovementLoopAddLocation(NPC, -11.43, -12.02, 34.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.58, -13.29, 32.01, 2, 0)
	MovementLoopAddLocation(NPC, -22.93, -13.34, 31.7, 2, math.random(10, 20))
end

