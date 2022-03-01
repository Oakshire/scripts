--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425509.lua
	Script Purpose	:	Waypoint Path for ashoalglider425509.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:37:13 
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
	MovementLoopAddLocation(NPC, 28.83, -11.7, 1.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.69, -12.15, -1.25, 2, 0)
	MovementLoopAddLocation(NPC, 37.84, -12.81, -7.64, 2, 0)
	MovementLoopAddLocation(NPC, 44.25, -12.87, -15.6, 2, 0)
	MovementLoopAddLocation(NPC, 48.87, -12.25, -19.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.89, -12.52, -14.32, 2, 0)
	MovementLoopAddLocation(NPC, 29.45, -12.32, 3.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.64, -12.68, 1.06, 2, 0)
	MovementLoopAddLocation(NPC, 29.37, -12.94, -6.76, 2, 0)
	MovementLoopAddLocation(NPC, 24.7, -12.86, -25.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.51, -12.22, -35.11, 2, 0)
	MovementLoopAddLocation(NPC, 14.35, -11.93, -41.57, 2, 0)
	MovementLoopAddLocation(NPC, 8.17, -11.98, -54.51, 2, 0)
	MovementLoopAddLocation(NPC, 6.44, -12.61, -57.36, 2, 0)
	MovementLoopAddLocation(NPC, 3.61, -12.5, -58.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.28, -11.42, -64.3, 2, 0)
	MovementLoopAddLocation(NPC, 0.67, -11.06, -69.16, 2, 0)
	MovementLoopAddLocation(NPC, -3.46, -10.78, -78.5, 2, 0)
	MovementLoopAddLocation(NPC, -5.75, -11.8, -83.4, 2, 0)
	MovementLoopAddLocation(NPC, -10.25, -12.19, -88.97, 2, 0)
	MovementLoopAddLocation(NPC, -12.69, -12.16, -89.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -9.73, -10.7, -84.28, 2, 0)
	MovementLoopAddLocation(NPC, -7.62, -10.7, -79.02, 2, 0)
	MovementLoopAddLocation(NPC, -6.73, -10.7, -73.8, 2, 0)
	MovementLoopAddLocation(NPC, -7.49, -10.7, -67.73, 2, 0)
	MovementLoopAddLocation(NPC, -8.62, -11.35, -59.03, 2, 0)
	MovementLoopAddLocation(NPC, -7.71, -11.52, -54.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.42, -11.33, -57.55, 2, 0)
	MovementLoopAddLocation(NPC, 14.31, -11.35, -62.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.46, -10.7, -57.55, 2, 0)
	MovementLoopAddLocation(NPC, 24.01, -10.7, -53.89, 2, 0)
	MovementLoopAddLocation(NPC, 35.33, -10.7, -46.59, 2, 0)
	MovementLoopAddLocation(NPC, 42.79, -11.02, -40.09, 2, 0)
	MovementLoopAddLocation(NPC, 46.44, -11.17, -38.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.1, -11.46, -35.22, 2, 0)
	MovementLoopAddLocation(NPC, 31.8, -12.9, -30.85, 2, 0)
	MovementLoopAddLocation(NPC, 28.55, -14.35, -28.35, 2, 0)
	MovementLoopAddLocation(NPC, 27.94, -14.6, -25.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.1, -12.78, -36.7, 2, 0)
	MovementLoopAddLocation(NPC, 20.33, -12.34, -41.52, 2, 0)
	MovementLoopAddLocation(NPC, 16.38, -11.95, -45.42, 2, 0)
	MovementLoopAddLocation(NPC, 12.23, -11.72, -51.58, 2, 0)
	MovementLoopAddLocation(NPC, 4.72, -11.51, -57.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.74, -10.7, -55.1, 2, 0)
	MovementLoopAddLocation(NPC, 26.35, -10.7, -53.12, 2, 0)
	MovementLoopAddLocation(NPC, 38.82, -10.7, -49.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.87, -10.88, -42.57, 2, 0)
	MovementLoopAddLocation(NPC, 36.15, -11.91, -24.83, 2, 0)
end

