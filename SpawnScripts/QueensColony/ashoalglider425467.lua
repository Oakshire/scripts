--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425467.lua
	Script Purpose	:	Waypoint Path for ashoalglider425467.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:17:33 
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
	MovementLoopAddLocation(NPC, -27.81, -13.53, 23.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.53, -12.07, 19.15, 2, 0)
	MovementLoopAddLocation(NPC, -29.01, -11.15, 12.72, 2, 0)
	MovementLoopAddLocation(NPC, -29.16, -10.58, 0.83, 2, 0)
	MovementLoopAddLocation(NPC, -27.75, -10.7, -6.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.12, -10.7, -7.67, 2, 0)
	MovementLoopAddLocation(NPC, -46.21, -10.7, -10.43, 2, 0)
	MovementLoopAddLocation(NPC, -51.61, -10.7, -16.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.13, -10.7, -11.92, 2, 0)
	MovementLoopAddLocation(NPC, -30.15, -10.7, -11.4, 2, 0)
	MovementLoopAddLocation(NPC, -14.45, -11.46, -7.87, 2, 0)
	MovementLoopAddLocation(NPC, -9.86, -11.97, -5.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.97, -11.71, -7.63, 2, 0)
	MovementLoopAddLocation(NPC, -27.24, -10.98, -11.96, 2, 0)
	MovementLoopAddLocation(NPC, -30.58, -10.7, -12.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.1, -10.7, -11.51, 2, 0)
	MovementLoopAddLocation(NPC, -54.28, -10.7, -12.29, 2, 0)
	MovementLoopAddLocation(NPC, -70.27, -10.7, -11.65, 2, 0)
	MovementLoopAddLocation(NPC, -78.91, -10.7, -8.65, 2, 0)
	MovementLoopAddLocation(NPC, -90.79, -11.25, -5.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -95.06, -10.63, 4.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -84.29, -10.7, -2.89, 2, 0)
	MovementLoopAddLocation(NPC, -69.09, -10.7, -9.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -64.82, -10.7, -14.17, 2, 0)
	MovementLoopAddLocation(NPC, -55.71, -10.7, -29.42, 2, 0)
	MovementLoopAddLocation(NPC, -51.59, -10.7, -34.81, 2, 0)
	MovementLoopAddLocation(NPC, -44.1, -10.7, -51.33, 2, 0)
	MovementLoopAddLocation(NPC, -39.45, -10.7, -57.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.25, -10.7, -44.8, 2, 0)
	MovementLoopAddLocation(NPC, -32.49, -10.7, -0.52, 2, 0)
	MovementLoopAddLocation(NPC, -27.68, -12.7, 16.83, 2, 0)
end

