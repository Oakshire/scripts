--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427629.lua
	Script Purpose	:	Waypoint Path for aneedlefang427629.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:21:05 
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
	MovementLoopAddLocation(NPC, 52.81, -12.65, 18.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.4, -12.03, 23.24, 2, 0)
	MovementLoopAddLocation(NPC, 36.99, -12.81, 34.27, 2, 0)
	MovementLoopAddLocation(NPC, 32.07, -13.75, 43.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.8, -13.53, 41.73, 2, 0)
	MovementLoopAddLocation(NPC, 1.85, -13.06, 44.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.06, -11.02, 63.9, 2, 0)
	MovementLoopAddLocation(NPC, 13.68, -10.5, 74.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.7, -12.13, 56.45, 2, 0)
	MovementLoopAddLocation(NPC, 30.34, -12.66, 47.45, 2, 0)
	MovementLoopAddLocation(NPC, 45.92, -11.67, 21.39, 2, 0)
	MovementLoopAddLocation(NPC, 52.82, -11.77, 12.98, 2, 0)
	MovementLoopAddLocation(NPC, 58.58, -12.13, 7.5, 2, 0)
	MovementLoopAddLocation(NPC, 66.84, -12.7, -3.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.51, -12.67, 19.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.33, -12.63, 10.11, 2, 0)
	MovementLoopAddLocation(NPC, 64.07, -13.92, 2.71, 2, 0)
	MovementLoopAddLocation(NPC, 68.04, -14.86, -1.13, 2, 0)
	MovementLoopAddLocation(NPC, 70.64, -15.38, -6.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.79, -13.04, 2.62, 2, 0)
	MovementLoopAddLocation(NPC, 52.89, -13, 8.94, 2, 0)
	MovementLoopAddLocation(NPC, 48.35, -13.13, 9.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.02, -12.01, 13.73, 2, 0)
	MovementLoopAddLocation(NPC, 69.39, -11.1, 27.14, 2, 0)
	MovementLoopAddLocation(NPC, 73.79, -12.66, 33.94, 2, 0)
	MovementLoopAddLocation(NPC, 75.18, -13.04, 37.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.81, -12.98, 42.51, 2, 0)
	MovementLoopAddLocation(NPC, 65.03, -12.84, 53.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.29, -11.17, 26.37, 2, 0)
	MovementLoopAddLocation(NPC, 56.21, -12.2, 20.32, 2, 0)
end

