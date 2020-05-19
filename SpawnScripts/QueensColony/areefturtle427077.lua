--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427077.lua
	Script Purpose	:	Waypoint Path for areefturtle427077.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:35:39 
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
	MovementLoopAddLocation(NPC, 28.33, -14.73, -25.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.82, -13.1, -28.77, 2, 0)
	MovementLoopAddLocation(NPC, 24.79, -11.89, -34.74, 2, 0)
	MovementLoopAddLocation(NPC, 23.27, -11.42, -40.26, 2, 0)
	MovementLoopAddLocation(NPC, 22.07, -11.77, -47.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.6, -11.95, -44.32, 2, 0)
	MovementLoopAddLocation(NPC, -7.85, -11.71, -41.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.81, -11.6, -41.85, 2, 0)
	MovementLoopAddLocation(NPC, 22.96, -10.36, -44.17, 2, 0)
	MovementLoopAddLocation(NPC, 41.06, -11.12, -45.98, 2, 0)
	MovementLoopAddLocation(NPC, 46.89, -11.88, -45.11, 2, 0)
	MovementLoopAddLocation(NPC, 48.72, -12, -43.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.66, -11.92, -38.2, 2, 0)
	MovementLoopAddLocation(NPC, 47.84, -12.07, -30.67, 2, 0)
	MovementLoopAddLocation(NPC, 50.45, -12.27, -21.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.07, -13.79, -21.41, 2, 0)
	MovementLoopAddLocation(NPC, 38.15, -14.8, -19.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.47, -14.23, -16, 2, 0)
	MovementLoopAddLocation(NPC, 44.79, -13.95, -11.72, 2, 0)
	MovementLoopAddLocation(NPC, 51.24, -13.77, -1.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.1, -13.91, -15.86, 2, 0)
	MovementLoopAddLocation(NPC, 32.93, -14.54, -23.1, 2, 0)
	MovementLoopAddLocation(NPC, 31.27, -14.56, -24.83, 2, 0)
end

