--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427050.lua
	Script Purpose	:	Waypoint Path for areefturtle427050.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:12:31 
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
	MovementLoopAddLocation(NPC, 92.44, -12.73, -39.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.7, -11.77, -42.12, 2, 0)
	MovementLoopAddLocation(NPC, 85.42, -10.65, -44.05, 2, 0)
	MovementLoopAddLocation(NPC, 79.09, -10.34, -49.04, 2, 0)
	MovementLoopAddLocation(NPC, 75.61, -10.2, -52.93, 2, 0)
	MovementLoopAddLocation(NPC, 73.91, -11.51, -68.12, 2, 0)
	MovementLoopAddLocation(NPC, 73.28, -11.74, -74.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.96, -11.72, -76.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.6, -11.76, -73.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.14, -11.73, -59.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.25, -11.9, -48.23, 2, 0)
	MovementLoopAddLocation(NPC, 75.82, -11.75, -43.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 99.5, -12.74, -29.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.2, -12.36, -32.44, 2, 0)
	MovementLoopAddLocation(NPC, 73.16, -10.95, -39.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.23, -11.11, -38.21, 2, 0)
	MovementLoopAddLocation(NPC, 75.52, -10.63, -33.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.03, -11.28, -48.17, 2, 0)
	MovementLoopAddLocation(NPC, 71.62, -11.58, -51.62, 2, 0)
	MovementLoopAddLocation(NPC, 70.62, -11.75, -54.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.92, -11.37, -50.69, 2, 0)
	MovementLoopAddLocation(NPC, 75.81, -11.17, -49.37, 2, 0)
	MovementLoopAddLocation(NPC, 79.38, -10.98, -46.64, 2, 0)
	MovementLoopAddLocation(NPC, 101.97, -11.07, -37.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.2, -11.9, -31.57, 2, math.random(10, 20))
end

