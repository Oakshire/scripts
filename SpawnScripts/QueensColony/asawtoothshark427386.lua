--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427386.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427386.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:12:59 
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
	MovementLoopAddLocation(NPC, 59.65, -10.96, -49.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.61, -12.44, -39.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.64, -11.29, -45.1, 2, 0)
	MovementLoopAddLocation(NPC, 78.75, -11.18, -47.06, 2, 0)
	MovementLoopAddLocation(NPC, 76.6, -11.15, -48.57, 2, 0)
	MovementLoopAddLocation(NPC, 73.09, -11.5, -51, 2, 0)
	MovementLoopAddLocation(NPC, 68.67, -11.74, -55.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.79, -11.04, -46.69, 2, 0)
	MovementLoopAddLocation(NPC, 85.09, -11.27, -44.29, 2, 0)
	MovementLoopAddLocation(NPC, 94.05, -11.63, -42.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.54, -11.08, -44.24, 2, 0)
	MovementLoopAddLocation(NPC, 79.18, -10.7, -47.97, 2, 0)
	MovementLoopAddLocation(NPC, 73.1, -10.7, -55.77, 2, 0)
	MovementLoopAddLocation(NPC, 71.14, -11.63, -70.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.18, -11.62, -73.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.29, -11.01, -63.17, 2, 0)
	MovementLoopAddLocation(NPC, 75.28, -10.98, -51.86, 2, 0)
	MovementLoopAddLocation(NPC, 79.95, -10.61, -43.85, 2, 0)
	MovementLoopAddLocation(NPC, 87.38, -11.46, -40.43, 2, 0)
	MovementLoopAddLocation(NPC, 93.6, -12.11, -38.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.38, -12.35, -43.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.42, -12.16, -44.83, 2, 0)
	MovementLoopAddLocation(NPC, 70.15, -11.39, -47.78, 2, 0)
end


