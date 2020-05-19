--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427059.lua
	Script Purpose	:	Waypoint Path for areefturtle427059.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:34 
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
	MovementLoopAddLocation(NPC, 54.18, -11.8, -74.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.53, -12, -51.02, 2, 0)
	MovementLoopAddLocation(NPC, 75.66, -11.84, -47.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.89, -11.7, -45.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.25, -11.34, -48.18, 2, 0)
	MovementLoopAddLocation(NPC, 61.48, -10.65, -49.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.2, -11.42, -47.98, 2, 0)
	MovementLoopAddLocation(NPC, 94.16, -12.09, -40.27, 2, 0)
	MovementLoopAddLocation(NPC, 101.12, -12.23, -36.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.59, -11.79, -21.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.98, -12.73, -31.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.58, -12.34, -34.6, 2, 0)
	MovementLoopAddLocation(NPC, 80.14, -11.86, -35.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.49, -12.16, -43.37, 2, 0)
	MovementLoopAddLocation(NPC, 65.93, -11.87, -56.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.64, -11.6, -51.04, 2, 0)
	MovementLoopAddLocation(NPC, 68.21, -11.17, -45.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.93, -11.82, -31.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.06, -11.7, -31.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.58, -10.15, -37.63, 2, 0)
	MovementLoopAddLocation(NPC, 63.25, -10.25, -56.68, 2, 0)
	MovementLoopAddLocation(NPC, 56.46, -11.59, -67.41, 2, 0)
end

