--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425538.lua
	Script Purpose	:	Waypoint Path for glider_023_16.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:26:12 
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
	MovementLoopAddLocation(NPC, 96.82, -11.5, -3.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.5, -11.5, 5.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 93.96, -12.24, 14.36, 2, 0)
	MovementLoopAddLocation(NPC, 94.45, -12.44, 18.73, 2, 0)
	MovementLoopAddLocation(NPC, 97.68, -12.38, 27.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.42, -12.61, 11.65, 2, 0)
	MovementLoopAddLocation(NPC, 80.6, -12.38, 2.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.09, -11.92, 10.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.6, -10.7, 18.38, 2, 0)
	MovementLoopAddLocation(NPC, 69.91, -10.7, 24.47, 2, 0)
	MovementLoopAddLocation(NPC, 66.31, -12.5, 32.9, 2, 0)
	MovementLoopAddLocation(NPC, 65.99, -12.79, 37.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.2, -11.78, 25.32, 2, 0)
	MovementLoopAddLocation(NPC, 60.19, -12.33, 13.79, 2, 0)
	MovementLoopAddLocation(NPC, 56.68, -12.71, 9.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.81, -12.85, 15.11, 2, 0)
	MovementLoopAddLocation(NPC, 36.79, -13.39, 20.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.39, -11.83, 16.38, 2, 0)
	MovementLoopAddLocation(NPC, 74.52, -11.35, 12.28, 2, 0)
	MovementLoopAddLocation(NPC, 81.34, -11.06, 12.15, 2, 0)
	MovementLoopAddLocation(NPC, 87.57, -11.9, 10.84, 2, 0)
	MovementLoopAddLocation(NPC, 93.86, -12.43, 6.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.75, -11.31, 3.01, 2, 0)
end


