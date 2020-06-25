--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427633.lua
	Script Purpose	:	Waypoint Path for aneedlefang427633.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:22:34 
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
	MovementLoopAddLocation(NPC, -11.21, -11.04, 55.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -4.16, -10.37, 54.29, 2, 0)
	MovementLoopAddLocation(NPC, 69.59, -11.6, 51.39, 2, 0)
	MovementLoopAddLocation(NPC, 85.07, -12.48, 47.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.94, -12.06, 48.14, 2, 0)
	MovementLoopAddLocation(NPC, 61.03, -13, 45.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.12, -11.27, 41.66, 2, 0)
	MovementLoopAddLocation(NPC, 45.82, -11.22, 38.37, 2, 0)
	MovementLoopAddLocation(NPC, 35.85, -12.9, 35.71, 2, 0)
	MovementLoopAddLocation(NPC, 32.98, -13.08, 35.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.12, -13.87, 39.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.65, -13.08, 44.88, 2, 0)
	MovementLoopAddLocation(NPC, 10.02, -11.42, 62.71, 2, 0)
	MovementLoopAddLocation(NPC, 7.08, -11.04, 71.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.41, -11.07, 68.13, 2, 0)
	MovementLoopAddLocation(NPC, 49.28, -10.71, 71.27, 2, 0)
	MovementLoopAddLocation(NPC, 66.87, -10.98, 74.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.72, -11.05, 68.87, 2, 0)
	MovementLoopAddLocation(NPC, 33.38, -10.71, 65.58, 2, 0)
	MovementLoopAddLocation(NPC, 24.55, -11.12, 59.82, 2, 0)
	MovementLoopAddLocation(NPC, 7.51, -12.74, 52.71, 2, 0)
	MovementLoopAddLocation(NPC, -1.71, -12.65, 45.03, 2, 0)
	MovementLoopAddLocation(NPC, -11.37, -13.14, 40.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.73, -13.11, 41.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.65, -14.7, 33.5, 2, 0)
	MovementLoopAddLocation(NPC, -24.24, -14.51, 31.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.24, -11.09, 50.83, 2, 0)
end

