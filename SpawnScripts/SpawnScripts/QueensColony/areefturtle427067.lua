--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427067.lua
	Script Purpose	:	Waypoint Path for areefturtle427067.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:18:24 
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
	MovementLoopAddLocation(NPC, 42.21, -11.78, -74.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.03, -11.2, -74.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.29, -11.17, -72.36, 2, 0)
	MovementLoopAddLocation(NPC, 46.74, -10.88, -68.51, 2, 0)
	MovementLoopAddLocation(NPC, 55.27, -10.98, -59.9, 2, 0)
	MovementLoopAddLocation(NPC, 70.71, -11.09, -48.81, 2, 0)
	MovementLoopAddLocation(NPC, 75.29, -11.25, -44.88, 2, 0)
	MovementLoopAddLocation(NPC, 80.56, -12.23, -40.65, 2, 0)
	MovementLoopAddLocation(NPC, 85.15, -12.75, -37.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.89, -12.42, -40.19, 2, 0)
	MovementLoopAddLocation(NPC, 77.73, -12.26, -43.47, 2, 0)
	MovementLoopAddLocation(NPC, 61.3, -11.75, -61.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.23, -11.72, -56.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.03, -11.8, -53.19, 2, 0)
	MovementLoopAddLocation(NPC, 76.21, -12.09, -43.77, 2, 0)
	MovementLoopAddLocation(NPC, 87.54, -12.67, -33.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.7, -11.4, -39.04, 2, 0)
	MovementLoopAddLocation(NPC, 69.28, -11.05, -43.27, 2, 0)
	MovementLoopAddLocation(NPC, 65.12, -10.57, -44.83, 2, 0)
	MovementLoopAddLocation(NPC, 55.42, -10.6, -47.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.68, -11.14, -49.92, 2, 0)
	MovementLoopAddLocation(NPC, 78.3, -11.08, -49.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.05, -11.28, -46.37, 2, 0)
	MovementLoopAddLocation(NPC, 81.79, -11.47, -42.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 99.64, -11.8, -39.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96.97, -11.81, -17.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.21, -12.6, -21.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.79, -11.47, -31.26, 2, 0)
	MovementLoopAddLocation(NPC, 74.41, -10.41, -38, 2, 0)
	MovementLoopAddLocation(NPC, 69.76, -10.3, -44.32, 2, 0)
	MovementLoopAddLocation(NPC, 65.51, -10.98, -53.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.17, -11.17, -58.19, 2, 0)
	MovementLoopAddLocation(NPC, 50.7, -11.04, -68.32, 2, 0)
	MovementLoopAddLocation(NPC, 46.62, -11.46, -71.68, 2, 0)
end

