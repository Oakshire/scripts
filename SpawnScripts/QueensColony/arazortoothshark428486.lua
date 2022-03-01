--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428486.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428486.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:17:09 
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
	MovementLoopAddLocation(NPC, 89.66, -12.71, -25.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.22, -12.36, -31.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.02, -11.64, -36.36, 2, 0)
	MovementLoopAddLocation(NPC, 74.21, -11.12, -43.47, 2, 0)
	MovementLoopAddLocation(NPC, 70.87, -11.23, -50.25, 2, 0)
	MovementLoopAddLocation(NPC, 67.27, -12, -61.65, 2, 0)
	MovementLoopAddLocation(NPC, 66.68, -11.78, -72.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.91, -11.5, -63.72, 2, 0)
	MovementLoopAddLocation(NPC, 74.95, -11.1, -60.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.19, -11.67, -60.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.76, -11.69, -69.62, 2, 0)
	MovementLoopAddLocation(NPC, 35.61, -11.74, -81.84, 2, 0)
	MovementLoopAddLocation(NPC, 30.01, -11.89, -85.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.99, -11.97, -79.85, 2, 0)
	MovementLoopAddLocation(NPC, 58.61, -11.62, -74.81, 2, 0)
	MovementLoopAddLocation(NPC, 64.47, -11.73, -73.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.66, -11.78, -78.65, 2, 0)
	MovementLoopAddLocation(NPC, 48.42, -11.88, -80.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.72, -11.26, -81.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.91, -11.32, -76.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.23, -10.7, -65.81, 2, 0)
	MovementLoopAddLocation(NPC, 70.9, -10.7, -56.32, 2, 0)
	MovementLoopAddLocation(NPC, 78.41, -11.34, -39.19, 2, 0)
	MovementLoopAddLocation(NPC, 85.77, -12.65, -27.29, 2, 0)
end

