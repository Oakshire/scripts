--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428458.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428458.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:18:24 
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
	MovementLoopAddLocation(NPC, -42.96, -11.75, -37.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.56, -10.7, -30.76, 2, 0)
	MovementLoopAddLocation(NPC, -49.32, -10.7, -15.52, 2, 0)
	MovementLoopAddLocation(NPC, -56.3, -10.58, 1.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.37, -10.7, 8.7, 2, 0)
	MovementLoopAddLocation(NPC, -56.33, -10.7, 19.03, 2, 0)
	MovementLoopAddLocation(NPC, -45.12, -11.18, 35.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.83, -11.24, 25.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.18, -10.7, 6.45, 2, 0)
	MovementLoopAddLocation(NPC, -38.93, -10.7, -3.66, 2, 0)
	MovementLoopAddLocation(NPC, -36.45, -10.7, -12.88, 2, 0)
	MovementLoopAddLocation(NPC, -31.55, -11.44, -21.27, 2, 0)
	MovementLoopAddLocation(NPC, -27.18, -12.07, -25.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -29.57, -12.1, -31.68, 2, 0)
	MovementLoopAddLocation(NPC, -35.23, -11.79, -47.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.74, -11.42, -29.48, 2, 0)
	MovementLoopAddLocation(NPC, -36.56, -11.17, -22.97, 2, 0)
	MovementLoopAddLocation(NPC, -36.54, -11.37, -18.83, 2, 0)
	MovementLoopAddLocation(NPC, -37.28, -10.74, -11.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.1, -10.7, -11.4, 2, 0)
	MovementLoopAddLocation(NPC, -51.36, -10.7, -12.1, 2, 0)
	MovementLoopAddLocation(NPC, -63.07, -10.7, -12.9, 2, 0)
	MovementLoopAddLocation(NPC, -72.82, -10.7, -10.19, 2, 0)
	MovementLoopAddLocation(NPC, -80.15, -10.69, -6.19, 2, 0)
	MovementLoopAddLocation(NPC, -85.09, -11.52, 0.44, 2, 0)
	MovementLoopAddLocation(NPC, -86.18, -11.57, 4.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -78.24, -10.7, -1.29, 2, 0)
	MovementLoopAddLocation(NPC, -63.88, -10.7, -2.98, 2, 0)
	MovementLoopAddLocation(NPC, -49.65, -10.6, -6.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -49.21, -10.7, -10.71, 2, 0)
	MovementLoopAddLocation(NPC, -39.86, -10.59, -69.21, 2, 0)
	MovementLoopAddLocation(NPC, -35.85, -11.71, -79.29, 2, 0)
	MovementLoopAddLocation(NPC, -34.88, -11.93, -85.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.95, -11.95, -79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.48, -11.8, -56.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.78, -10.7, -51.25, 2, 0)
	MovementLoopAddLocation(NPC, -43.43, -10.59, -43.51, 2, 0)
	MovementLoopAddLocation(NPC, -42.72, -11.68, -36.72, 2, 0)
	MovementLoopAddLocation(NPC, -39.88, -11.66, -27.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.63, -11.77, -30.53, 2, math.random(10, 20))
end
