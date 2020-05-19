--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425483.lua
	Script Purpose	:	Waypoint Path for ashoalglider425483.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:14:35 
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
	MovementLoopAddLocation(NPC, 67.17, -11.48, -64.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.91, -11.45, -52.14, 2, 0)
	MovementLoopAddLocation(NPC, 77.03, -11.53, -45.16, 2, 0)
	MovementLoopAddLocation(NPC, 86.16, -12.15, -39.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.53, -10.98, -52.25, 2, 0)
	MovementLoopAddLocation(NPC, 44.66, -10.7, -53.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.7, -10.7, -51.53, 2, 0)
	MovementLoopAddLocation(NPC, 69.19, -10.7, -44.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.47, -11.36, -36.95, 2, 0)
	MovementLoopAddLocation(NPC, 94.99, -12.4, -25.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.49, -11.86, -34.69, 2, 0)
	MovementLoopAddLocation(NPC, 79.39, -12, -40.58, 2, 0)
	MovementLoopAddLocation(NPC, 76.42, -11.64, -43.84, 2, 0)
	MovementLoopAddLocation(NPC, 73.27, -11.71, -45.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.7, -11.73, -36.34, 2, 0)
	MovementLoopAddLocation(NPC, 92.14, -11.9, -23.83, 2, 0)
	MovementLoopAddLocation(NPC, 94.74, -11.56, -19.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.76, -11.55, -35.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 97.26, -12.42, -23.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 99.5, -11.32, -43.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.59, -10.7, -45.44, 2, 0)
	MovementLoopAddLocation(NPC, 79.78, -10.7, -47.08, 2, 0)
	MovementLoopAddLocation(NPC, 54.97, -10.7, -62.41, 2, 0)
	MovementLoopAddLocation(NPC, 51.88, -10.7, -63.77, 2, 0)
	MovementLoopAddLocation(NPC, 45.43, -10.7, -67.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.45, -10.7, -59.43, 2, 0)
	MovementLoopAddLocation(NPC, 74.6, -10.7, -50.81, 2, 0)
	MovementLoopAddLocation(NPC, 83.63, -10.7, -46.4, 2, 0)
	MovementLoopAddLocation(NPC, 94.71, -11.46, -43.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.73, -11.05, -47.12, 2, 0)
	MovementLoopAddLocation(NPC, 75.32, -11.1, -49.49, 2, 0)
	MovementLoopAddLocation(NPC, 70.05, -11.54, -58.07, 2, 0)
end

