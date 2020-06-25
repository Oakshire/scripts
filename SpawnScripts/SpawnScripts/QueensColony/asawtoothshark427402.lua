--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427402.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427402.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:17:52 
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
	MovementLoopAddLocation(NPC, 97.18, -11.78, -23.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 98.79, -11.94, -41.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 92.73, -11.93, -17.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 91.15, -12.1, -23.03, 2, 0)
	MovementLoopAddLocation(NPC, 86.71, -12.21, -30.63, 2, 0)
	MovementLoopAddLocation(NPC, 82.56, -12.48, -36.29, 2, 0)
	MovementLoopAddLocation(NPC, 77.26, -12.33, -44.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.27, -11.53, -49.11, 2, 0)
	MovementLoopAddLocation(NPC, 72.74, -12.19, -57.41, 2, 0)
	MovementLoopAddLocation(NPC, 73.79, -12.31, -66.1, 2, 0)
	MovementLoopAddLocation(NPC, 75.87, -12.11, -71.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.09, -11.95, -68.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.31, -10.7, -57.62, 2, 0)
	MovementLoopAddLocation(NPC, 76.13, -10.7, -52.14, 2, 0)
	MovementLoopAddLocation(NPC, 80.95, -10.57, -44.48, 2, 0)
	MovementLoopAddLocation(NPC, 94.09, -12.12, -30.67, 2, 0)
	MovementLoopAddLocation(NPC, 98.53, -11.86, -20.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.76, -11.77, -27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.86, -11.37, -32.12, 2, 0)
	MovementLoopAddLocation(NPC, 74.51, -10.7, -38.03, 2, 0)
	MovementLoopAddLocation(NPC, 70.89, -10.73, -46.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.09, -11.24, -40.44, 2, 0)
	MovementLoopAddLocation(NPC, 77.46, -11.16, -37.05, 2, 0)
end


