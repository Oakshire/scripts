--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425784.lua
	Script Purpose	:	Waypoint Path for atriggerfish425784.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:10 
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
	MovementLoopAddLocation(NPC, 82.6, -12.08, -43.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.75, -12.27, -45.28, 2, 0)
	MovementLoopAddLocation(NPC, 72.52, -12.19, -51.6, 2, 0)
	MovementLoopAddLocation(NPC, 70.47, -12.11, -54.15, 2, 0)
	MovementLoopAddLocation(NPC, 58.77, -11.94, -74.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.86, -11.46, -68.65, 2, 0)
	MovementLoopAddLocation(NPC, 46.65, -11.04, -64.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.22, -11.49, -67.37, 2, 0)
	MovementLoopAddLocation(NPC, 50.98, -11.78, -68.24, 2, 0)
	MovementLoopAddLocation(NPC, 52.67, -11.96, -67.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.99, -11.94, -57.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.07, -12, -51.96, 2, 0)
	MovementLoopAddLocation(NPC, 70.29, -12.03, -47.56, 2, 0)
	MovementLoopAddLocation(NPC, 76.88, -12.41, -42.8, 2, 0)
	MovementLoopAddLocation(NPC, 79.2, -12.7, -40.26, 2, 0)
	MovementLoopAddLocation(NPC, 80.44, -12.96, -35.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.4, -12.98, -39.22, 2, 0)
	MovementLoopAddLocation(NPC, 77, -12.41, -43.07, 2, 0)
	MovementLoopAddLocation(NPC, 63.6, -11.29, -52.46, 2, 0)
	MovementLoopAddLocation(NPC, 57.98, -11.18, -56.08, 2, 0)
	MovementLoopAddLocation(NPC, 52.01, -11.06, -61.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.26, -11.05, -48.58, 2, 0)
	MovementLoopAddLocation(NPC, 78.2, -11.12, -44.95, 2, 0)
	MovementLoopAddLocation(NPC, 88.35, -11.52, -39.94, 2, 0)
	MovementLoopAddLocation(NPC, 92.39, -11.97, -37.6, 2, 0)
	MovementLoopAddLocation(NPC, 94.61, -12.1, -34.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90, -11.96, -29.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.09, -12.4, -36.04, 2, 0)
	MovementLoopAddLocation(NPC, 86.24, -12.43, -39.52, 2, 0)
	MovementLoopAddLocation(NPC, 84.64, -12.08, -42.08, 2, 0)
end
