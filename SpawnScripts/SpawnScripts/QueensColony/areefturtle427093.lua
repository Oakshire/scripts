--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427093.lua
	Script Purpose	:	Waypoint Path for areefturtle427093.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:25:25 
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
	MovementLoopAddLocation(NPC, 12.53, -10.54, 71.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.85, -11.11, 64.51, 2, 0)
	MovementLoopAddLocation(NPC, 23.08, -12.3, 52.68, 2, 0)
	MovementLoopAddLocation(NPC, 27.48, -12.66, 44.86, 2, 0)
	MovementLoopAddLocation(NPC, 31.58, -12.74, 33.2, 2, 0)
	MovementLoopAddLocation(NPC, 36.8, -12.77, 25.31, 2, 0)
	MovementLoopAddLocation(NPC, 39.5, -12.39, 18.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.24, -12.08, 16.05, 2, 0)
	MovementLoopAddLocation(NPC, 65.34, -11.57, 9.2, 2, 0)
	MovementLoopAddLocation(NPC, 70.17, -11.8, 8.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.15, -12.36, 7.08, 2, 0)
	MovementLoopAddLocation(NPC, 79.5, -12.27, 6.12, 2, 0)
	MovementLoopAddLocation(NPC, 100.17, -10.68, -4.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.98, -10.32, 13.04, 2, 0)
	MovementLoopAddLocation(NPC, 85.5, -10.2, 25.81, 2, 0)
	MovementLoopAddLocation(NPC, 80.77, -10.2, 34.44, 2, 0)
	MovementLoopAddLocation(NPC, 76.21, -10.23, 45.13, 2, 0)
	MovementLoopAddLocation(NPC, 66.43, -10.56, 59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.07, -10.69, 58.03, 2, 0)
	MovementLoopAddLocation(NPC, -2.43, -11.29, 59.93, 2, 0)
	MovementLoopAddLocation(NPC, -5.85, -11.4, 59.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.08, -11.39, 58.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.12, -11.33, 55.43, 2, 0)
	MovementLoopAddLocation(NPC, -4.02, -11.64, 51.8, 2, 0)
	MovementLoopAddLocation(NPC, -1.17, -12.08, 47.36, 2, 0)
	MovementLoopAddLocation(NPC, 2.19, -12.46, 43.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.98, -11.26, 56.23, 2, 0)
end

