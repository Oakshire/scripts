--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428484.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428484.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:16:24 
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
	MovementLoopAddLocation(NPC, 61.13, -11.71, -66.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.71, -10.97, -82.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.79, -10.7, -80.91, 2, 0)
	MovementLoopAddLocation(NPC, 67.76, -10.98, -72.31, 2, 0)
	MovementLoopAddLocation(NPC, 71.88, -10.59, -64.75, 2, 0)
	MovementLoopAddLocation(NPC, 75.66, -10.7, -53, 2, 0)
	MovementLoopAddLocation(NPC, 77.95, -10.7, -46.44, 2, 0)
	MovementLoopAddLocation(NPC, 96.72, -11.99, -22.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.87, -11.9, -25.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.88, -11.97, -30.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.15, -11.98, -41.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.58, -11.78, -24.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.42, -12.22, -36.04, 2, 0)
	MovementLoopAddLocation(NPC, 77.88, -12.22, -41.32, 2, 0)
	MovementLoopAddLocation(NPC, 75.62, -11.98, -46.56, 2, 0)
	MovementLoopAddLocation(NPC, 71.77, -11.71, -52.5, 2, 0)
	MovementLoopAddLocation(NPC, 65.98, -11.68, -66.37, 2, 0)
	MovementLoopAddLocation(NPC, 63.52, -11.8, -73.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.98, -12, -81.06, 2, 0)
	MovementLoopAddLocation(NPC, 23.42, -11.71, -84.69, 2, 0)
	MovementLoopAddLocation(NPC, 14.02, -11.57, -87.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.29, -11.76, -82.7, 2, 0)
	MovementLoopAddLocation(NPC, 33.19, -11.96, -80.96, 2, 0)
	MovementLoopAddLocation(NPC, 54.17, -11.82, -75.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.59, -11.45, -77.59, 2, 0)
	MovementLoopAddLocation(NPC, 37.24, -11.29, -81.06, 2, 0)
	MovementLoopAddLocation(NPC, 21.09, -11.98, -89.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.47, -11.8, -84.25, 2, 0)
	MovementLoopAddLocation(NPC, 39.89, -11.67, -77.11, 2, 0)
	MovementLoopAddLocation(NPC, 49, -11.86, -71.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.68, -11.56, -78.31, 2, 0)
	MovementLoopAddLocation(NPC, 39.59, -11.35, -82.76, 2, 0)
	MovementLoopAddLocation(NPC, 33.02, -11.5, -86.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.42, -11.37, -84.87, 2, 0)
	MovementLoopAddLocation(NPC, 46.1, -11.46, -81.26, 2, 0)
	MovementLoopAddLocation(NPC, 62.79, -11.77, -64.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.44, -10.62, -51.28, 2, 0)
	MovementLoopAddLocation(NPC, 53.17, -10.6, -42.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.54, -11, -55.61, 2, 0)
end

