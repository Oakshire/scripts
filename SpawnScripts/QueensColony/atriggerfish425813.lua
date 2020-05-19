--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425813.lua
	Script Purpose	:	Waypoint Path for atriggerfish425813.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:42:32 
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
	MovementLoopAddLocation(NPC, 73.61, -12.75, -12.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.51, -12.82, -7.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.39, -12.35, -11.37, 2, 0)
	MovementLoopAddLocation(NPC, 64.34, -11.39, -17.34, 2, 0)
	MovementLoopAddLocation(NPC, 58.77, -11.29, -20.94, 2, 0)
	MovementLoopAddLocation(NPC, 51.59, -11.92, -25.28, 2, 0)
	MovementLoopAddLocation(NPC, 49.66, -12.15, -27.39, 2, 0)
	MovementLoopAddLocation(NPC, 48.28, -11.58, -32.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.17, -11.53, -41.01, 2, 0)
	MovementLoopAddLocation(NPC, 41.68, -11.44, -45.85, 2, 0)
	MovementLoopAddLocation(NPC, 39.23, -11.14, -48.7, 2, 0)
	MovementLoopAddLocation(NPC, 34.54, -10.36, -52.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.12, -11.41, -39.43, 2, 0)
	MovementLoopAddLocation(NPC, 30.06, -12.46, -32.93, 2, 0)
	MovementLoopAddLocation(NPC, 26.56, -11.75, -29.36, 2, 0)
	MovementLoopAddLocation(NPC, 25.06, -11.73, -28.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.07, -11.89, -44.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.49, -11.58, -51.7, 2, 0)
	MovementLoopAddLocation(NPC, -1.31, -12, -56.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.89, -10.21, -74.35, 2, 0)
	MovementLoopAddLocation(NPC, -0.8, -11.01, -84.15, 2, 0)
	MovementLoopAddLocation(NPC, -1.15, -11.68, -89.77, 2, 0)
	MovementLoopAddLocation(NPC, -2.52, -11.68, -93.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.07, -11.62, -83.43, 2, 0)
	MovementLoopAddLocation(NPC, 2.76, -11.36, -80.3, 2, 0)
	MovementLoopAddLocation(NPC, 12.83, -10.17, -72.3, 2, 0)
	MovementLoopAddLocation(NPC, 21.1, -10.2, -64.87, 2, 0)
	MovementLoopAddLocation(NPC, 27.2, -10.2, -56.98, 2, 0)
	MovementLoopAddLocation(NPC, 37.65, -10.2, -46.79, 2, 0)
	MovementLoopAddLocation(NPC, 50.03, -10.41, -29.51, 2, 0)
	MovementLoopAddLocation(NPC, 54.99, -10.2, -23.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.94, -10.59, -19.98, 2, 0)
	MovementLoopAddLocation(NPC, 70.16, -12.68, -14.24, 2, 0)
end

