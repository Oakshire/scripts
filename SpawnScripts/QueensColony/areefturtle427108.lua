--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427108.lua
	Script Purpose	:	Waypoint Path for areefturtle427108.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:47:53 
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
	MovementLoopAddLocation(NPC, 12.42, -13.67, 30.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.33, -13.13, 36.45, 2, 0)
	MovementLoopAddLocation(NPC, 32.38, -12.66, 42.78, 2, 0)
	MovementLoopAddLocation(NPC, 39.22, -11.87, 46.82, 2, 0)
	MovementLoopAddLocation(NPC, 45.67, -11.89, 48.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.5, -10.61, 38.43, 2, 0)
	MovementLoopAddLocation(NPC, 60.89, -11.47, 16.41, 2, 0)
	MovementLoopAddLocation(NPC, 64.75, -11.72, 11.24, 2, 0)
	MovementLoopAddLocation(NPC, 70.63, -12.19, 5.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.8, -12.02, 3.61, 2, 0)
	MovementLoopAddLocation(NPC, 78.85, -11.68, 0.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.94, -11.36, 11.19, 2, 0)
	MovementLoopAddLocation(NPC, 81.86, -11.25, 18.85, 2, 0)
	MovementLoopAddLocation(NPC, 83.92, -12.09, 24.47, 2, 0)
	MovementLoopAddLocation(NPC, 84.13, -12.2, 28.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.14, -11.49, 32.68, 2, 0)
	MovementLoopAddLocation(NPC, 83.01, -11.56, 39.85, 2, 0)
	MovementLoopAddLocation(NPC, 78.46, -11.65, 49.34, 2, 0)
	MovementLoopAddLocation(NPC, 68.01, -11.53, 60.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.3, -11.11, 60.38, 2, 0)
	MovementLoopAddLocation(NPC, 44.22, -11.19, 56.83, 2, 0)
	MovementLoopAddLocation(NPC, 33.47, -11.74, 50.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.49, -11.66, 60.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.7, -11.9, 59.71, 2, 0)
	MovementLoopAddLocation(NPC, 18.49, -12.49, 56.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.01, -11.88, 61.92, 2, 0)
	MovementLoopAddLocation(NPC, 22.67, -11.46, 67.26, 2, 0)
	MovementLoopAddLocation(NPC, 25.89, -10.99, 76.59, 2, 0)
	MovementLoopAddLocation(NPC, 27.03, -10.61, 80.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.88, -10.42, 62.97, 2, 0)
	MovementLoopAddLocation(NPC, 13.72, -13.51, 36.43, 2, 0)
end

