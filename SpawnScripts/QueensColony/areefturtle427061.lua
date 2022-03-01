--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427061.lua
	Script Purpose	:	Waypoint Path for areefturtle427061.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:16:13 
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
	MovementLoopAddLocation(NPC, 73.16, -11.74, -74.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.05, -12, -81.42, 2, 0)
	MovementLoopAddLocation(NPC, 38.78, -11.76, -83.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.5, -11.86, -67.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.8, -11.83, -65.37, 2, 0)
	MovementLoopAddLocation(NPC, 56.02, -11.73, -60.03, 2, 0)
	MovementLoopAddLocation(NPC, 63.84, -11.59, -52.63, 2, 0)
	MovementLoopAddLocation(NPC, 67.58, -11.29, -48.58, 2, 0)
	MovementLoopAddLocation(NPC, 76.62, -11.11, -36.34, 2, 0)
	MovementLoopAddLocation(NPC, 90.01, -12.35, -21.73, 2, 0)
	MovementLoopAddLocation(NPC, 93.99, -12.19, -15.12, 2, 0)
	MovementLoopAddLocation(NPC, 96.93, -11.75, -12.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.52, -12.19, -16.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.34, -12.71, -43.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 91.8, -12.77, -35.02, 2, 0)
	MovementLoopAddLocation(NPC, 100.29, -13, -29.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 97.34, -12.28, -30.58, 2, 0)
	MovementLoopAddLocation(NPC, 89.89, -11.83, -30.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.4, -12.34, -34, 2, 0)
	MovementLoopAddLocation(NPC, 78.23, -12.51, -44.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.72, -12.94, -34.57, 2, 0)
	MovementLoopAddLocation(NPC, 101.92, -12.73, -30.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 100.44, -12.92, -24.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85, -12.34, -34.27, 2, 0)
	MovementLoopAddLocation(NPC, 76.65, -11.81, -35.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.31, -10.31, -45.66, 2, 0)
	MovementLoopAddLocation(NPC, 73.97, -10.24, -55.31, 2, 0)
end

