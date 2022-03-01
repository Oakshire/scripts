--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427389.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427389.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:13:41 
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
	MovementLoopAddLocation(NPC, 90.68, -12.66, -23.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96.78, -12.77, -27.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.18, -12.39, -34.76, 2, 0)
	MovementLoopAddLocation(NPC, 78.58, -12.22, -41.65, 2, 0)
	MovementLoopAddLocation(NPC, 76.66, -12.1, -44.63, 2, 0)
	MovementLoopAddLocation(NPC, 73.36, -12.05, -48.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.02, -12.22, -43.46, 2, 0)
	MovementLoopAddLocation(NPC, 88.32, -12.31, -33.09, 2, 0)
	MovementLoopAddLocation(NPC, 94.62, -12.74, -27.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.66, -12.59, -35.17, 2, 0)
	MovementLoopAddLocation(NPC, 84.74, -11.75, -37.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.16, -11.33, -37.75, 2, 0)
	MovementLoopAddLocation(NPC, 73.01, -10.7, -38.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.69, -10.58, -43.28, 2, 0)
	MovementLoopAddLocation(NPC, 67.57, -11.63, -48.72, 2, 0)
	MovementLoopAddLocation(NPC, 65.07, -11.82, -50.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.26, -12.11, -48.81, 2, 0)
	MovementLoopAddLocation(NPC, 99.24, -12.7, -35.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.34, -12.77, -35.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.08, -12.8, -29.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96.7, -12.7, -33.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.91, -11.86, -29.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.16, -12.35, -24.22, 2, 0)
end

