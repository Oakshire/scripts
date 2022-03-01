--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427638.lua
	Script Purpose	:	Waypoint Path for aneedlefang427638.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:49:08 
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
	MovementLoopAddLocation(NPC, 98.87, -12.04, 30.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95, -11.63, 28.95, 2, 0)
	MovementLoopAddLocation(NPC, 84.99, -11.2, 23.7, 2, 0)
	MovementLoopAddLocation(NPC, 80.09, -11.84, 21.12, 2, 0)
	MovementLoopAddLocation(NPC, 75.19, -12.06, 17.67, 2, 0)
	MovementLoopAddLocation(NPC, 66.25, -12.36, 12.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.3, -12.03, 16.36, 2, 0)
	MovementLoopAddLocation(NPC, 53.59, -12.15, 18.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.57, -10.47, 22.57, 2, 0)
	MovementLoopAddLocation(NPC, 80.6, -10.3, 25.5, 2, 0)
	MovementLoopAddLocation(NPC, 89.95, -10.55, 29.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.68, -12.23, 25.97, 2, 0)
	MovementLoopAddLocation(NPC, 72.05, -11.99, 27.03, 2, 0)
	MovementLoopAddLocation(NPC, 46.27, -11.23, 41.21, 2, 0)
	MovementLoopAddLocation(NPC, 36.94, -11.95, 45.12, 2, 0)
	MovementLoopAddLocation(NPC, 16.44, -12.71, 51.32, 2, 0)
	MovementLoopAddLocation(NPC, 5.97, -12.64, 54.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.78, -12.29, 44.21, 2, 0)
	MovementLoopAddLocation(NPC, -14.02, -12.98, 40.27, 2, 0)
	MovementLoopAddLocation(NPC, -19.27, -14.54, 35.61, 2, 0)
	MovementLoopAddLocation(NPC, -21.28, -14.47, 32.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.04, -13.54, 35.58, 2, 0)
	MovementLoopAddLocation(NPC, -9.75, -13.62, 37.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.01, -13.1, 37.29, 2, 0)
	MovementLoopAddLocation(NPC, 33.3, -12.15, 39.67, 2, 0)
	MovementLoopAddLocation(NPC, 49.51, -10.46, 40.64, 2, 0)
	MovementLoopAddLocation(NPC, 71.86, -11.94, 40.28, 2, 0)
	MovementLoopAddLocation(NPC, 80.14, -12.68, 42.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 91.83, -12.17, 34.46, 2, 0)
end
