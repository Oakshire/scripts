--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425833.lua
	Script Purpose	:	Waypoint Path for atriggerfish425833.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:47:28 
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
	MovementLoopAddLocation(NPC, 69.72, -11.9, 52.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.64, -11.64, 44.56, 2, 0)
	MovementLoopAddLocation(NPC, 47.08, -11.46, 35.51, 2, 0)
	MovementLoopAddLocation(NPC, 42.92, -12.05, 32.68, 2, 0)
	MovementLoopAddLocation(NPC, 40.67, -12.06, 31.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.66, -13.54, 29.8, 2, 0)
	MovementLoopAddLocation(NPC, 15.1, -14.13, 29.93, 2, 0)
	MovementLoopAddLocation(NPC, 5.77, -13.88, 30.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.3, -14.33, 33.75, 2, 0)
	MovementLoopAddLocation(NPC, 9.67, -14.44, 37.09, 2, 0)
	MovementLoopAddLocation(NPC, 12.19, -14.76, 39.5, 2, 0)
	MovementLoopAddLocation(NPC, 16.02, -14.62, 40.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.36, -13.61, 34.32, 2, 0)
	MovementLoopAddLocation(NPC, 25.76, -12.3, 24.2, 2, 0)
	MovementLoopAddLocation(NPC, 31.48, -11.92, 21.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.67, -11.97, 39.23, 2, 0)
	MovementLoopAddLocation(NPC, 35.06, -12.3, 58.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.55, -12.81, 60.11, 2, 0)
	MovementLoopAddLocation(NPC, 15.57, -12.45, 59.17, 2, 0)
	MovementLoopAddLocation(NPC, 12.52, -12.85, 59.72, 2, 0)
	MovementLoopAddLocation(NPC, 10.11, -12.73, 61.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.77, -13.02, 55.24, 2, 0)
	MovementLoopAddLocation(NPC, 29.01, -12.99, 43.39, 2, 0)
	MovementLoopAddLocation(NPC, 31.44, -12.53, 39.58, 2, 0)
	MovementLoopAddLocation(NPC, 32.43, -12.38, 35.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.82, -12.26, 38.19, 2, 0)
	MovementLoopAddLocation(NPC, 10.57, -11.94, 38.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2, -11.92, 46.02, 2, 0)
	MovementLoopAddLocation(NPC, -3.96, -11.56, 52.21, 2, 0)
	MovementLoopAddLocation(NPC, -5.72, -11.43, 54.93, 2, 0)
	MovementLoopAddLocation(NPC, -9.26, -11.45, 58.99, 2, 0)
	MovementLoopAddLocation(NPC, -10.99, -11.2, 62.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.79, -11.38, 58.83, 2, 0)
	MovementLoopAddLocation(NPC, -2.88, -11.44, 56.36, 2, 0)
	MovementLoopAddLocation(NPC, 18.52, -12.54, 46.31, 2, 0)
	MovementLoopAddLocation(NPC, 38.6, -12.5, 31.24, 2, 0)
	MovementLoopAddLocation(NPC, 42.01, -11.91, 29.55, 2, 0)
	MovementLoopAddLocation(NPC, 44.96, -11.85, 27.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.95, -11.45, 24.83, 2, 0)
	MovementLoopAddLocation(NPC, 66.8, -12.58, 17.88, 2, 0)
	MovementLoopAddLocation(NPC, 70.7, -12.7, 16.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.85, -11.47, 23.4, 2, 0)
	MovementLoopAddLocation(NPC, 71.34, -11.68, 45.59, 2, 0)
end
