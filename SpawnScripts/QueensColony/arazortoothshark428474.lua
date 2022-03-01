--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428474.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428474.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:13:26 
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
	MovementLoopAddLocation(NPC, 41.5, -11.58, -76.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.94, -11.86, -79.84, 2, 0)
	MovementLoopAddLocation(NPC, 51.41, -11.77, -80.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.63, -11.81, -81.09, 2, 0)
	MovementLoopAddLocation(NPC, 34.54, -11.2, -85.79, 2, 0)
	MovementLoopAddLocation(NPC, 25.65, -11.28, -88.03, 2, 0)
	MovementLoopAddLocation(NPC, 18.64, -11.74, -87.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.1, -12.03, -84.69, 2, 0)
	MovementLoopAddLocation(NPC, 35.76, -12.02, -82.13, 2, 0)
	MovementLoopAddLocation(NPC, 54.43, -11.8, -73.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.69, -10.7, -47.93, 2, 0)
	MovementLoopAddLocation(NPC, 82.4, -10.55, -45.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.38, -11.7, -40.87, 2, 0)
	MovementLoopAddLocation(NPC, 92.46, -12, -36.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.79, -11.86, -19.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.72, -11.51, -32.53, 2, 0)
	MovementLoopAddLocation(NPC, 78.61, -11.37, -34.48, 2, 0)
	MovementLoopAddLocation(NPC, 77.31, -11.24, -38.56, 2, 0)
	MovementLoopAddLocation(NPC, 75.29, -11.21, -41.99, 2, 0)
	MovementLoopAddLocation(NPC, 73.05, -10.98, -45.98, 2, 0)
	MovementLoopAddLocation(NPC, 69.14, -11.09, -51.07, 2, 0)
	MovementLoopAddLocation(NPC, 58.92, -11.7, -63.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.7, -11.62, -58.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.35, -11.28, -64.78, 2, 0)
	MovementLoopAddLocation(NPC, 50.53, -11.15, -68.68, 2, 0)
	MovementLoopAddLocation(NPC, 46.01, -11.25, -73.48, 2, 0)
end

