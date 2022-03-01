--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425543.lua
	Script Purpose	:	Waypoint Path for ashoalglider425543.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:49:02 
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
	MovementLoopAddLocation(NPC, 93.29, -12.47, -0.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.79, -12.01, 10.95, 2, 0)
	MovementLoopAddLocation(NPC, 96.35, -12.01, 15.87, 2, 0)
	MovementLoopAddLocation(NPC, 101.04, -12.39, 25.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.65, -11.91, 16.5, 2, 0)
	MovementLoopAddLocation(NPC, 84.99, -12.02, 10.83, 2, 0)
	MovementLoopAddLocation(NPC, 81.47, -13, 6.88, 2, 0)
	MovementLoopAddLocation(NPC, 78.25, -14.32, 2.26, 2, 0)
	MovementLoopAddLocation(NPC, 76.38, -15.1, -0.98, 2, 0)
	MovementLoopAddLocation(NPC, 74.9, -14.9, -4.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.67, -15.32, -2.85, 2, 0)
	MovementLoopAddLocation(NPC, 66.88, -14.84, -3.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.1, -10.7, 12.98, 2, 0)
	MovementLoopAddLocation(NPC, 71.68, -10.7, 20.8, 2, 0)
	MovementLoopAddLocation(NPC, 70.13, -10.7, 25.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.79, -10.7, 23.88, 2, 0)
	MovementLoopAddLocation(NPC, 35.73, -11.52, 24.7, 2, 0)
	MovementLoopAddLocation(NPC, 7.35, -11.89, 28.87, 2, 0)
	MovementLoopAddLocation(NPC, -4.13, -11.93, 33.33, 2, 0)
	MovementLoopAddLocation(NPC, -11.59, -12.59, 36.71, 2, 0)
	MovementLoopAddLocation(NPC, -16.39, -12.68, 37.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.66, -12.45, 43.63, 2, 0)
	MovementLoopAddLocation(NPC, -0.44, -12.41, 49.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.1, -12.63, 39.24, 2, 0)
	MovementLoopAddLocation(NPC, 19.33, -12.43, 36.02, 2, 0)
	MovementLoopAddLocation(NPC, 23.74, -12.2, 35, 2, 0)
	MovementLoopAddLocation(NPC, 30.73, -11.84, 35.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.84, -11.48, 34.1, 2, 0)
	MovementLoopAddLocation(NPC, 52.6, -10.7, 33.97, 2, 0)
	MovementLoopAddLocation(NPC, 59.83, -10.7, 37.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.86, -10.97, 18.55, 2, 0)
	MovementLoopAddLocation(NPC, 71.88, -10.7, 6.42, 2, 0)
	MovementLoopAddLocation(NPC, 76.05, -12.81, -1.73, 2, 0)
	MovementLoopAddLocation(NPC, 80.38, -12.78, -6.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.6, -12.27, -2.62, 2, 0)
end

