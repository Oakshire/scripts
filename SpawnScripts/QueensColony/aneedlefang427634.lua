--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427634.lua
	Script Purpose	:	Waypoint Path for aneedlefang427634.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:26:14 
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
	MovementLoopAddLocation(NPC, 90.13, -12.78, 6.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.83, -13.08, 1.07, 2, 0)
	MovementLoopAddLocation(NPC, 75.5, -13.55, -2.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.78, -12.94, -0.96, 2, 0)
	MovementLoopAddLocation(NPC, 88.19, -12.96, -0.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.85, -12.29, 7.69, 2, 0)
	MovementLoopAddLocation(NPC, 73.81, -12.11, 12.84, 2, 0)
	MovementLoopAddLocation(NPC, 65.98, -12.8, 15.63, 2, 0)
	MovementLoopAddLocation(NPC, 61.34, -12.73, 17.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.49, -12.36, 10.17, 2, 0)
	MovementLoopAddLocation(NPC, 69.32, -12.91, -3.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.65, -12.04, 11.15, 2, 0)
	MovementLoopAddLocation(NPC, 57.09, -12.65, 17.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.77, -10.95, 24.71, 2, 0)
	MovementLoopAddLocation(NPC, 50.24, -10.99, 37.83, 2, 0)
	MovementLoopAddLocation(NPC, 51.09, -11.77, 44.91, 2, 0)
	MovementLoopAddLocation(NPC, 51.33, -12.95, 51.01, 2, 0)
	MovementLoopAddLocation(NPC, 50.8, -12.76, 53.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.15, -11.64, 43.53, 2, 0)
	MovementLoopAddLocation(NPC, 62.82, -11.61, 34.84, 2, 0)
	MovementLoopAddLocation(NPC, 65.49, -11.62, 21.13, 2, 0)
	MovementLoopAddLocation(NPC, 72.39, -11.89, 12.86, 2, 0)
	MovementLoopAddLocation(NPC, 75.96, -12.69, 5.53, 2, 0)
	MovementLoopAddLocation(NPC, 77.34, -13.73, -0.16, 2, 0)
	MovementLoopAddLocation(NPC, 77.16, -13.72, -4.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.77, -12.57, 17.3, 2, math.random(10, 20))
end

