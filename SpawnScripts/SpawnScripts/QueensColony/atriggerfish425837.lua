--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425837.lua
	Script Purpose	:	Waypoint Path for atriggerfish425837.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:49:22 
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
	MovementLoopAddLocation(NPC, 79.55, -12.92, 43.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.35, -12.99, 41.85, 2, 0)
	MovementLoopAddLocation(NPC, 67.8, -13.82, 41.77, 2, 0)
	MovementLoopAddLocation(NPC, 64.33, -13.81, 42.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.32, -12.58, 35.73, 2, 0)
	MovementLoopAddLocation(NPC, 81.84, -12.29, 30.81, 2, 0)
	MovementLoopAddLocation(NPC, 84.56, -12.15, 28.43, 2, 0)
	MovementLoopAddLocation(NPC, 88.36, -12.66, 23.92, 2, 0)
	MovementLoopAddLocation(NPC, 92.54, -12.89, 20.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.26, -12.9, 18.62, 2, 0)
	MovementLoopAddLocation(NPC, 78.52, -12.99, 17.66, 2, 0)
	MovementLoopAddLocation(NPC, 74.89, -13.06, 16.13, 2, 0)
	MovementLoopAddLocation(NPC, 70.18, -12.54, 15.16, 2, 0)
	MovementLoopAddLocation(NPC, 64.97, -12.75, 13.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.94, -12.04, 21.39, 2, 0)
	MovementLoopAddLocation(NPC, 58.16, -11.31, 25.13, 2, 0)
	MovementLoopAddLocation(NPC, 50.78, -11.42, 34.42, 2, 0)
	MovementLoopAddLocation(NPC, 48.42, -11.45, 38.77, 2, 0)
	MovementLoopAddLocation(NPC, 45.81, -11.91, 41.93, 2, 0)
	MovementLoopAddLocation(NPC, 43.27, -12.05, 44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.06, -11.57, 41.76, 2, 0)
	MovementLoopAddLocation(NPC, 55.62, -11.44, 26.65, 2, 0)
	MovementLoopAddLocation(NPC, 61.2, -12.25, 16.31, 2, 0)
	MovementLoopAddLocation(NPC, 63.22, -12.58, 11.45, 2, 0)
	MovementLoopAddLocation(NPC, 66.69, -14.51, 4.65, 2, 0)
	MovementLoopAddLocation(NPC, 69.97, -14.41, 1.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.25, -13.34, 4.32, 2, 0)
	MovementLoopAddLocation(NPC, 48.91, -13.14, 10.49, 2, 0)
	MovementLoopAddLocation(NPC, 37.3, -12.19, 15.86, 2, 0)
	MovementLoopAddLocation(NPC, 32.3, -12.37, 18.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.72, -12.69, 27.99, 2, 0)
	MovementLoopAddLocation(NPC, 22.92, -13.03, 44.34, 2, 0)
	MovementLoopAddLocation(NPC, 16.79, -13.04, 53.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.85, -12.7, 55.82, 2, 0)
	MovementLoopAddLocation(NPC, 13.07, -12.45, 59.08, 2, 0)
	MovementLoopAddLocation(NPC, 6.6, -11.9, 65.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.81, -10.45, 79.03, 2, 0)
	MovementLoopAddLocation(NPC, 32.31, -10.44, 85.06, 2, 0)
	MovementLoopAddLocation(NPC, 38.93, -10.67, 89.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.54, -10.46, 80.35, 2, 0)
	MovementLoopAddLocation(NPC, 56.48, -10.46, 70.87, 2, 0)
	MovementLoopAddLocation(NPC, 71.47, -11.6, 54.4, 2, 0)
	MovementLoopAddLocation(NPC, 78.64, -12.53, 47.4, 2, 0)
end


