--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425827.lua
	Script Purpose	:	Waypoint Path for atriggerfish425827.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:20:55 
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
	MovementLoopAddLocation(NPC, 49.57, -11.02, 27.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.16, -11.38, 27.91, 2, 0)
	MovementLoopAddLocation(NPC, 35.29, -12.32, 29.75, 2, 0)
	MovementLoopAddLocation(NPC, 15.44, -12.51, 38.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.73, -14.49, 40.83, 2, 0)
	MovementLoopAddLocation(NPC, 15.11, -15.25, 42.41, 2, 0)
	MovementLoopAddLocation(NPC, 16.67, -15.25, 43.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.76, -13.67, 47.7, 2, 0)
	MovementLoopAddLocation(NPC, 22.9, -13.37, 51.81, 2, 0)
	MovementLoopAddLocation(NPC, 24.89, -13.38, 56.62, 2, 0)
	MovementLoopAddLocation(NPC, 30.1, -13.08, 61.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.31, -11.4, 68.84, 2, 0)
	MovementLoopAddLocation(NPC, 33.57, -10.45, 72.49, 2, 0)
	MovementLoopAddLocation(NPC, 37.31, -10.66, 87.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.13, -10.24, 47.06, 2, 0)
	MovementLoopAddLocation(NPC, 65.23, -10.5, 22.57, 2, 0)
	MovementLoopAddLocation(NPC, 72.27, -10.28, 12.16, 2, 0)
	MovementLoopAddLocation(NPC, 76.53, -11.03, 7.49, 2, 0)
	MovementLoopAddLocation(NPC, 80.03, -12.22, -1.59, 2, 0)
	MovementLoopAddLocation(NPC, 85.26, -12.85, -10.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.3, -12.64, -8.04, 2, 0)
	MovementLoopAddLocation(NPC, 69.79, -12.99, -1.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.89, -12.63, 8.26, 2, 0)
	MovementLoopAddLocation(NPC, 82.51, -12.37, 25.31, 2, 0)
	MovementLoopAddLocation(NPC, 83.32, -12.89, 28.44, 2, 0)
	MovementLoopAddLocation(NPC, 83.55, -12.52, 33.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.07, -12, 30.36, 2, 0)
	MovementLoopAddLocation(NPC, 86.54, -12.43, 27.65, 2, 0)
	MovementLoopAddLocation(NPC, 91.53, -12.7, 26.44, 2, 0)
	MovementLoopAddLocation(NPC, 100.49, -12.91, 25.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 99.19, -10.32, 19.72, 2, 0)
	MovementLoopAddLocation(NPC, 97.84, -10.2, 12.47, 2, 0)
	MovementLoopAddLocation(NPC, 98.28, -10.2, 8.45, 2, 0)
	MovementLoopAddLocation(NPC, 99.58, -10.2, 2.23, 2, 0)
	MovementLoopAddLocation(NPC, 100.25, -10.37, -12.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 98.73, -11.07, -2.57, 2, 0)
	MovementLoopAddLocation(NPC, 96.33, -11.39, -0.05, 2, 0)
	MovementLoopAddLocation(NPC, 85.95, -12.19, 9.16, 2, 0)
	MovementLoopAddLocation(NPC, 83.46, -12.39, 12.35, 2, 0)
	MovementLoopAddLocation(NPC, 80.39, -12.82, 15.66, 2, 0)
	MovementLoopAddLocation(NPC, 75.33, -13.28, 22.65, 2, 0)
	MovementLoopAddLocation(NPC, 69.58, -12.89, 27.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.22, -12.53, 25.61, 2, 0)
	MovementLoopAddLocation(NPC, 74.24, -12.34, 22.92, 2, 0)
	MovementLoopAddLocation(NPC, 75.67, -11.8, 16.33, 2, 0)
	MovementLoopAddLocation(NPC, 74.45, -11.84, 8.01, 2, 0)
	MovementLoopAddLocation(NPC, 73.82, -12.94, 3.55, 2, 0)
	MovementLoopAddLocation(NPC, 70.35, -13.02, -0.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.52, -12.56, 5.06, 2, 0)
	MovementLoopAddLocation(NPC, 59.3, -11.36, 17.81, 2, 0)
	MovementLoopAddLocation(NPC, 56.43, -11.38, 21.45, 2, 0)
end

