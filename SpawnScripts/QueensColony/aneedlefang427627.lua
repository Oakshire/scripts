--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427627.lua
	Script Purpose	:	Waypoint Path for aneedlefang427627.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:20:20 
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
	MovementLoopAddLocation(NPC, 72.99, -12.53, 18.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.53, -12.4, 27.52, 2, 0)
	MovementLoopAddLocation(NPC, 76.68, -12.94, 35.73, 2, 0)
	MovementLoopAddLocation(NPC, 77.37, -13.04, 39.8, 2, 0)
	MovementLoopAddLocation(NPC, 81.95, -12.84, 44.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.54, -11.77, 47.9, 2, 0)
	MovementLoopAddLocation(NPC, 65.31, -11.16, 51.53, 2, 0)
	MovementLoopAddLocation(NPC, 38.08, -11.15, 71.42, 2, 0)
	MovementLoopAddLocation(NPC, 30.93, -11.04, 76.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.62, -10.3, 65.59, 2, 0)
	MovementLoopAddLocation(NPC, 59.71, -10.3, 58.31, 2, 0)
	MovementLoopAddLocation(NPC, 71.92, -11.9, 44.08, 2, 0)
	MovementLoopAddLocation(NPC, 75.17, -12.56, 40.87, 2, 0)
	MovementLoopAddLocation(NPC, 80.12, -12.73, 40.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.79, -12.3, 40.51, 2, 0)
	MovementLoopAddLocation(NPC, 51.52, -11.82, 45.9, 2, 0)
	MovementLoopAddLocation(NPC, 43.03, -12.02, 46.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.49, -11.5, 36.84, 2, 0)
	MovementLoopAddLocation(NPC, 42.54, -12.08, 23.55, 2, 0)
	MovementLoopAddLocation(NPC, 39.19, -12.54, 14.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.72, -12.74, 14.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.65, -11.43, 23.59, 2, 0)
	MovementLoopAddLocation(NPC, 50.35, -11.1, 35.61, 2, 0)
	MovementLoopAddLocation(NPC, 58.85, -11.8, 41.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.15, -11.47, 30.21, 2, 0)
	MovementLoopAddLocation(NPC, 70.31, -11.39, 22.65, 2, 0)
	MovementLoopAddLocation(NPC, 71.14, -12, 20.25, 2, 0)
end


