--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425829.lua
	Script Purpose	:	Waypoint Path for atriggerfish425829.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:21:43 
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
	MovementLoopAddLocation(NPC, 22.45, -12.96, 18.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.8, -13.11, 21.75, 2, 0)
	MovementLoopAddLocation(NPC, 40.55, -12.82, 26.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.39, -12.62, 24.43, 2, 0)
	MovementLoopAddLocation(NPC, 47.2, -12.41, 21.34, 2, 0)
	MovementLoopAddLocation(NPC, 55.48, -11.88, 17.21, 2, 0)
	MovementLoopAddLocation(NPC, 58.96, -12.25, 15.17, 2, 0)
	MovementLoopAddLocation(NPC, 65.45, -13.01, 12.94, 2, 0)
	MovementLoopAddLocation(NPC, 75.43, -13.84, 12.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.33, -14.04, 17.79, 2, 0)
	MovementLoopAddLocation(NPC, 74.04, -13.7, 27.41, 2, 0)
	MovementLoopAddLocation(NPC, 73.94, -12.43, 31.49, 2, 0)
	MovementLoopAddLocation(NPC, 74.51, -12.33, 36.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.83, -12.37, 33.47, 2, 0)
	MovementLoopAddLocation(NPC, 65.85, -11.31, 26.39, 2, 0)
	MovementLoopAddLocation(NPC, 56.91, -11.54, 18.4, 2, 0)
	MovementLoopAddLocation(NPC, 51.34, -12.43, 12.93, 2, 0)
	MovementLoopAddLocation(NPC, 48.3, -12.82, 10.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.07, -12.28, 22.49, 2, 0)
	MovementLoopAddLocation(NPC, 68.99, -12.85, 28.48, 2, 0)
	MovementLoopAddLocation(NPC, 71.04, -12.92, 30.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.68, -12, 27.33, 2, 0)
	MovementLoopAddLocation(NPC, 71.03, -10.75, 21.83, 2, 0)
	MovementLoopAddLocation(NPC, 71.04, -10.57, 9.33, 2, 0)
	MovementLoopAddLocation(NPC, 72.98, -13.34, 1.47, 2, 0)
	MovementLoopAddLocation(NPC, 72.75, -14.01, -2.51, 2, 0)
	MovementLoopAddLocation(NPC, 71.3, -14.24, -5.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.22, -12.9, 3.11, 2, 0)
	MovementLoopAddLocation(NPC, 54.98, -10.54, 37.21, 2, 0)
	MovementLoopAddLocation(NPC, 49.99, -10.25, 52.81, 2, 0)
	MovementLoopAddLocation(NPC, 44.39, -10.51, 67.95, 2, 0)
	MovementLoopAddLocation(NPC, 37.94, -10.62, 81.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.62, -10.32, 66.61, 2, 0)
	MovementLoopAddLocation(NPC, 38.08, -12.21, 26.49, 2, 0)
	MovementLoopAddLocation(NPC, 38.59, -13.65, 23.4, 2, 0)
	MovementLoopAddLocation(NPC, 40.38, -13.77, 19.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.66, -12.93, 20.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.01, -13.21, 23.93, 2, 0)
	MovementLoopAddLocation(NPC, 15.03, -13.65, 29.63, 2, 0)
	MovementLoopAddLocation(NPC, 15.41, -13.64, 31.48, 2, math.random(10, 20))
end

