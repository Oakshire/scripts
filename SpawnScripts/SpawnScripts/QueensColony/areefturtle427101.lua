--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427101.lua
	Script Purpose	:	Waypoint Path for areefturtle427101.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:20:58 
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
	MovementLoopAddLocation(NPC, 66.35, -12.79, 18.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.69, -11.91, 22.32, 2, 0)
	MovementLoopAddLocation(NPC, 53.05, -11.69, 24.86, 2, 0)
	MovementLoopAddLocation(NPC, 41.89, -12.23, 28.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.69, -13.04, 34.05, 2, 0)
	MovementLoopAddLocation(NPC, 32.95, -13.6, 36.68, 2, 0)
	MovementLoopAddLocation(NPC, 30.18, -13.89, 41.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.52, -10.63, 51.35, 2, 0)
	MovementLoopAddLocation(NPC, 22.96, -10.2, 60.7, 2, 0)
	MovementLoopAddLocation(NPC, 19.57, -10.97, 70.51, 2, 0)
	MovementLoopAddLocation(NPC, 21.21, -10.25, 77.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.14, -10.58, 66.17, 2, 0)
	MovementLoopAddLocation(NPC, 16.35, -12.15, 36.79, 2, 0)
	MovementLoopAddLocation(NPC, 15.43, -12.29, 27.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.92, -12.57, 22.25, 2, 0)
	MovementLoopAddLocation(NPC, 28.1, -12.67, 15.98, 2, 0)
	MovementLoopAddLocation(NPC, 31.83, -12.94, 11.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.47, -13.08, 18.31, 2, 0)
	MovementLoopAddLocation(NPC, 16.58, -14.02, 37.68, 2, 0)
	MovementLoopAddLocation(NPC, 15.75, -14.68, 43.55, 2, 0)
	MovementLoopAddLocation(NPC, 14.24, -14.48, 47.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.72, -13.54, 43.05, 2, 0)
	MovementLoopAddLocation(NPC, 44.23, -11.28, 41.1, 2, 0)
	MovementLoopAddLocation(NPC, 53.31, -11.3, 40.41, 2, 0)
	MovementLoopAddLocation(NPC, 56.85, -11.78, 40.07, 2, 0)
	MovementLoopAddLocation(NPC, 59.84, -11.98, 38.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.15, -11.86, 32.5, 2, 0)
	MovementLoopAddLocation(NPC, 62.68, -12.19, 27.82, 2, 0)
end

