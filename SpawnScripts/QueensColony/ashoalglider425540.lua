--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425540.lua
	Script Purpose	:	Waypoint Path for ashoalglider425540.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:48:06 
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
	MovementLoopAddLocation(NPC, -4.17, -13.47, 30.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.79, -12.93, 37.57, 2, 0)
	MovementLoopAddLocation(NPC, 24.38, -13.11, 40.08, 2, 0)
	MovementLoopAddLocation(NPC, 30.65, -12.93, 42.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.85, -12.59, 44.55, 2, 0)
	MovementLoopAddLocation(NPC, 38.54, -11.62, 50.31, 2, 0)
	MovementLoopAddLocation(NPC, 43.59, -10.61, 61.14, 2, 0)
	MovementLoopAddLocation(NPC, 47.33, -10.7, 73.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.12, -10.7, 57.96, 2, 0)
	MovementLoopAddLocation(NPC, 81.23, -10.7, 42.87, 2, 0)
	MovementLoopAddLocation(NPC, 91.83, -10.7, 33.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.55, -10.7, 39.67, 2, 0)
	MovementLoopAddLocation(NPC, 72.93, -10.7, 40.54, 2, 0)
	MovementLoopAddLocation(NPC, 60.3, -10.73, 40.21, 2, 0)
	MovementLoopAddLocation(NPC, 42.82, -11.77, 45.11, 2, 0)
	MovementLoopAddLocation(NPC, 32.15, -12.5, 47.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.29, -10.85, 43.55, 2, 0)
	MovementLoopAddLocation(NPC, 51.69, -10.7, 37.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.15, -10.7, 37.81, 2, 0)
	MovementLoopAddLocation(NPC, -7.13, -12.13, 35.88, 2, 0)
	MovementLoopAddLocation(NPC, -19.49, -12.46, 33.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.14, -12.37, 30.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.82, -12.6, 35.29, 2, 0)
	MovementLoopAddLocation(NPC, -8.26, -11.86, 44.05, 2, 0)
	MovementLoopAddLocation(NPC, 1.31, -12.17, 49.76, 2, 0)
	MovementLoopAddLocation(NPC, 5.26, -12.4, 55.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.99, -12.78, 49.03, 2, 0)
	MovementLoopAddLocation(NPC, 14.09, -12.22, 35.89, 2, 0)
	MovementLoopAddLocation(NPC, 24.11, -11.73, 27.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.05, -11.92, 49.17, 2, 0)
	MovementLoopAddLocation(NPC, 26.89, -11.47, 61.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.82, -10.7, 65.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.31, -10.7, 53.81, 2, 0)
	MovementLoopAddLocation(NPC, 3.47, -12.23, 44.36, 2, 0)
	MovementLoopAddLocation(NPC, -9.07, -13.11, 37, 2, 0)
	MovementLoopAddLocation(NPC, -19.19, -12.91, 31.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.06, -13.05, 32.48, 2, 0)
end

