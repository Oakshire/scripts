--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425457.lua
	Script Purpose	:	Waypoint Path for ashoalglider425457.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:59:27 
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
	MovementLoopAddLocation(NPC, -130.1, -12.42, 66.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.82, -12.08, 56.19, 2, 0)
	MovementLoopAddLocation(NPC, -128.11, -10.5, 56.26, 2, 0)
	MovementLoopAddLocation(NPC, -119.62, -10.5, 63.05, 2, 0)
	MovementLoopAddLocation(NPC, -115.96, -10.5, 68.13, 2, 0)
	MovementLoopAddLocation(NPC, -107.83, -11.62, 70.15, 2, 0)
	MovementLoopAddLocation(NPC, -106.92, -11.66, 76.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.3, -11.32, 67.81, 2, 0)
	MovementLoopAddLocation(NPC, -117.65, -11.13, 65.39, 2, 0)
	MovementLoopAddLocation(NPC, -120.88, -10.5, 63.33, 2, 0)
	MovementLoopAddLocation(NPC, -123.71, -10.5, 61.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.74, -11.97, 52.94, 2, 0)
	MovementLoopAddLocation(NPC, -142.09, -12.58, 51.28, 2, 0)
	MovementLoopAddLocation(NPC, -144, -12.16, 52.48, 2, 0)
	MovementLoopAddLocation(NPC, -145.64, -12.39, 55.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.87, -12.33, 33.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -138.14, -12.03, 47.54, 2, 0)
	MovementLoopAddLocation(NPC, -127.62, -10.5, 54.32, 2, 0)
	MovementLoopAddLocation(NPC, -125.94, -10.5, 57.62, 2, 0)
	MovementLoopAddLocation(NPC, -117.17, -10.5, 61.55, 2, 0)
	MovementLoopAddLocation(NPC, -106.51, -11.5, 68.08, 2, 0)
	MovementLoopAddLocation(NPC, -103.27, -11.5, 73.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.83, -11.5, 68.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.5, -10.5, 64, 2, 0)
	MovementLoopAddLocation(NPC, -124.01, -10.5, 60.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.9, -10.5, 56.27, 2, 0)
	MovementLoopAddLocation(NPC, -134.61, -11.81, 52.38, 2, 0)
	MovementLoopAddLocation(NPC, -145.42, -12.11, 47.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.54, -12.03, 52.06, 2, 0)
	MovementLoopAddLocation(NPC, -131.64, -12.01, 51.94, 2, 0)
	MovementLoopAddLocation(NPC, -119.23, -11.55, 55.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -123.83, -10.5, 46.59, 2, 0)
	MovementLoopAddLocation(NPC, -124.63, -10.5, 45.34, 2, 0)
	MovementLoopAddLocation(NPC, -138.12, -12.11, 34.9, 2, 0)
	MovementLoopAddLocation(NPC, -140.79, -12.44, 29.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.7, -12.97, 48.73, 2, 0)
end

