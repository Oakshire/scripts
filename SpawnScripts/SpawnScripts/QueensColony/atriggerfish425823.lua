--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425823.lua
	Script Purpose	:	Waypoint Path for atriggerfish425823.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:27:36 
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
	MovementLoopAddLocation(NPC, -6.27, -13.08, 43.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.26, -12.82, 42.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.64, -12.96, 30.37, 2, 0)
	MovementLoopAddLocation(NPC, -0.35, -13.03, 22.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.32, -13.08, 26.68, 2, 0)
	MovementLoopAddLocation(NPC, -13.9, -12.63, 29.95, 2, 0)
	MovementLoopAddLocation(NPC, -18.51, -11.92, 30.92, 2, 0)
	MovementLoopAddLocation(NPC, -21.98, -11.62, 30.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.01, -13.8, 30.84, 2, 0)
	MovementLoopAddLocation(NPC, 23.05, -13.64, 31.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.9, -12.95, 42.7, 2, 0)
	MovementLoopAddLocation(NPC, 1.13, -10.78, 67.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.01, -10.43, 85.41, 2, 0)
	MovementLoopAddLocation(NPC, 45.05, -11.21, 90.8, 2, 0)
	MovementLoopAddLocation(NPC, 47.74, -11.42, 92.48, 2, 0)
	MovementLoopAddLocation(NPC, 56.07, -11.87, 96.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.41, -11.34, 77.6, 2, 0)
	MovementLoopAddLocation(NPC, 36.12, -11.16, 68.3, 2, 0)
	MovementLoopAddLocation(NPC, 21.32, -12.48, 47.27, 2, 0)
	MovementLoopAddLocation(NPC, 16.63, -12.47, 42.73, 2, 0)
	MovementLoopAddLocation(NPC, 13.79, -13.36, 38.48, 2, 0)
	MovementLoopAddLocation(NPC, 9.51, -13.42, 34.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.04, -13.43, 36.92, 2, 0)
	MovementLoopAddLocation(NPC, 17.53, -13.38, 39.4, 2, 0)
	MovementLoopAddLocation(NPC, 27.9, -13.14, 43.83, 2, 0)
	MovementLoopAddLocation(NPC, 39.69, -12.53, 50.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.26, -11.45, 61.38, 2, 0)
	MovementLoopAddLocation(NPC, 58.8, -10.48, 70.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.03, -11.38, 63.73, 2, 0)
	MovementLoopAddLocation(NPC, 15.17, -12.36, 54.87, 2, 0)
	MovementLoopAddLocation(NPC, 8.84, -13.24, 51.38, 2, 0)
	MovementLoopAddLocation(NPC, 5.54, -13.38, 48.79, 2, 0)
	MovementLoopAddLocation(NPC, -4.03, -12.93, 43.84, 2, 0)
	MovementLoopAddLocation(NPC, -13.85, -13.03, 38.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.89, -13.21, 38.45, 2, 0)
end
