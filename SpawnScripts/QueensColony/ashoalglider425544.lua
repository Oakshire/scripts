--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425544.lua
	Script Purpose	:	Waypoint Path for ashoalglider425544.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:49:28 
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
	MovementLoopAddLocation(NPC, 82.69, -11.62, 51.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.27, -12.13, 49.67, 2, 0)
	MovementLoopAddLocation(NPC, 70.13, -12.12, 47.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.33, -12.08, 46.23, 2, 0)
	MovementLoopAddLocation(NPC, 66.92, -12.06, 43.03, 2, 0)
	MovementLoopAddLocation(NPC, 65.7, -12.2, 24.12, 2, 0)
	MovementLoopAddLocation(NPC, 68.26, -12.45, 17.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.33, -12.38, 15.32, 2, 0)
	MovementLoopAddLocation(NPC, 74.18, -12.41, 12.4, 2, 0)
	MovementLoopAddLocation(NPC, 79.58, -12.54, 7.27, 2, 0)
	MovementLoopAddLocation(NPC, 85.79, -12.44, 3.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.79, -12.45, 16.11, 2, 0)
	MovementLoopAddLocation(NPC, 80.27, -12.56, 20.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.28, -11.34, 23.75, 2, 0)
	MovementLoopAddLocation(NPC, 50.06, -10.7, 30.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.51, -11.42, 36.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.73, -10.71, 29.45, 2, 0)
	MovementLoopAddLocation(NPC, 52.07, -11, 23.65, 2, 0)
	MovementLoopAddLocation(NPC, 42.82, -12.93, 15.12, 2, 0)
	MovementLoopAddLocation(NPC, 40.85, -13.25, 11.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.93, -11.15, 23.39, 2, 0)
	MovementLoopAddLocation(NPC, 57.48, -11.03, 26.5, 2, 0)
	MovementLoopAddLocation(NPC, 63.83, -11.99, 30.97, 2, 0)
	MovementLoopAddLocation(NPC, 65.62, -12.25, 33.16, 2, 0)
	MovementLoopAddLocation(NPC, 66.77, -12.43, 37.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.55, -11.79, 30.88, 2, 0)
	MovementLoopAddLocation(NPC, 78.08, -11.21, 25.92, 2, 0)
	MovementLoopAddLocation(NPC, 84.34, -11.6, 22.36, 2, 0)
	MovementLoopAddLocation(NPC, 92.22, -12.14, 20.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.77, -12.28, -15.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.78, -12.58, -2.48, 2, 0)
	MovementLoopAddLocation(NPC, 91.21, -12.77, 8.73, 2, 0)
	MovementLoopAddLocation(NPC, 89.6, -12.49, 13.3, 2, 0)
	MovementLoopAddLocation(NPC, 87.02, -12.34, 17.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.63, -11.66, 28.17, 2, 0)
	MovementLoopAddLocation(NPC, 84.18, -11.5, 37.98, 2, 0)
end

