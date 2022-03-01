--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427601.lua
	Script Purpose	:	Waypoint Path for aneedlefang427601.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:32:01 
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
	MovementLoopAddLocation(NPC, 46.68, -13.15, -26.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.4, -12.28, -12.96, 2, 0)
	MovementLoopAddLocation(NPC, 37.49, -12.09, 4.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.3, -14.33, -17.29, 2, 0)
	MovementLoopAddLocation(NPC, 25.35, -14.46, -23.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.71, -12.72, -16.52, 2, 0)
	MovementLoopAddLocation(NPC, 54.63, -12.71, -16.21, 2, 0)
	MovementLoopAddLocation(NPC, 61.82, -13.98, -15.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.83, -12.76, -6.98, 2, 0)
	MovementLoopAddLocation(NPC, 42.2, -12.38, -1.24, 2, 0)
	MovementLoopAddLocation(NPC, 34.32, -12.09, 1.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.39, -12.09, -9.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.84, -13.41, -14.13, 2, 0)
	MovementLoopAddLocation(NPC, 36.83, -14.83, -18.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.51, -13.59, -25.84, 2, 0)
	MovementLoopAddLocation(NPC, 17.53, -11.98, -41.96, 2, 0)
	MovementLoopAddLocation(NPC, 14.73, -11.84, -48.52, 2, 0)
	MovementLoopAddLocation(NPC, 10.49, -12.28, -54.87, 2, 0)
	MovementLoopAddLocation(NPC, 5.86, -12.95, -63.59, 2, 0)
	MovementLoopAddLocation(NPC, 0.66, -13.08, -67.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.62, -12.13, -63.32, 2, 0)
	MovementLoopAddLocation(NPC, 6.35, -11.93, -56.71, 2, 0)
	MovementLoopAddLocation(NPC, 15.3, -11.6, -41.35, 2, 0)
	MovementLoopAddLocation(NPC, 40.65, -12.8, -28.14, 2, 0)
end

