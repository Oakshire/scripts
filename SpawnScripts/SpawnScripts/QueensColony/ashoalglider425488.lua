--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425488.lua
	Script Purpose	:	Waypoint Path for ashoalglider425488.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:16:16 
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
	MovementLoopAddLocation(NPC, 61.07, -11.48, -70.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.29, -11.6, -80.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.62, -11.5, -72.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.16, -11.13, -63.82, 2, 0)
	MovementLoopAddLocation(NPC, 74.54, -10.98, -59.49, 2, 0)
	MovementLoopAddLocation(NPC, 74.19, -10.7, -52.66, 2, 0)
	MovementLoopAddLocation(NPC, 75.11, -11.32, -46.66, 2, 0)
	MovementLoopAddLocation(NPC, 79.45, -11.64, -38.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.2, -12.63, -42.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.26, -11.57, -43.11, 2, 0)
	MovementLoopAddLocation(NPC, 82.68, -11.02, -45.19, 2, 0)
	MovementLoopAddLocation(NPC, 77.89, -10.63, -47.76, 2, 0)
	MovementLoopAddLocation(NPC, 74.37, -10.59, -51.38, 2, 0)
	MovementLoopAddLocation(NPC, 70.83, -11.29, -59.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.8, -11.55, -52.82, 2, 0)
	MovementLoopAddLocation(NPC, 74.11, -11.73, -49.81, 2, 0)
	MovementLoopAddLocation(NPC, 79.84, -12, -41.15, 2, 0)
	MovementLoopAddLocation(NPC, 90.48, -12.66, -22.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.51, -12.36, -35.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 98.65, -12.49, -41.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.8, -12.4, -43.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.99, -11.09, -45.01, 2, 0)
	MovementLoopAddLocation(NPC, 79.9, -10.7, -46.73, 2, 0)
	MovementLoopAddLocation(NPC, 75.44, -10.7, -50.64, 2, 0)
	MovementLoopAddLocation(NPC, 71.27, -10.7, -56.72, 2, 0)
end

