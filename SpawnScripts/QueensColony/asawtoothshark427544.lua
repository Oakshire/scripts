--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427544.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427544.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:15:14 
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
	MovementLoopAddLocation(NPC, -61.47, -10.7, -15.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.91, -10.7, -16.76, 2, 0)
	MovementLoopAddLocation(NPC, -53.24, -10.7, -17.25, 2, 0)
	MovementLoopAddLocation(NPC, -44.65, -10.7, -21.1, 2, 0)
	MovementLoopAddLocation(NPC, -28.51, -10.7, -27.56, 2, 0)
	MovementLoopAddLocation(NPC, -2.98, -11.52, -34.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.37, -11.55, -27.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.87, -11.25, -26.49, 2, 0)
	MovementLoopAddLocation(NPC, -43.95, -10.7, -25.66, 2, 0)
	MovementLoopAddLocation(NPC, -52.17, -10.7, -17.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.39, -10.7, -6.27, 2, 0)
	MovementLoopAddLocation(NPC, -40.58, -10.7, 7.22, 2, 0)
	MovementLoopAddLocation(NPC, -38.19, -12.08, 20.13, 2, 0)
	MovementLoopAddLocation(NPC, -35.22, -14.6, 27.19, 2, 0)
	MovementLoopAddLocation(NPC, -34.09, -15.04, 28.56, 2, 0)
	MovementLoopAddLocation(NPC, -28.9, -15.46, 31.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.25, -13.5, 29.8, 2, 0)
	MovementLoopAddLocation(NPC, -39.95, -12.94, 33.48, 2, 0)
	MovementLoopAddLocation(NPC, -40.58, -12.76, 37.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.23, -12.46, 26.52, 2, 0)
	MovementLoopAddLocation(NPC, -37.35, -11.39, 20.99, 2, 0)
	MovementLoopAddLocation(NPC, -37.07, -11.13, 16.38, 2, 0)
	MovementLoopAddLocation(NPC, -31.89, -10.7, -3.19, 2, 0)
	MovementLoopAddLocation(NPC, -31.37, -10.7, -12.53, 2, 0)
	MovementLoopAddLocation(NPC, -27.26, -11.44, -17.94, 2, 0)
	MovementLoopAddLocation(NPC, -25.28, -13.31, -37.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.71, -12.14, -38.05, 2, 0)
	MovementLoopAddLocation(NPC, -14.79, -11.35, -40.73, 2, 0)
	MovementLoopAddLocation(NPC, -7.9, -11.01, -50.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.96, -11.78, -43.35, 2, 0)
	MovementLoopAddLocation(NPC, -8.96, -11.38, -31.33, 2, 0)
	MovementLoopAddLocation(NPC, -15.52, -11.36, -18.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.73, -11.74, -13.82, 2, 0)
	MovementLoopAddLocation(NPC, -15.16, -12.1, 4.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.26, -12.58, 7.5, 2, 0)
	MovementLoopAddLocation(NPC, -28.82, -12.28, 8.67, 2, 0)
	MovementLoopAddLocation(NPC, -33, -11.85, 12.63, 2, 0)
	MovementLoopAddLocation(NPC, -37.55, -11.61, 15.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.6, -10.7, 7.91, 2, 0)
	MovementLoopAddLocation(NPC, -50.56, -10.7, -2.14, 2, 0)
end

