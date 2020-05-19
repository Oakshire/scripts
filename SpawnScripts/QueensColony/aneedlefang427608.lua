--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427608.lua
	Script Purpose	:	Waypoint Path for aneedlefang427608.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:37:39 
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
	MovementLoopAddLocation(NPC, 12.8, -12.12, -28.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.77, -12.07, -25.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.42, -12.11, -30.12, 2, 0)
	MovementLoopAddLocation(NPC, 14.59, -12.06, -34.33, 2, 0)
	MovementLoopAddLocation(NPC, 8.05, -12.02, -39.36, 2, 0)
	MovementLoopAddLocation(NPC, -3.16, -12.87, -45.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.43, -12.24, -43.2, 2, 0)
	MovementLoopAddLocation(NPC, 13.64, -12.03, -37.69, 2, 0)
	MovementLoopAddLocation(NPC, 20.91, -13.09, -31.81, 2, 0)
	MovementLoopAddLocation(NPC, 39.26, -12.59, -16.87, 2, 0)
	MovementLoopAddLocation(NPC, 41, -12.3, -14.1, 2, 0)
	MovementLoopAddLocation(NPC, 48.02, -12.07, -9.93, 2, 0)
	MovementLoopAddLocation(NPC, 54.68, -12.14, -8.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.89, -12.64, -9.27, 2, 0)
	MovementLoopAddLocation(NPC, 64.36, -14.81, -13.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.27, -13.15, -15.23, 2, 0)
	MovementLoopAddLocation(NPC, 48.28, -13.03, -17.73, 2, 0)
	MovementLoopAddLocation(NPC, 43.1, -13.69, -20.31, 2, 0)
	MovementLoopAddLocation(NPC, 35.26, -14.99, -22.48, 2, 0)
	MovementLoopAddLocation(NPC, 31.16, -15.52, -22.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.78, -12.2, -30.27, 2, 0)
	MovementLoopAddLocation(NPC, 41.5, -11.89, -35.52, 2, 0)
	MovementLoopAddLocation(NPC, 47.64, -12.1, -47.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.91, -10.3, -38.78, 2, 0)
	MovementLoopAddLocation(NPC, 52.2, -10.3, -28, 2, 0)
	MovementLoopAddLocation(NPC, 54.32, -10.3, -24.77, 2, 0)
	MovementLoopAddLocation(NPC, 59.36, -12.7, -16.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.95, -12.1, -15.19, 2, 0)
	MovementLoopAddLocation(NPC, 75.5, -11.76, -15.36, 2, 0)
	MovementLoopAddLocation(NPC, 81.15, -12.02, -16.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.45, -11.84, -15.74, 2, 0)
	MovementLoopAddLocation(NPC, 66.43, -11.76, -16.19, 2, 0)
end
