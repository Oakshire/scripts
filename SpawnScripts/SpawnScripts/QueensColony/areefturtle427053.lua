--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427053.lua
	Script Purpose	:	Waypoint Path for areefturtle427053.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:13:32 
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
	MovementLoopAddLocation(NPC, 92.41, -12.75, -21.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 91.83, -12.87, -23.99, 2, 0)
	MovementLoopAddLocation(NPC, 84.51, -12.38, -33.37, 2, 0)
	MovementLoopAddLocation(NPC, 82.65, -11.83, -37.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.76, -11.49, -39.58, 2, 0)
	MovementLoopAddLocation(NPC, 68.4, -11.11, -43.85, 2, 0)
	MovementLoopAddLocation(NPC, 63.72, -10.7, -45.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.91, -11.03, -44.05, 2, 0)
	MovementLoopAddLocation(NPC, 84.7, -11.31, -43.97, 2, 0)
	MovementLoopAddLocation(NPC, 92.24, -12.7, -41.65, 2, 0)
	MovementLoopAddLocation(NPC, 97.07, -12.4, -37.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96.88, -12.74, -25.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.03, -11.82, -35.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.42, -11.44, -40.35, 2, 0)
	MovementLoopAddLocation(NPC, 79.94, -10.5, -44.56, 2, 0)
	MovementLoopAddLocation(NPC, 75.14, -10.23, -53.4, 2, 0)
	MovementLoopAddLocation(NPC, 74.32, -10.49, -59.73, 2, 0)
	MovementLoopAddLocation(NPC, 71.74, -10.72, -67.09, 2, 0)
	MovementLoopAddLocation(NPC, 71.17, -10.18, -82.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.73, -11.31, -68.79, 2, 0)
	MovementLoopAddLocation(NPC, 49.29, -11.7, -66.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.1, -11.78, -72.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.94, -11.38, -61.23, 2, 0)
	MovementLoopAddLocation(NPC, 75.44, -10.49, -52.86, 2, 0)
	MovementLoopAddLocation(NPC, 78.9, -10.36, -46.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.47, -11.69, -33.91, 2, 0)
	MovementLoopAddLocation(NPC, 81.51, -11.88, -31.02, 2, 0)
	MovementLoopAddLocation(NPC, 89.62, -12.64, -23.25, 2, 0)
end

