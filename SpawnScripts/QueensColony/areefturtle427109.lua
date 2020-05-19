--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427109.lua
	Script Purpose	:	Waypoint Path for areefturtle427109.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:48:21 
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
	MovementLoopAddLocation(NPC, 32.35, -13.75, 40.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.46, -13.63, 44.01, 2, 0)
	MovementLoopAddLocation(NPC, 16.55, -13.7, 44.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.76, -13.3, 40.76, 2, 0)
	MovementLoopAddLocation(NPC, 22.29, -12.92, 36.19, 2, 0)
	MovementLoopAddLocation(NPC, 28.6, -12.31, 24.02, 2, 0)
	MovementLoopAddLocation(NPC, 33.02, -12.24, 11.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.52, -12.46, 14.14, 2, 0)
	MovementLoopAddLocation(NPC, 43.25, -12.09, 18.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.46, -11.97, 15.79, 2, 0)
	MovementLoopAddLocation(NPC, 71.74, -12.2, 14.94, 2, 0)
	MovementLoopAddLocation(NPC, 74.55, -12.29, 14.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.17, -12.15, 12.98, 2, 0)
	MovementLoopAddLocation(NPC, 85.86, -12.04, 10.08, 2, 0)
	MovementLoopAddLocation(NPC, 95.61, -11.87, 3.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.57, -12.53, 6.22, 2, 0)
	MovementLoopAddLocation(NPC, 79.5, -12.87, 8.54, 2, 0)
	MovementLoopAddLocation(NPC, 72.42, -12.78, 13.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.12, -11.24, 22.59, 2, 0)
	MovementLoopAddLocation(NPC, 51.29, -11.14, 25.96, 2, 0)
	MovementLoopAddLocation(NPC, 45.95, -11.64, 28.37, 2, 0)
	MovementLoopAddLocation(NPC, 35.52, -12.69, 35.5, 2, 0)
	MovementLoopAddLocation(NPC, 29.33, -13.27, 41.17, 2, 0)
	MovementLoopAddLocation(NPC, 22.25, -13.35, 44.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.72, -13.48, 43.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.46, -13.68, 42.69, 2, 0)
end

