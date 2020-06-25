--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425542.lua
	Script Purpose	:	Waypoint Path for ashoalglider425542.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:48:24 
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
	MovementLoopAddLocation(NPC, 35.99, -12.51, 46.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.99, -12.18, 32.67, 2, 0)
	MovementLoopAddLocation(NPC, 13.3, -12.42, 19.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.8, -12.71, 24.91, 2, 0)
	MovementLoopAddLocation(NPC, 23.28, -13.23, 33.06, 2, 0)
	MovementLoopAddLocation(NPC, 25.74, -13.29, 37.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.1, -12.47, 51.59, 2, 0)
	MovementLoopAddLocation(NPC, 16.55, -11.06, 71.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.03, -10.7, 64.63, 2, 0)
	MovementLoopAddLocation(NPC, 45.79, -10.7, 40.68, 2, 0)
	MovementLoopAddLocation(NPC, 63.85, -10.66, 21.38, 2, 0)
	MovementLoopAddLocation(NPC, 81.01, -11.77, 13.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.49, -11.96, 25.5, 2, 0)
	MovementLoopAddLocation(NPC, 75.49, -12.65, 31.97, 2, 0)
	MovementLoopAddLocation(NPC, 73.16, -12.67, 35.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.93, -11.07, 36.08, 2, 0)
	MovementLoopAddLocation(NPC, 21.01, -11.87, 34.36, 2, 0)
	MovementLoopAddLocation(NPC, 8.55, -11.84, 31.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.22, -12.07, 31.78, 2, 0)
	MovementLoopAddLocation(NPC, -11.16, -12.03, 35.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.72, -12.43, 50.27, 2, 0)
	MovementLoopAddLocation(NPC, 17.82, -12.47, 60.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.25, -12.77, 50.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.78, -12.23, 41, 2, 0)
	MovementLoopAddLocation(NPC, 41.31, -12.37, 39.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.01, -10.7, 34.87, 2, 0)
	MovementLoopAddLocation(NPC, 54.69, -10.7, 30.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.71, -10.7, 36.34, 2, 0)
	MovementLoopAddLocation(NPC, 42.65, -10.7, 39.11, 2, 0)
	MovementLoopAddLocation(NPC, 38.15, -12.36, 45.14, 2, 0)
end


