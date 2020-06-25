--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427058.lua
	Script Purpose	:	Waypoint Path for areefturtle427058.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:14 
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
	MovementLoopAddLocation(NPC, 87.66, -12.73, -27.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.14, -12.73, -33.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96.31, -12.4, -37.12, 2, 0)
	MovementLoopAddLocation(NPC, 99.63, -11.99, -39.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.8, -11.77, -23.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.91, -11.25, -37.33, 2, 0)
	MovementLoopAddLocation(NPC, 76.33, -11.5, -39.33, 2, 0)
	MovementLoopAddLocation(NPC, 74.19, -11.73, -42.66, 2, 0)
	MovementLoopAddLocation(NPC, 72.2, -11.14, -43.39, 2, 0)
	MovementLoopAddLocation(NPC, 69.89, -11.04, -44.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.52, -10.96, -51.43, 2, 0)
	MovementLoopAddLocation(NPC, 45.58, -10.68, -67.62, 2, 0)
	MovementLoopAddLocation(NPC, 41.59, -10.42, -71.93, 2, 0)
	MovementLoopAddLocation(NPC, 28.42, -10.75, -84.01, 2, 0)
	MovementLoopAddLocation(NPC, 15.41, -11.33, -95.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.3, -11.8, -57.66, 2, 0)
	MovementLoopAddLocation(NPC, 76.89, -11.94, -44.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 99.41, -11.79, -29.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.72, -12.98, -25.16, 2, 0)
	MovementLoopAddLocation(NPC, 92.03, -12.87, -23.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 97.12, -11.4, -20.87, 2, 0)
	MovementLoopAddLocation(NPC, 99.59, -11.19, -18.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.7, -12.56, -24.78, 2, 0)
end

