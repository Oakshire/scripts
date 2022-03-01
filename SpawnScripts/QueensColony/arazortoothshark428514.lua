--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428514.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428514.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:37:24 
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
	MovementLoopAddLocation(NPC, 40.14, -11.88, -4.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.14, -11.71, -11.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.26, -12.24, -19.76, 2, 0)
	MovementLoopAddLocation(NPC, 17.66, -11.7, -28.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.38, -12.18, -24.76, 2, 0)
	MovementLoopAddLocation(NPC, 48.58, -11.83, -2.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.85, -10.7, -16.42, 2, 0)
	MovementLoopAddLocation(NPC, 17.17, -10.7, -30.42, 2, 0)
	MovementLoopAddLocation(NPC, 10.43, -10.7, -35.11, 2, 0)
	MovementLoopAddLocation(NPC, 4.14, -11.77, -38.29, 2, 0)
	MovementLoopAddLocation(NPC, -0.02, -12.09, -41.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.38, -11.79, -33.89, 2, 0)
	MovementLoopAddLocation(NPC, 14.44, -11.72, -17.85, 2, 0)
	MovementLoopAddLocation(NPC, 16.08, -12.32, -2.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.24, -12.13, 2.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.88, -12.31, -4.1, 2, 0)
	MovementLoopAddLocation(NPC, 46.33, -12.83, -6.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.5, -13.31, -8.27, 2, 0)
	MovementLoopAddLocation(NPC, 17.72, -12.53, -8.46, 2, 0)
	MovementLoopAddLocation(NPC, 10.73, -12.36, -8.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.95, -11.84, -3.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.13, -12.12, -10.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.71, -12.53, -19.81, 2, 0)
	MovementLoopAddLocation(NPC, 17.42, -11.68, -29.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.5, -12.1, -26.22, 2, 0)
	MovementLoopAddLocation(NPC, 48.52, -11.8, -2.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.06, -10.7, -17.62, 2, 0)
	MovementLoopAddLocation(NPC, 17.2, -10.7, -30.82, 2, 0)
	MovementLoopAddLocation(NPC, 6.59, -11.12, -42.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.01, -12.34, -20.41, 2, 0)
end
