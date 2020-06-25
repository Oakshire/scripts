--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427051.lua
	Script Purpose	:	Waypoint Path for areefturtle427051.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:12:50 
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
	MovementLoopAddLocation(NPC, 73.29, -11.77, -62.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.06, -11.81, -60.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.45, -11.74, -82.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.09, -11.67, -71.46, 2, 0)
	MovementLoopAddLocation(NPC, 53.8, -10.66, -57.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.05, -10.67, -54.88, 2, 0)
	MovementLoopAddLocation(NPC, 78.67, -10.59, -46.26, 2, 0)
	MovementLoopAddLocation(NPC, 87.4, -11.25, -43.03, 2, 0)
	MovementLoopAddLocation(NPC, 94.63, -11.8, -39.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.57, -12.23, -43.9, 2, 0)
	MovementLoopAddLocation(NPC, 68.28, -11.77, -49.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.07, -11.3, -44.43, 2, 0)
	MovementLoopAddLocation(NPC, 75.31, -11.16, -39.98, 2, 0)
	MovementLoopAddLocation(NPC, 77.77, -11.41, -36.28, 2, 0)
	MovementLoopAddLocation(NPC, 79.41, -11.58, -33.1, 2, 0)
	MovementLoopAddLocation(NPC, 91.83, -12.12, -23.95, 2, 0)
	MovementLoopAddLocation(NPC, 92.31, -11.95, -20.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.22, -12.01, -23.81, 2, 0)
	MovementLoopAddLocation(NPC, 79.06, -11.35, -31.92, 2, 0)
	MovementLoopAddLocation(NPC, 74.59, -10.27, -37.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.89, -11.5, -37.05, 2, 0)
	MovementLoopAddLocation(NPC, 82.25, -11.95, -35.17, 2, 0)
	MovementLoopAddLocation(NPC, 85.1, -12.12, -31.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.51, -11.5, -39.71, 2, 0)
	MovementLoopAddLocation(NPC, 79.77, -10.46, -44.32, 2, 0)
	MovementLoopAddLocation(NPC, 75.77, -10.13, -52.7, 2, 0)
	MovementLoopAddLocation(NPC, 74.7, -11.22, -58.47, 2, 0)
end

