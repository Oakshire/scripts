--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425496.lua
	Script Purpose	:	Waypoint Path for ashoalglider425496.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:18:29 
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
	MovementLoopAddLocation(NPC, 42.12, -11.53, -78.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.79, -11.31, -60.25, 2, 0)
	MovementLoopAddLocation(NPC, 63.75, -10.7, -45.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.78, -10.7, -41.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.4, -10.7, -56.38, 2, 0)
	MovementLoopAddLocation(NPC, 42.27, -10.7, -73.72, 2, 0)
	MovementLoopAddLocation(NPC, 32.53, -11.5, -82.48, 2, 0)
	MovementLoopAddLocation(NPC, 24.44, -11.42, -88.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.05, -11.69, -85.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.25, -10.55, -78.1, 2, 0)
	MovementLoopAddLocation(NPC, 51.82, -10.55, -61.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.29, -11.09, -60.31, 2, 0)
	MovementLoopAddLocation(NPC, 70.24, -11.49, -58.78, 2, 0)
	MovementLoopAddLocation(NPC, 73.17, -11.51, -60.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.29, -11.82, -50.42, 2, 0)
	MovementLoopAddLocation(NPC, 79.9, -11.86, -32.34, 2, 0)
	MovementLoopAddLocation(NPC, 82.83, -11.53, -27.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83, -11.46, -25.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.27, -11.33, -27.74, 2, 0)
	MovementLoopAddLocation(NPC, 74.89, -10.7, -35.7, 2, 0)
	MovementLoopAddLocation(NPC, 71.26, -10.7, -40.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.92, -11.21, -41.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.77, -11.47, -45.02, 2, 0)
	MovementLoopAddLocation(NPC, 64.31, -11.84, -57.14, 2, 0)
	MovementLoopAddLocation(NPC, 58.78, -11.48, -60.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.4, -11, -68.63, 2, 0)
	MovementLoopAddLocation(NPC, 47.4, -11.08, -72.26, 2, 0)
end

