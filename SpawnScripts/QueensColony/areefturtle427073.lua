--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427073.lua
	Script Purpose	:	Waypoint Path for areefturtle427073.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:31:55 
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
	MovementLoopAddLocation(NPC, 52.58, -11.76, -17.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.79, -12.6, -16.32, 2, 0)
	MovementLoopAddLocation(NPC, 38.66, -13.82, -13.76, 2, 0)
	MovementLoopAddLocation(NPC, 32.66, -14.12, -12.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.51, -12.47, -25.14, 2, 0)
	MovementLoopAddLocation(NPC, 42.65, -11.82, -32.83, 2, 0)
	MovementLoopAddLocation(NPC, 44.57, -11.72, -35.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.96, -12.16, -29.05, 2, 0)
	MovementLoopAddLocation(NPC, 28.41, -11.81, -11.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.49, -12.91, -0.16, 2, 0)
	MovementLoopAddLocation(NPC, 37.71, -12.8, 4.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.24, -13.19, 3.81, 2, 0)
	MovementLoopAddLocation(NPC, 28.68, -13.22, 1.91, 2, 0)
	MovementLoopAddLocation(NPC, 19.35, -12.82, -3.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.09, -13.86, -5.71, 2, 0)
	MovementLoopAddLocation(NPC, 26.43, -14.38, -7.95, 2, 0)
	MovementLoopAddLocation(NPC, 38.29, -14.25, -16.08, 2, 0)
	MovementLoopAddLocation(NPC, 46.79, -12.76, -20.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.95, -13.1, -16.58, 2, 0)
	MovementLoopAddLocation(NPC, 58.69, -12.8, -9.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.5, -13.66, -11.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.34, -13.76, -13.15, 2, 0)
	MovementLoopAddLocation(NPC, 44.71, -13.28, -15.82, 2, 0)
end

