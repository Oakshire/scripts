--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425831.lua
	Script Purpose	:	Waypoint Path for atriggerfish425831.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:22:25 
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
	MovementLoopAddLocation(NPC, -4.23, -11, 71.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.93, -10.43, 68.05, 2, 0)
	MovementLoopAddLocation(NPC, 35.57, -10.59, 43.21, 2, 0)
	MovementLoopAddLocation(NPC, 43.57, -11.06, 37.41, 2, 0)
	MovementLoopAddLocation(NPC, 48.77, -11.12, 33.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.19, -11.47, 36, 2, 0)
	MovementLoopAddLocation(NPC, 67.12, -12.65, 38.06, 2, 0)
	MovementLoopAddLocation(NPC, 76.1, -12.77, 39.75, 2, 0)
	MovementLoopAddLocation(NPC, 83.61, -12.99, 39.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.07, -12.77, 39.66, 2, 0)
	MovementLoopAddLocation(NPC, 60.09, -11.43, 29.42, 2, 0)
	MovementLoopAddLocation(NPC, 51.38, -11.87, 23.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.03, -12.27, 10.22, 2, 0)
	MovementLoopAddLocation(NPC, 66.48, -12.61, 7.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.27, -11.81, 3.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.46, -10.46, 12.7, 2, 0)
	MovementLoopAddLocation(NPC, 50.98, -10.76, 32.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.22, -10.46, 45.96, 2, 0)
	MovementLoopAddLocation(NPC, 54.21, -10.44, 56.22, 2, 0)
	MovementLoopAddLocation(NPC, 52.95, -11.11, 83.09, 2, 0)
	MovementLoopAddLocation(NPC, 54.42, -11.93, 100.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.13, -10.42, 80.88, 2, 0)
	MovementLoopAddLocation(NPC, 36.81, -10.83, 73.88, 2, 0)
	MovementLoopAddLocation(NPC, 32.58, -11.88, 71.72, 2, 0)
	MovementLoopAddLocation(NPC, 27.99, -11.93, 71.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.85, -11.09, 70.72, 2, 0)
end

