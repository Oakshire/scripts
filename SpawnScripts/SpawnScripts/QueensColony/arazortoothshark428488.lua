--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428488.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428488.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:17:55 
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
	MovementLoopAddLocation(NPC, 78.11, -11.97, -34.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.81, -11.51, -38.62, 2, 0)
	MovementLoopAddLocation(NPC, 73.65, -11.08, -44.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.55, -11.49, -70.27, 2, 0)
	MovementLoopAddLocation(NPC, 67.17, -11.8, -77.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.87, -11.37, -82.58, 2, 0)
	MovementLoopAddLocation(NPC, 38.16, -10.7, -86.36, 2, 0)
	MovementLoopAddLocation(NPC, 25.28, -10.7, -89.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.2, -10.52, -87.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.89, -11.37, -83.55, 2, 0)
	MovementLoopAddLocation(NPC, 43.92, -11.65, -75.23, 2, 0)
	MovementLoopAddLocation(NPC, 45.54, -11.17, -67.96, 2, 0)
	MovementLoopAddLocation(NPC, 44.58, -11.09, -63.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.67, -10.7, -50.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.88, -10.79, -45.23, 2, 0)
	MovementLoopAddLocation(NPC, 77.98, -11.69, -38.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.25, -11.26, -50.42, 2, 0)
	MovementLoopAddLocation(NPC, 74.7, -11.26, -53.64, 2, 0)
	MovementLoopAddLocation(NPC, 74.61, -11.33, -58.96, 2, 0)
	MovementLoopAddLocation(NPC, 76.35, -11.97, -72.09, 2, 0)
	MovementLoopAddLocation(NPC, 76.98, -11.82, -76.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.11, -11.81, -62.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.84, -11.91, -48.15, 2, 0)
	MovementLoopAddLocation(NPC, 76.48, -12.16, -40.97, 2, 0)
	MovementLoopAddLocation(NPC, 77.46, -12.23, -37.66, 2, 0)
end

