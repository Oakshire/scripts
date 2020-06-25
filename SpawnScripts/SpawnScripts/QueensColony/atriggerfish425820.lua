--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425820.lua
	Script Purpose	:	Waypoint Path for atriggerfish425820.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:26:16 
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
	MovementLoopAddLocation(NPC, 72.91, -12.46, 34.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.76, -12.51, 48.93, 2, 0)
	MovementLoopAddLocation(NPC, 59.7, -11.99, 55.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 86.48, -12.3, 49.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.61, -12.12, 51.23, 2, 0)
	MovementLoopAddLocation(NPC, 57.45, -12.42, 52.14, 2, 0)
	MovementLoopAddLocation(NPC, 52.3, -12.69, 52.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.77, -12.15, 47.9, 2, 0)
	MovementLoopAddLocation(NPC, 22.36, -12.42, 37.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -4.36, -11.93, 51, 2, 0)
	MovementLoopAddLocation(NPC, -10.04, -11.7, 53.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.34, -12.04, 56.94, 2, 0)
	MovementLoopAddLocation(NPC, 24.04, -11.11, 76.17, 2, 0)
	MovementLoopAddLocation(NPC, 32.63, -10.96, 81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.57, -11.02, 76.22, 2, 0)
	MovementLoopAddLocation(NPC, 15.88, -11, 71.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.55, -12.31, 56.8, 2, 0)
	MovementLoopAddLocation(NPC, 42.72, -12.47, 18.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.09, -11.48, 36.54, 2, 0)
	MovementLoopAddLocation(NPC, 46.25, -11, 39.79, 2, 0)
	MovementLoopAddLocation(NPC, 48.41, -11.02, 42.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.39, -10.32, 32.51, 2, 0)
	MovementLoopAddLocation(NPC, 64.05, -10.81, 29.67, 2, 0)
	MovementLoopAddLocation(NPC, 70.74, -12.56, 27.33, 2, 0)
	MovementLoopAddLocation(NPC, 73.38, -12.88, 24.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.66, -12.37, 24.11, 2, 0)
	MovementLoopAddLocation(NPC, 58.31, -12.31, 20.53, 2, 0)
	MovementLoopAddLocation(NPC, 45.78, -13.35, 17.77, 2, 0)
	MovementLoopAddLocation(NPC, 43.64, -13.88, 16.96, 2, 0)
	MovementLoopAddLocation(NPC, 42.61, -14.04, 15.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.27, -11.63, 20.58, 2, 0)
	MovementLoopAddLocation(NPC, 56.9, -10.52, 22.25, 2, 0)
	MovementLoopAddLocation(NPC, 67.32, -12.05, 27.97, 2, 0)
	MovementLoopAddLocation(NPC, 71.63, -12.41, 31.33, 2, 0)
end

