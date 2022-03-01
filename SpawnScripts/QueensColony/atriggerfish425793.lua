--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425793.lua
	Script Purpose	:	Waypoint Path for atriggerfish425793.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:18:19 
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
	MovementLoopAddLocation(NPC, 31.87, -12.02, -83.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.06, -12.05, -70.94, 2, 0)
	MovementLoopAddLocation(NPC, 52.66, -12.08, -64.47, 2, 0)
	MovementLoopAddLocation(NPC, 54.07, -12.04, -60.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.59, -12.19, -62.25, 2, 0)
	MovementLoopAddLocation(NPC, 52.74, -12.27, -63.95, 2, 0)
	MovementLoopAddLocation(NPC, 51.97, -12.07, -64.95, 2, 0)
	MovementLoopAddLocation(NPC, 51.66, -12.03, -66.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.11, -11.16, -69.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.95, -11.03, -65.35, 2, 0)
	MovementLoopAddLocation(NPC, 70.56, -11.11, -48.39, 2, 0)
	MovementLoopAddLocation(NPC, 74.69, -11.99, -45.24, 2, 0)
	MovementLoopAddLocation(NPC, 85.22, -12.94, -41.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.71, -12.31, -42.24, 2, 0)
	MovementLoopAddLocation(NPC, 80.11, -10.55, -45.21, 2, 0)
	MovementLoopAddLocation(NPC, 76.65, -10.3, -52.4, 2, 0)
	MovementLoopAddLocation(NPC, 75.07, -10.3, -59.33, 2, 0)
	MovementLoopAddLocation(NPC, 74.93, -10.59, -66.22, 2, 0)
	MovementLoopAddLocation(NPC, 71.63, -11.79, -73.09, 2, 0)
	MovementLoopAddLocation(NPC, 68.1, -12.17, -76.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.68, -10.36, -55.73, 2, 0)
	MovementLoopAddLocation(NPC, 77.28, -10.13, -51.18, 2, 0)
	MovementLoopAddLocation(NPC, 79.54, -10.2, -48.06, 2, 0)
	MovementLoopAddLocation(NPC, 85.55, -11.78, -43.97, 2, 0)
	MovementLoopAddLocation(NPC, 87.33, -12.57, -42.91, 2, 0)
	MovementLoopAddLocation(NPC, 94.1, -12.68, -44.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.35, -12.83, -43.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.76, -12.3, -44.11, 2, 0)
	MovementLoopAddLocation(NPC, 67.36, -11.19, -45.88, 2, 0)
	MovementLoopAddLocation(NPC, 63.84, -11.01, -45.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.6, -12.83, -37.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.64, -12.49, -42.38, 2, 0)
	MovementLoopAddLocation(NPC, 61.11, -11.96, -64.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.41, -11.49, -75.14, 2, 0)
	MovementLoopAddLocation(NPC, 41.25, -11.23, -77.03, 2, 0)
	MovementLoopAddLocation(NPC, 38.19, -11.64, -80.5, 2, 0)
end

