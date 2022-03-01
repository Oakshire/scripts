--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425547.lua
	Script Purpose	:	Waypoint Path for ashoalglider425547.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:51:54 
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
	MovementLoopAddLocation(NPC, 42.31, -11.53, 37.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.64, -11.49, 58.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.02, -11.43, 51.04, 2, 0)
	MovementLoopAddLocation(NPC, -5.57, -12.83, 41.81, 2, 0)
	MovementLoopAddLocation(NPC, -11.34, -13.82, 30.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.85, -11.85, 35.69, 2, 0)
	MovementLoopAddLocation(NPC, 6.96, -11.3, 36.88, 2, 0)
	MovementLoopAddLocation(NPC, 16.34, -11.38, 36.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.38, -11.98, 40.6, 2, 0)
	MovementLoopAddLocation(NPC, 10.38, -13.3, 43.83, 2, 0)
	MovementLoopAddLocation(NPC, 8.21, -13.68, 46.26, 2, 0)
	MovementLoopAddLocation(NPC, 6.1, -13.53, 49.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.72, -12.4, 49.11, 2, 0)
	MovementLoopAddLocation(NPC, -2.76, -12.19, 50.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.46, -11.8, 54.76, 2, 0)
	MovementLoopAddLocation(NPC, 4.13, -11.64, 59.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.79, -11.19, 59.67, 2, 0)
	MovementLoopAddLocation(NPC, 22.46, -10.97, 59.8, 2, 0)
	MovementLoopAddLocation(NPC, 33.99, -11.21, 59.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.64, -11.42, 61.28, 2, 0)
	MovementLoopAddLocation(NPC, 14.93, -11.46, 64.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.64, -11.08, 60.79, 2, 0)
	MovementLoopAddLocation(NPC, 37.79, -11.02, 58.46, 2, 0)
	MovementLoopAddLocation(NPC, 46.75, -11.25, 57.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46, -10.73, 43.83, 2, 0)
	MovementLoopAddLocation(NPC, 41.4, -11.65, 30.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.25, -11.74, 41.48, 2, 0)
	MovementLoopAddLocation(NPC, 42.74, -11.46, 56.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.11, -11.48, 45.3, 2, 0)
end

