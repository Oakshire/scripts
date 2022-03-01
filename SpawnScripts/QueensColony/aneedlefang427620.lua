--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427620.lua
	Script Purpose	:	Waypoint Path for aneedlefang427620.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:25:12 
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
	MovementLoopAddLocation(NPC, -18.19, -12.53, 39.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.52, -10.79, 53.7, 2, 0)
	MovementLoopAddLocation(NPC, -4.95, -10.3, 61.43, 2, 0)
	MovementLoopAddLocation(NPC, -1.44, -11.05, 74.85, 2, 0)
	MovementLoopAddLocation(NPC, -1.36, -11.04, 74.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.71, -10.28, 71.33, 2, 0)
	MovementLoopAddLocation(NPC, 22.95, -10.3, 56.28, 2, 0)
	MovementLoopAddLocation(NPC, 28.76, -10.3, 52.47, 2, 0)
	MovementLoopAddLocation(NPC, 50.81, -11.14, 40.73, 2, 0)
	MovementLoopAddLocation(NPC, 56.65, -11.42, 32.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65, -11.38, 29.13, 2, 0)
	MovementLoopAddLocation(NPC, 72.66, -12.22, 24.99, 2, 0)
	MovementLoopAddLocation(NPC, 78.39, -13.93, 15.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.6, -12.1, 26.45, 2, 0)
	MovementLoopAddLocation(NPC, 79.62, -11.56, 30.99, 2, 0)
	MovementLoopAddLocation(NPC, 83.58, -11.64, 37.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.98, -11.82, 35.17, 2, 0)
	MovementLoopAddLocation(NPC, 100.8, -12.69, 24.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.4, -12.4, 23.25, 2, 0)
	MovementLoopAddLocation(NPC, 72.86, -14, 19.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.98, -13.36, 15.47, 2, 0)
	MovementLoopAddLocation(NPC, 62.93, -13.12, 12.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.35, -12.95, 15.89, 2, 0)
	MovementLoopAddLocation(NPC, 1.49, -12.97, 29.64, 2, 0)
	MovementLoopAddLocation(NPC, -7.34, -12.8, 33.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.77, -12.63, 37.95, 2, 0)
end

