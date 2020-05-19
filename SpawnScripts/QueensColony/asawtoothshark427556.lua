--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427556.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427556.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:14:50 
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
	MovementLoopAddLocation(NPC, -37.61, -10.7, -70.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.98, -10.7, -65.31, 2, 0)
	MovementLoopAddLocation(NPC, -39.49, -10.7, -8.65, 2, 0)
	MovementLoopAddLocation(NPC, -38.56, -10.7, 1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.49, -10.7, 13.16, 2, 0)
	MovementLoopAddLocation(NPC, -38.98, -12.75, 22.26, 2, 0)
	MovementLoopAddLocation(NPC, -36.61, -13.2, 26.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.34, -13.06, 21.58, 2, 0)
	MovementLoopAddLocation(NPC, -26.42, -12.89, 16.26, 2, 0)
	MovementLoopAddLocation(NPC, -19.7, -12.32, 4.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.96, -11.48, 7.74, 2, 0)
	MovementLoopAddLocation(NPC, -32.44, -11.26, 8.12, 2, 0)
	MovementLoopAddLocation(NPC, -38, -11.22, 8.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.59, -11.76, 16.07, 2, 0)
	MovementLoopAddLocation(NPC, -32.71, -12.57, 21.88, 2, 0)
	MovementLoopAddLocation(NPC, -33.28, -13.32, 26.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.26, -13.61, 33.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.58, -12.39, 23.71, 2, 0)
	MovementLoopAddLocation(NPC, -38.68, -11.39, 15.92, 2, 0)
	MovementLoopAddLocation(NPC, -40.26, -10.7, 6.64, 2, 0)
	MovementLoopAddLocation(NPC, -40.11, -10.7, -4.08, 2, 0)
	MovementLoopAddLocation(NPC, -43.41, -10.7, -17.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.1, -10.7, -50.77, 2, 0)
	MovementLoopAddLocation(NPC, -44.21, -11.45, -57.72, 2, 0)
	MovementLoopAddLocation(NPC, -36.66, -11.97, -77.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.87, -11.84, -64.14, 2, 0)
	MovementLoopAddLocation(NPC, -44.91, -11.19, -58.67, 2, math.random(10, 20))
end

