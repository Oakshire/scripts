--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427387.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427387.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:13:24 
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
	MovementLoopAddLocation(NPC, 37.15, -10.99, -74.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.45, -11.12, -76.6, 2, 0)
	MovementLoopAddLocation(NPC, 26.3, -11.01, -85.71, 2, 0)
	MovementLoopAddLocation(NPC, 21.52, -11.17, -92.57, 2, 0)
	MovementLoopAddLocation(NPC, 20.77, -10.81, -94.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.19, -11.25, -86.76, 2, 0)
	MovementLoopAddLocation(NPC, 52.37, -11.75, -64.77, 2, 0)
	MovementLoopAddLocation(NPC, 55.63, -11.73, -60.66, 2, 0)
	MovementLoopAddLocation(NPC, 65.55, -11.8, -51.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.05, -11.83, -41.37, 2, 0)
	MovementLoopAddLocation(NPC, 79.78, -11.9, -36.25, 2, 0)
	MovementLoopAddLocation(NPC, 91.84, -12.72, -24.07, 2, 0)
	MovementLoopAddLocation(NPC, 94.84, -12.82, -19.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.67, -11.7, -41.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.13, -10.7, -43.98, 2, 0)
	MovementLoopAddLocation(NPC, 77.92, -10.7, -48.69, 2, 0)
	MovementLoopAddLocation(NPC, 73.49, -10.7, -53.24, 2, 0)
	MovementLoopAddLocation(NPC, 56.44, -11.73, -75.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.37, -11.76, -70.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56, -11.81, -66.37, 2, 0)
	MovementLoopAddLocation(NPC, 54.56, -11.15, -58.85, 2, 0)
	MovementLoopAddLocation(NPC, 50.03, -10.53, -56.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.88, -11.59, -68.55, 2, 0)
	MovementLoopAddLocation(NPC, 42.91, -11.36, -72.92, 2, math.random(10, 20))
end


