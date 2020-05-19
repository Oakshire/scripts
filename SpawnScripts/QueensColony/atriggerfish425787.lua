--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425787.lua
	Script Purpose	:	Waypoint Path for atriggerfish425787.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:16:10 
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
	MovementLoopAddLocation(NPC, 61.1, -12, -76.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.61, -11.66, -79.74, 2, 0)
	MovementLoopAddLocation(NPC, 47.45, -11.29, -84.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.55, -11.43, -78.19, 2, 0)
	MovementLoopAddLocation(NPC, 66.1, -11.81, -66.86, 2, 0)
	MovementLoopAddLocation(NPC, 73.07, -12.11, -56.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.66, -11.98, -69.32, 2, 0)
	MovementLoopAddLocation(NPC, 43.76, -11.72, -71.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53, -12.09, -69.81, 2, 0)
	MovementLoopAddLocation(NPC, 59.76, -12.02, -70.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.64, -12.05, -74.36, 2, 0)
	MovementLoopAddLocation(NPC, 71.57, -11.93, -79.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.42, -11.97, -79.86, 2, 0)
	MovementLoopAddLocation(NPC, 56.33, -11.99, -80.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.31, -12.12, -70.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.97, -11.67, -65.02, 2, 0)
	MovementLoopAddLocation(NPC, 52.68, -11.29, -62.86, 2, 0)
	MovementLoopAddLocation(NPC, 46.8, -11.38, -47.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.93, -11.03, -56.45, 2, 0)
	MovementLoopAddLocation(NPC, 49.01, -11.04, -65.28, 2, 0)
	MovementLoopAddLocation(NPC, 42.01, -11.62, -82.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.19, -11.13, -59.79, 2, 0)
	MovementLoopAddLocation(NPC, 61.15, -10.99, -50.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.64, -11.6, -76.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.07, -11.62, -80.65, 2, 0)
	MovementLoopAddLocation(NPC, 49.5, -11.42, -83.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.47, -11.48, -76.81, 2, math.random(10, 20))
end
