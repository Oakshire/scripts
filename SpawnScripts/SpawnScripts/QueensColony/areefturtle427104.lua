--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427104.lua
	Script Purpose	:	Waypoint Path for areefturtle427104.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:22:06 
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
	MovementLoopAddLocation(NPC, -21.3, -14.67, 37.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.02, -13.93, 38.52, 2, 0)
	MovementLoopAddLocation(NPC, -2, -13.26, 39.94, 2, 0)
	MovementLoopAddLocation(NPC, 24.44, -13.65, 44.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.6, -10.28, 39.21, 2, 0)
	MovementLoopAddLocation(NPC, 48.74, -10.52, 36.49, 2, 0)
	MovementLoopAddLocation(NPC, 58.46, -11.47, 25.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.45, -11.94, 17.26, 2, 0)
	MovementLoopAddLocation(NPC, 62.21, -12.78, 10.39, 2, 0)
	MovementLoopAddLocation(NPC, 65.54, -14.72, 2.63, 2, 0)
	MovementLoopAddLocation(NPC, 68.07, -15.68, -0.68, 2, 0)
	MovementLoopAddLocation(NPC, 70.77, -15.77, -3.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.5, -13.78, 2.97, 2, 0)
	MovementLoopAddLocation(NPC, 84.47, -13.09, 6.98, 2, 0)
	MovementLoopAddLocation(NPC, 91.07, -12.83, 11.95, 2, 0)
	MovementLoopAddLocation(NPC, 95.59, -12.83, 16.81, 2, 0)
	MovementLoopAddLocation(NPC, 101.17, -12.91, 21.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 86.04, -12.19, 16.08, 2, 0)
	MovementLoopAddLocation(NPC, 80.14, -12.56, 12.99, 2, 0)
	MovementLoopAddLocation(NPC, 73.27, -12.97, 8.63, 2, 0)
	MovementLoopAddLocation(NPC, 68.55, -13.3, 6.59, 2, 0)
	MovementLoopAddLocation(NPC, 56.96, -13.86, 7.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.87, -13.65, 2.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.54, -12.56, 10.19, 2, 0)
	MovementLoopAddLocation(NPC, 56.88, -11.3, 24.06, 2, 0)
	MovementLoopAddLocation(NPC, 51.21, -11, 34.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.01, -11.28, 31.38, 2, 0)
	MovementLoopAddLocation(NPC, 44.97, -11.85, 26.72, 2, 0)
	MovementLoopAddLocation(NPC, 42.58, -12.71, 23.72, 2, 0)
	MovementLoopAddLocation(NPC, 40.05, -13.01, 21.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.76, -13.52, 29.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.14, -13.24, 31.73, 2, 0)
	MovementLoopAddLocation(NPC, 1.26, -13.26, 32.35, 2, 0)
	MovementLoopAddLocation(NPC, -18.14, -14.98, 34.98, 2, 0)
end

