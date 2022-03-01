--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425525.lua
	Script Purpose	:	Waypoint Path for ashoalglider425525.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:26:23 
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
	MovementLoopAddLocation(NPC, 79.94, -11.47, 52.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.26, -10.7, 44.58, 2, 0)
	MovementLoopAddLocation(NPC, 84.44, -10.7, 32.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.52, -10.7, 37.09, 2, 0)
	MovementLoopAddLocation(NPC, 64.67, -10.7, 41.64, 2, 0)
	MovementLoopAddLocation(NPC, 56.73, -11.56, 47.44, 2, 0)
	MovementLoopAddLocation(NPC, 48.74, -11.85, 51.92, 2, 0)
	MovementLoopAddLocation(NPC, 43.1, -11.97, 56.63, 2, 0)
	MovementLoopAddLocation(NPC, 38.83, -12.3, 58.96, 2, 0)
	MovementLoopAddLocation(NPC, 34.65, -12.47, 59.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.14, -12.16, 60.05, 2, 0)
	MovementLoopAddLocation(NPC, 47.26, -11.87, 59.9, 2, 0)
	MovementLoopAddLocation(NPC, 52.77, -11.06, 61.11, 2, 0)
	MovementLoopAddLocation(NPC, 65.11, -11.01, 62.16, 2, 0)
	MovementLoopAddLocation(NPC, 70.53, -11.4, 60.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.96, -10.96, 44.68, 2, 0)
	MovementLoopAddLocation(NPC, 72.51, -11.18, 41.52, 2, 0)
	MovementLoopAddLocation(NPC, 75.58, -12.64, 33.06, 2, 0)
	MovementLoopAddLocation(NPC, 76.84, -13.32, 24.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.93, -12.25, 26.35, 2, 0)
	MovementLoopAddLocation(NPC, 66.97, -11.06, 33.16, 2, 0)
	MovementLoopAddLocation(NPC, 53.6, -10.7, 39.51, 2, 0)
	MovementLoopAddLocation(NPC, 49.2, -10.7, 40.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.65, -11.06, 26.45, 2, 0)
	MovementLoopAddLocation(NPC, 60.67, -11.4, 18.33, 2, 0)
	MovementLoopAddLocation(NPC, 63.27, -12.02, 12.89, 2, 0)
	MovementLoopAddLocation(NPC, 68.69, -14.36, 3.74, 2, 0)
	MovementLoopAddLocation(NPC, 72.93, -14.97, -0.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.67, -12.95, 7.34, 2, 0)
	MovementLoopAddLocation(NPC, 76.5, -13.05, 13.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.05, -12.94, 13, 2, 0)
	MovementLoopAddLocation(NPC, 56.08, -12.48, 9.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.15, -11.48, 26.27, 2, 0)
	MovementLoopAddLocation(NPC, 60.11, -11.52, 32.99, 2, 0)
	MovementLoopAddLocation(NPC, 63.03, -12.45, 46.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.28, -12.57, 38.68, 2, 0)
	MovementLoopAddLocation(NPC, 80.47, -11.93, 23.29, 2, 0)
	MovementLoopAddLocation(NPC, 83.31, -11.88, 20.09, 2, 0)
	MovementLoopAddLocation(NPC, 86.11, -12.45, 16.08, 2, 0)
	MovementLoopAddLocation(NPC, 88.51, -12.58, 12.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.29, -12.05, 27.76, 2, 0)
	MovementLoopAddLocation(NPC, 83.9, -11.48, 37.09, 2, 0)
end

