--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427056.lua
	Script Purpose	:	Waypoint Path for areefturtle427056.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:14:31 
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
	MovementLoopAddLocation(NPC, 70.73, -11.69, -72.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.53, -11.74, -62.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.43, -11.3, -47.64, 2, 0)
	MovementLoopAddLocation(NPC, 76.25, -11.13, -36.81, 2, 0)
	MovementLoopAddLocation(NPC, 92.4, -12.7, -19.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.8, -11.27, -32.19, 2, 0)
	MovementLoopAddLocation(NPC, 84.99, -10.76, -45.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.99, -11.74, -37.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.82, -11.84, -39.8, 2, 0)
	MovementLoopAddLocation(NPC, 71.58, -11.49, -45.13, 2, 0)
	MovementLoopAddLocation(NPC, 57.1, -10.63, -48.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.6, -11, -56.66, 2, 0)
	MovementLoopAddLocation(NPC, 53.51, -11.04, -59.5, 2, 0)
	MovementLoopAddLocation(NPC, 47.1, -10.61, -65.78, 2, 0)
	MovementLoopAddLocation(NPC, 43.26, -11.18, -72.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.67, -11.18, -52.38, 2, 0)
	MovementLoopAddLocation(NPC, 69.84, -11.22, -49.04, 2, 0)
	MovementLoopAddLocation(NPC, 80.6, -12.56, -39.46, 2, 0)
	MovementLoopAddLocation(NPC, 85.27, -12.7, -33.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.15, -10.58, -43.5, 2, 0)
	MovementLoopAddLocation(NPC, 75.62, -10.52, -50.03, 2, 0)
	MovementLoopAddLocation(NPC, 73.38, -10.23, -57.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.66, -11.21, -66.6, 2, 0)
	MovementLoopAddLocation(NPC, 77.76, -11.84, -72.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.85, -11.84, -73.03, 2, 0)
	MovementLoopAddLocation(NPC, 44.4, -11.84, -74.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.27, -11.95, -73.63, 2, 0)
end

