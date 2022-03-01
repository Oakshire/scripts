--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427098.lua
	Script Purpose	:	Waypoint Path for areefturtle427098.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:27:41 
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
	MovementLoopAddLocation(NPC, -14.52, -12.25, 40.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.92, -12.81, 39.03, 2, 0)
	MovementLoopAddLocation(NPC, 18.77, -13.02, 36.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.8, -13.24, 35.85, 2, 0)
	MovementLoopAddLocation(NPC, -7.37, -14.07, 35.08, 2, 0)
	MovementLoopAddLocation(NPC, -14.07, -14.64, 34, 2, 0)
	MovementLoopAddLocation(NPC, -20.45, -14.4, 34.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.98, -13.9, 32.37, 2, 0)
	MovementLoopAddLocation(NPC, 2.25, -13.58, 29.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.45, -13.81, 31.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.07, -13.55, 20.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.55, -13.49, 25.51, 2, 0)
	MovementLoopAddLocation(NPC, 15.46, -13.23, 31.69, 2, 0)
	MovementLoopAddLocation(NPC, 10.77, -13.14, 39.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.65, -13.56, 40.17, 2, 0)
	MovementLoopAddLocation(NPC, -0.04, -13.53, 37.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.3, -12.38, 44.05, 2, 0)
	MovementLoopAddLocation(NPC, 11.13, -11.88, 45.87, 2, 0)
	MovementLoopAddLocation(NPC, 15.59, -11.53, 46.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.38, -11.15, 53.1, 2, 0)
	MovementLoopAddLocation(NPC, 34.45, -10.59, 82.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.07, -10.34, 75.68, 2, 0)
	MovementLoopAddLocation(NPC, 24.84, -10.29, 64.93, 2, 0)
	MovementLoopAddLocation(NPC, 19.42, -12.24, 54.93, 2, 0)
	MovementLoopAddLocation(NPC, 14.99, -13.15, 48.36, 2, 0)
	MovementLoopAddLocation(NPC, 11.72, -14.13, 44.43, 2, 0)
	MovementLoopAddLocation(NPC, 8.97, -14.52, 37.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.02, -13.47, 40.28, 2, 0)
end
