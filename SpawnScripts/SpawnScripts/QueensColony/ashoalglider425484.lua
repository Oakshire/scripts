--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425484.lua
	Script Purpose	:	Waypoint Path for ashoalglider425484.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:14:54 
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
	MovementLoopAddLocation(NPC, 30.73, -11.64, -80.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.04, -11.72, -79.86, 2, 0)
	MovementLoopAddLocation(NPC, 37.4, -11.59, -78.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.42, -11.52, -59.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.18, -11.48, -47.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.53, -11.54, -44.83, 2, 0)
	MovementLoopAddLocation(NPC, 86.98, -11.14, -37.43, 2, 0)
	MovementLoopAddLocation(NPC, 92.34, -11.54, -23.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.02, -12.38, -29.88, 2, 0)
	MovementLoopAddLocation(NPC, 83.2, -12.42, -32.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.38, -12.33, -38.16, 2, 0)
	MovementLoopAddLocation(NPC, 76.79, -11.93, -43.67, 2, 0)
	MovementLoopAddLocation(NPC, 72.11, -11.71, -50.66, 2, 0)
	MovementLoopAddLocation(NPC, 65.81, -11.69, -56.29, 2, 0)
	MovementLoopAddLocation(NPC, 61.53, -11.56, -58.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.61, -11.47, -76.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.01, -11.83, -79.2, 2, 0)
	MovementLoopAddLocation(NPC, 56.67, -11.56, -80.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.29, -11.59, -78.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.8, -11.48, -66.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.02, -10.74, -68.44, 2, 0)
	MovementLoopAddLocation(NPC, 42.89, -10.7, -73.04, 2, 0)
	MovementLoopAddLocation(NPC, 35.12, -10.7, -77.36, 2, 0)
	MovementLoopAddLocation(NPC, 31.71, -11.4, -79.72, 2, 0)
end

