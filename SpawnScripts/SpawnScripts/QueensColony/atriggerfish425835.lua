--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425835.lua
	Script Purpose	:	Waypoint Path for atriggerfish425835.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:48:18 
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
	MovementLoopAddLocation(NPC, 42.75, -11.87, 43.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.99, -11.18, 45.22, 2, 0)
	MovementLoopAddLocation(NPC, 35.45, -10.53, 47.31, 2, 0)
	MovementLoopAddLocation(NPC, 25, -11.11, 49.82, 2, 0)
	MovementLoopAddLocation(NPC, 12.35, -12.54, 50.28, 2, 0)
	MovementLoopAddLocation(NPC, 9.75, -12.52, 49.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.39, -12.13, 56.82, 2, 0)
	MovementLoopAddLocation(NPC, 1.06, -11.36, 62.9, 2, 0)
	MovementLoopAddLocation(NPC, -3.31, -10.98, 68.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.66, -10.97, 76.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.98, -10.39, 73.2, 2, 0)
	MovementLoopAddLocation(NPC, 6.09, -11.49, 57.5, 2, 0)
	MovementLoopAddLocation(NPC, 1.79, -11.82, 54.16, 2, 0)
	MovementLoopAddLocation(NPC, -3.39, -11.81, 46.89, 2, 0)
	MovementLoopAddLocation(NPC, -6.41, -12.1, 43.52, 2, 0)
	MovementLoopAddLocation(NPC, -12.79, -13.36, 40.71, 2, 0)
	MovementLoopAddLocation(NPC, -16.13, -13.36, 41.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.52, -13.04, 42.04, 2, 0)
	MovementLoopAddLocation(NPC, 2.03, -13.42, 48.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.33, -12.71, 39.02, 2, 0)
	MovementLoopAddLocation(NPC, -10.52, -12.56, 33.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.9, -13.76, 35.49, 2, 0)
	MovementLoopAddLocation(NPC, 10.22, -14.19, 36.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.22, -13.36, 37.42, 2, 0)
	MovementLoopAddLocation(NPC, 30.35, -13.01, 39.9, 2, 0)
	MovementLoopAddLocation(NPC, 38.89, -12.19, 44.26, 2, 0)
	MovementLoopAddLocation(NPC, 41.14, -11.96, 44.25, 2, 0)
end

