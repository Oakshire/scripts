--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428472.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428472.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:12:44 
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
	MovementLoopAddLocation(NPC, 85.05, -12.91, -32.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.93, -12.87, -36.32, 2, 0)
	MovementLoopAddLocation(NPC, 80, -12.59, -40.01, 2, 0)
	MovementLoopAddLocation(NPC, 77.84, -12.16, -42.49, 2, 0)
	MovementLoopAddLocation(NPC, 75.59, -11.83, -47, 2, 0)
	MovementLoopAddLocation(NPC, 61.13, -11.83, -58.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.13, -11.81, -80.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.81, -10.65, -61.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.32, -10.7, -63.83, 2, 0)
	MovementLoopAddLocation(NPC, 44.47, -11.39, -80.72, 2, 0)
	MovementLoopAddLocation(NPC, 37.83, -11.69, -84.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.18, -11.8, -79.85, 2, 0)
	MovementLoopAddLocation(NPC, 73.04, -11.78, -72.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.23, -11.77, -72.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.4, -11.74, -77.94, 2, 0)
	MovementLoopAddLocation(NPC, 52.15, -11.75, -79.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.53, -11.77, -76.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.22, -11.77, -74.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.19, -11.77, -79.92, 2, 0)
	MovementLoopAddLocation(NPC, 44.5, -11.19, -81.18, 2, 0)
	MovementLoopAddLocation(NPC, 38.13, -11.21, -85.03, 2, 0)
	MovementLoopAddLocation(NPC, 32.76, -11.28, -86.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.4, -10.97, -78.76, 2, 0)
	MovementLoopAddLocation(NPC, 44.64, -10.7, -67.89, 2, 0)
	MovementLoopAddLocation(NPC, 51.78, -10.58, -57.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.17, -10.72, -55.59, 2, 0)
	MovementLoopAddLocation(NPC, 68.28, -11.41, -48.37, 2, 0)
	MovementLoopAddLocation(NPC, 78.73, -12.41, -41.36, 2, 0)
	MovementLoopAddLocation(NPC, 81.63, -12.76, -37.95, 2, 0)
end

