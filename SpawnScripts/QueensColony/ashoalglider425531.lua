--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425531.lua
	Script Purpose	:	Waypoint Path for ashoalglider425531.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:20:42 
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
	MovementLoopAddLocation(NPC, 56.08, -12.45, 56.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.6, -11.95, 48.78, 2, 0)
	MovementLoopAddLocation(NPC, 77.38, -12.32, 44.87, 2, 0)
	MovementLoopAddLocation(NPC, 80.12, -12.53, 42.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.68, -10.72, 37.76, 2, 0)
	MovementLoopAddLocation(NPC, 49.59, -10.7, 37.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.76, -11.33, 38.49, 2, 0)
	MovementLoopAddLocation(NPC, 74.3, -11.63, 41.71, 2, 0)
	MovementLoopAddLocation(NPC, 78.56, -12.14, 44.61, 2, 0)
	MovementLoopAddLocation(NPC, 81.87, -12.23, 48.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.6, -11.02, 53.9, 2, 0)
	MovementLoopAddLocation(NPC, 57.7, -10.7, 56.75, 2, 0)
	MovementLoopAddLocation(NPC, 46.08, -10.7, 62.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.03, -10.7, 63.7, 2, 0)
	MovementLoopAddLocation(NPC, 32.39, -10.7, 69.77, 2, 0)
	MovementLoopAddLocation(NPC, 21.98, -10.7, 74.24, 2, 0)
	MovementLoopAddLocation(NPC, 16.46, -10.7, 74.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.46, -10.7, 65.06, 2, 0)
	MovementLoopAddLocation(NPC, 31.19, -10.7, 49.55, 2, 0)
	MovementLoopAddLocation(NPC, 38.81, -10.7, 33.55, 2, 0)
	MovementLoopAddLocation(NPC, 41.42, -11.3, 27, 2, 0)
	MovementLoopAddLocation(NPC, 42.66, -12.5, 20.15, 2, 0)
	MovementLoopAddLocation(NPC, 41.59, -12.7, 16.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.6, -12.32, 19.5, 2, 0)
	MovementLoopAddLocation(NPC, 20.13, -12.52, 21.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.71, -11.69, 22.16, 2, 0)
	MovementLoopAddLocation(NPC, 52.91, -11.41, 21.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.55, -11.38, 28.12, 2, 0)
	MovementLoopAddLocation(NPC, 62.08, -11.79, 32.55, 2, 0)
	MovementLoopAddLocation(NPC, 66.1, -12.89, 35.64, 2, 0)
	MovementLoopAddLocation(NPC, 70.16, -12.98, 37.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.58, -12.73, 41.91, 2, 0)
	MovementLoopAddLocation(NPC, 61.22, -12.06, 47.69, 2, 0)
	MovementLoopAddLocation(NPC, 57.32, -12.28, 53.53, 2, 0)
end

