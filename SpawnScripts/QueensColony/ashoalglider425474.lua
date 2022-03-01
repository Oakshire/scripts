--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425474.lua
	Script Purpose	:	Waypoint Path for ashoalglider425474.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:43 
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
	MovementLoopAddLocation(NPC, -30.23, -12.35, -31.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.44, -10.74, -45.4, 2, 0)
	MovementLoopAddLocation(NPC, -39.59, -10.7, -60.77, 2, 0)
	MovementLoopAddLocation(NPC, -39.86, -10.7, -67.61, 2, 0)
	MovementLoopAddLocation(NPC, -41.24, -10.7, -74.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.53, -10.7, -66.04, 2, 0)
	MovementLoopAddLocation(NPC, -38.01, -10.7, -9.21, 2, 0)
	MovementLoopAddLocation(NPC, -39.14, -10.7, -3.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.91, -10.7, 10.71, 2, 0)
	MovementLoopAddLocation(NPC, -42.03, -11.44, 17.29, 2, 0)
	MovementLoopAddLocation(NPC, -47.5, -11.16, 22.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.42, -10.7, 3.97, 2, 0)
	MovementLoopAddLocation(NPC, -38.51, -10.7, -14.89, 2, 0)
	MovementLoopAddLocation(NPC, -34.12, -11.46, -21.33, 2, 0)
	MovementLoopAddLocation(NPC, -29.15, -11.55, -23.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.83, -11.09, -13.01, 2, 0)
	MovementLoopAddLocation(NPC, -28.35, -10.7, -4.66, 2, 0)
	MovementLoopAddLocation(NPC, -29.12, -10.7, 3.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.41, -10.7, -7.78, 2, 0)
	MovementLoopAddLocation(NPC, -35.19, -10.77, -15.44, 2, 0)
	MovementLoopAddLocation(NPC, -38.03, -11.02, -27.63, 2, 0)
	MovementLoopAddLocation(NPC, -40.19, -11.44, -32.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.56, -12.08, -36.97, 2, 0)
	MovementLoopAddLocation(NPC, -35.83, -12.59, -44.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -34.5, -11.37, -40.86, 2, 0)
	MovementLoopAddLocation(NPC, -31.89, -10.7, -31.72, 2, 0)
	MovementLoopAddLocation(NPC, -26.02, -10.7, -15.67, 2, 0)
	MovementLoopAddLocation(NPC, -24.91, -11.3, -11.83, 2, 0)
	MovementLoopAddLocation(NPC, -24.99, -11.7, -4.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.13, -11.45, -16.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.08, -11.08, -26.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35, -11.53, -31.86, 2, 0)
	MovementLoopAddLocation(NPC, -47.95, -11.29, -36.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.64, -11.99, -33.67, 2, 0)
end

