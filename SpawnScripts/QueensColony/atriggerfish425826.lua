--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425826.lua
	Script Purpose	:	Waypoint Path for atriggerfish425826.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:20:36 
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
	MovementLoopAddLocation(NPC, 59.53, -11.93, 55.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.12, -11.49, 60.41, 2, 0)
	MovementLoopAddLocation(NPC, 34.45, -11.67, 55.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.67, -11, 36.59, 2, 0)
	MovementLoopAddLocation(NPC, 65.23, -11.05, 25.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.63, -10.95, 22.18, 2, 0)
	MovementLoopAddLocation(NPC, 69.77, -11.24, 10.01, 2, 0)
	MovementLoopAddLocation(NPC, 70.72, -11.75, 7.31, 2, 0)
	MovementLoopAddLocation(NPC, 72.39, -12.89, 3.05, 2, 0)
	MovementLoopAddLocation(NPC, 74.25, -13.9, 0.91, 2, 0)
	MovementLoopAddLocation(NPC, 76.05, -13.99, 0.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.86, -13.37, -0.94, 2, 0)
	MovementLoopAddLocation(NPC, 88.5, -12.61, -0.82, 2, 0)
	MovementLoopAddLocation(NPC, 92.54, -12.08, -0.24, 2, 0)
	MovementLoopAddLocation(NPC, 96.03, -11.97, 1.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.3, -12.8, 15.41, 2, 0)
	MovementLoopAddLocation(NPC, 81.65, -12.98, 18.47, 2, 0)
	MovementLoopAddLocation(NPC, 78.34, -12.99, 19.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.68, -10.2, 40.69, 2, 0)
	MovementLoopAddLocation(NPC, 67.28, -10.2, 45.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.17, -10.5, 33.31, 2, 0)
	MovementLoopAddLocation(NPC, 70.87, -10.47, 18.19, 2, 0)
	MovementLoopAddLocation(NPC, 69.33, -11.47, 8.35, 2, 0)
	MovementLoopAddLocation(NPC, 66.49, -11.94, 2.8, 2, 0)
	MovementLoopAddLocation(NPC, 63.37, -12, -0.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.6, -11.75, 27.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.23, -11.22, 29.79, 2, 0)
	MovementLoopAddLocation(NPC, 49.39, -10.32, 36.83, 2, 0)
	MovementLoopAddLocation(NPC, 43.02, -10.58, 48.66, 2, 0)
	MovementLoopAddLocation(NPC, 38.32, -11.6, 59.32, 2, 0)
	MovementLoopAddLocation(NPC, 30.81, -10.6, 71.6, 2, 0)
	MovementLoopAddLocation(NPC, 29.23, -10.55, 78.41, 2, 0)
	MovementLoopAddLocation(NPC, 29.36, -10.55, 81.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.35, -10.44, 74.61, 2, 0)
	MovementLoopAddLocation(NPC, 51.32, -10.63, 44.6, 2, 0)
	MovementLoopAddLocation(NPC, 59.92, -11.04, 31.9, 2, 0)
	MovementLoopAddLocation(NPC, 63.67, -11.42, 23.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.8, -11.24, 14.63, 2, 0)
	MovementLoopAddLocation(NPC, 70.56, -11.43, 7.45, 2, 0)
	MovementLoopAddLocation(NPC, 72.05, -13.17, 1.68, 2, 0)
	MovementLoopAddLocation(NPC, 70.3, -13.17, -4.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.46, -13.01, 12.07, 2, 0)
	MovementLoopAddLocation(NPC, 65.19, -12.34, 39.9, 2, 0)
	MovementLoopAddLocation(NPC, 63.37, -11.64, 50.13, 2, 0)
end

