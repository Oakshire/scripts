--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427057.lua
	Script Purpose	:	Waypoint Path for areefturtle427057.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:14:51 
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
	MovementLoopAddLocation(NPC, 34.8, -11.84, -82.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.06, -12.15, -81.07, 2, 0)
	MovementLoopAddLocation(NPC, 63.74, -11.82, -66.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.12, -11.25, -64.98, 2, 0)
	MovementLoopAddLocation(NPC, 46.68, -10.58, -64.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.1, -10.38, -55.93, 2, 0)
	MovementLoopAddLocation(NPC, 61.82, -10.34, -48.5, 2, 0)
	MovementLoopAddLocation(NPC, 64.92, -10.26, -43.53, 2, 0)
	MovementLoopAddLocation(NPC, 77.79, -10.26, -35.7, 2, 0)
	MovementLoopAddLocation(NPC, 92.07, -11.4, -23.91, 2, 0)
	MovementLoopAddLocation(NPC, 94.6, -11.74, -19.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.62, -11.88, -23.61, 2, 0)
	MovementLoopAddLocation(NPC, 78.59, -11.22, -32.44, 2, 0)
	MovementLoopAddLocation(NPC, 71.18, -10.31, -41.13, 2, 0)
	MovementLoopAddLocation(NPC, 65.9, -10.76, -45.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.67, -11.36, -70.67, 2, 0)
	MovementLoopAddLocation(NPC, 39.89, -11, -74.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.16, -11.01, -72.39, 2, 0)
	MovementLoopAddLocation(NPC, 63.36, -10.64, -55.69, 2, 0)
	MovementLoopAddLocation(NPC, 70.55, -11.07, -48.37, 2, 0)
	MovementLoopAddLocation(NPC, 76.74, -11.5, -44.31, 2, 0)
	MovementLoopAddLocation(NPC, 87.95, -12.44, -39.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.25, -12.66, -40.02, 2, 0)
	MovementLoopAddLocation(NPC, 78.63, -12.4, -41.77, 2, 0)
	MovementLoopAddLocation(NPC, 71.87, -11.32, -47.44, 2, 0)
	MovementLoopAddLocation(NPC, 61.66, -10.63, -55.3, 2, 0)
	MovementLoopAddLocation(NPC, 54.32, -11.76, -60.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.65, -11.29, -56.29, 2, 0)
	MovementLoopAddLocation(NPC, 71.99, -10.2, -38.63, 2, 0)
	MovementLoopAddLocation(NPC, 75.89, -10.18, -30.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.23, -10.27, -36.28, 2, 0)
	MovementLoopAddLocation(NPC, 70.84, -10.2, -39.55, 2, 0)
	MovementLoopAddLocation(NPC, 59.59, -10.2, -46.9, 2, 0)
	MovementLoopAddLocation(NPC, 45.09, -10.2, -62.15, 2, 0)
	MovementLoopAddLocation(NPC, 37.97, -10.2, -71.81, 2, 0)
	MovementLoopAddLocation(NPC, 35.91, -10.44, -75.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.54, -11.53, -79.66, 2, 0)
end

