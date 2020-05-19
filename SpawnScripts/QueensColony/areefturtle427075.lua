--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427075.lua
	Script Purpose	:	Waypoint Path for areefturtle427075.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:34:30 
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
	MovementLoopAddLocation(NPC, -2.21, -11.82, -39.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.8, -12.21, -32.09, 2, 0)
	MovementLoopAddLocation(NPC, 19.02, -11.92, -31.59, 2, 0)
	MovementLoopAddLocation(NPC, 22.1, -11.98, -31.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.33, -12.62, -27.13, 2, 0)
	MovementLoopAddLocation(NPC, 23.92, -13, -21.17, 2, 0)
	MovementLoopAddLocation(NPC, 31.91, -13.14, -8.09, 2, 0)
	MovementLoopAddLocation(NPC, 37.17, -13.16, -2.04, 2, 0)
	MovementLoopAddLocation(NPC, 42.38, -12.6, 3.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.52, -13.09, 0.11, 2, 0)
	MovementLoopAddLocation(NPC, 28.85, -13.92, -1.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.12, -13.67, -14.45, 2, 0)
	MovementLoopAddLocation(NPC, 18.38, -13.18, -40.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.48, -12.35, -36.43, 2, 0)
	MovementLoopAddLocation(NPC, 22.15, -11.94, -32.24, 2, 0)
	MovementLoopAddLocation(NPC, 25.92, -11.82, -29.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.37, -11.89, -36.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.47, -12.31, -33.49, 2, 0)
	MovementLoopAddLocation(NPC, 45.51, -13.64, -6.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.12, -13.99, -4.63, 2, 0)
	MovementLoopAddLocation(NPC, 26.37, -14.94, -0.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.78, -14.25, -21.26, 2, 0)
	MovementLoopAddLocation(NPC, 29.78, -13.61, -26.81, 2, 0)
	MovementLoopAddLocation(NPC, 32.64, -12.83, -33.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.84, -11.79, -40.59, 2, 0)
	MovementLoopAddLocation(NPC, 35.34, -11.71, -43.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.36, -11.57, -41.26, 2, 0)
	MovementLoopAddLocation(NPC, 28.84, -11.78, -39.77, 2, 0)
end

