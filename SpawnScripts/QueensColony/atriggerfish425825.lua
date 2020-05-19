--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425825.lua
	Script Purpose	:	Waypoint Path for atriggerfish425825.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:20:09 
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
	MovementLoopAddLocation(NPC, 79.55, -13.16, 27.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.59, -11.89, 17.92, 2, 0)
	MovementLoopAddLocation(NPC, 70.96, -11.41, 10.65, 2, 0)
	MovementLoopAddLocation(NPC, 68.71, -11.58, 7.56, 2, 0)
	MovementLoopAddLocation(NPC, 66.34, -11.96, 5.67, 2, 0)
	MovementLoopAddLocation(NPC, 62.44, -12.21, 4.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.93, -12.75, 14.92, 2, 0)
	MovementLoopAddLocation(NPC, 63.68, -12.88, 18.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.63, -11.7, 20.3, 2, 0)
	MovementLoopAddLocation(NPC, 70.78, -11.64, 21.12, 2, 0)
	MovementLoopAddLocation(NPC, 71.37, -11.71, 23.68, 2, 0)
	MovementLoopAddLocation(NPC, 72.41, -12.92, 26.39, 2, 0)
	MovementLoopAddLocation(NPC, 73.43, -13.82, 29.61, 2, 0)
	MovementLoopAddLocation(NPC, 72.76, -13.88, 33.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.58, -13.42, 35.49, 2, 0)
	MovementLoopAddLocation(NPC, 62.22, -12.24, 46.93, 2, 0)
	MovementLoopAddLocation(NPC, 50.55, -10.95, 60.93, 2, 0)
	MovementLoopAddLocation(NPC, 48.11, -10.76, 66.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.18, -11.74, 53.67, 2, 0)
	MovementLoopAddLocation(NPC, 45.46, -11.75, 49.37, 2, 0)
	MovementLoopAddLocation(NPC, 41.55, -12.07, 43.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.67, -11.74, 42.84, 2, 0)
	MovementLoopAddLocation(NPC, 48.17, -11.8, 44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.11, -12.25, 46.01, 2, 0)
	MovementLoopAddLocation(NPC, 34.39, -12.46, 48.47, 2, 0)
	MovementLoopAddLocation(NPC, 20.24, -12.79, 58.38, 2, 0)
	MovementLoopAddLocation(NPC, 14.43, -12.61, 63.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.81, -10.85, 68.12, 2, 0)
	MovementLoopAddLocation(NPC, 43.99, -10.73, 89.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.62, -10.43, 69.7, 2, 0)
	MovementLoopAddLocation(NPC, 71.73, -11.24, 43.9, 2, 0)
	MovementLoopAddLocation(NPC, 77.07, -12.69, 30.68, 2, 0)
end

