--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428435.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428435.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:14:56 
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
	MovementLoopAddLocation(NPC, -45.11, -10.7, -53.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -49.04, -10.7, -52.39, 2, 0)
	MovementLoopAddLocation(NPC, -56.61, -10.7, -49.5, 2, 0)
	MovementLoopAddLocation(NPC, -68.12, -10.7, -44.89, 2, 0)
	MovementLoopAddLocation(NPC, -72.9, -10.7, -18.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -85.97, -11.78, -12.41, 2, 0)
	MovementLoopAddLocation(NPC, -91.52, -11.91, -0.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -81.74, -11.36, -14.5, 2, 0)
	MovementLoopAddLocation(NPC, -71.8, -10.7, -19.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -63.89, -10.7, -13.5, 2, 0)
	MovementLoopAddLocation(NPC, -50.98, -10.7, -16.09, 2, 0)
	MovementLoopAddLocation(NPC, -39.36, -10.7, -24.74, 2, 0)
	MovementLoopAddLocation(NPC, -28.32, -11.64, -36.62, 2, 0)
	MovementLoopAddLocation(NPC, -13.82, -11.91, -41.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.92, -12.16, -41.71, 2, 0)
	MovementLoopAddLocation(NPC, -22.51, -12.64, -37.98, 2, 0)
	MovementLoopAddLocation(NPC, -26.92, -12.45, -31.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.43, -12.4, -42.96, 2, 0)
	MovementLoopAddLocation(NPC, -5.74, -12.09, -46.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.42, -11.85, -44.75, 2, 0)
	MovementLoopAddLocation(NPC, -20.04, -12.09, -39.61, 2, 0)
	MovementLoopAddLocation(NPC, -22.23, -12.68, -37.47, 2, 0)
	MovementLoopAddLocation(NPC, -24.13, -13.4, -33.45, 2, 0)
	MovementLoopAddLocation(NPC, -23.7, -13.25, -29.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.98, -12.77, -34.82, 2, 0)
	MovementLoopAddLocation(NPC, -20.14, -12.49, -39.51, 2, 0)
	MovementLoopAddLocation(NPC, -17.4, -12.3, -42.96, 2, 0)
	MovementLoopAddLocation(NPC, -10.32, -11.7, -44.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.38, -11.28, -38.23, 2, 0)
	MovementLoopAddLocation(NPC, -13.31, -11.28, -33.41, 2, 0)
	MovementLoopAddLocation(NPC, -12.86, -12.25, -17.01, 2, 0)
	MovementLoopAddLocation(NPC, -10.38, -12.59, -11.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.35, -12.08, -19.52, 2, 0)
	MovementLoopAddLocation(NPC, -25.94, -11.31, -31.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.93, -10.7, -49.86, 2, 0)
end

