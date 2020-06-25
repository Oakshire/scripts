--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428456.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428456.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 08:53:29 
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
	MovementLoopAddLocation(NPC, -42.09, -12.72, 32.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.49, -12.35, 27.32, 2, 0)
	MovementLoopAddLocation(NPC, -27.51, -11.53, 12.87, 2, 0)
	MovementLoopAddLocation(NPC, -20.17, -12.55, 0.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.07, -11.96, 10.93, 2, 0)
	MovementLoopAddLocation(NPC, -36.24, -12.02, 16.03, 2, 0)
	MovementLoopAddLocation(NPC, -37.56, -12.15, 17.91, 2, 0)
	MovementLoopAddLocation(NPC, -40.36, -12.74, 22.21, 2, 0)
	MovementLoopAddLocation(NPC, -43.09, -12.72, 26.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.98, -12, 25.03, 2, 0)
	MovementLoopAddLocation(NPC, -50.49, -10.95, 23.79, 2, 0)
	MovementLoopAddLocation(NPC, -54.53, -10.7, 22.49, 2, 0)
	MovementLoopAddLocation(NPC, -63.24, -10.7, 15.87, 2, 0)
	MovementLoopAddLocation(NPC, -69.84, -10.7, 11.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -63.52, -10.7, 8.47, 2, 0)
	MovementLoopAddLocation(NPC, -24.51, -10.7, -8.04, 2, 0)
	MovementLoopAddLocation(NPC, -12.84, -11.58, -11.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.79, -11.47, -28.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.68, -12.94, -33.67, 2, 0)
	MovementLoopAddLocation(NPC, -26.54, -13.37, -38.38, 2, 0)
	MovementLoopAddLocation(NPC, -26.42, -13.32, -43.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.71, -12.36, -45.25, 2, 0)
	MovementLoopAddLocation(NPC, -36.82, -10.7, -47.95, 2, 0)
	MovementLoopAddLocation(NPC, -44.9, -10.7, -50.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.86, -10.7, -28.26, 2, 0)
	MovementLoopAddLocation(NPC, -36.48, -10.7, 8.09, 2, 0)
	MovementLoopAddLocation(NPC, -33.75, -11.9, 20.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.26, -12.04, 27.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.7, -12.72, 19.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.95, -12.48, 22.94, 2, 0)
end

