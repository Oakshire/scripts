--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427635.lua
	Script Purpose	:	Waypoint Path for aneedlefang427635.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:47:39 
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
	MovementLoopAddLocation(NPC, 76.47, -12.98, 33.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.58, -12.74, 28.45, 2, 0)
	MovementLoopAddLocation(NPC, 78.79, -12.92, 11.77, 2, 0)
	MovementLoopAddLocation(NPC, 79.34, -13.86, 5.62, 2, 0)
	MovementLoopAddLocation(NPC, 78.89, -13.83, 1.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.02, -12.86, 12.87, 2, 0)
	MovementLoopAddLocation(NPC, 78.88, -12.09, 29.2, 2, 0)
	MovementLoopAddLocation(NPC, 76, -11.86, 36.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.28, -11.61, 38.47, 2, 0)
	MovementLoopAddLocation(NPC, 59.75, -11.81, 41.85, 2, 0)
	MovementLoopAddLocation(NPC, 55.95, -12.03, 45.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.68, -11.1, 52.22, 2, 0)
	MovementLoopAddLocation(NPC, 35.53, -11.01, 63.18, 2, 0)
	MovementLoopAddLocation(NPC, 30.35, -11.65, 68.7, 2, 0)
	MovementLoopAddLocation(NPC, 28.36, -11.34, 73.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.31, -11.99, 66.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.76, -11.77, 61.37, 2, 0)
	MovementLoopAddLocation(NPC, 55.66, -11.72, 44.01, 2, 0)
	MovementLoopAddLocation(NPC, 62.98, -12.21, 39.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.36, -12.05, 30.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.95, -12.01, 22.58, 2, 0)
	MovementLoopAddLocation(NPC, 68.37, -12.04, 18.22, 2, 0)
	MovementLoopAddLocation(NPC, 77.96, -12.68, 10.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.53, -13, -0.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.86, -12.02, 8.12, 2, 0)
	MovementLoopAddLocation(NPC, 83.16, -12.11, 13.9, 2, 0)
	MovementLoopAddLocation(NPC, 78.59, -12.17, 26.61, 2, 0)
end


