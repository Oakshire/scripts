--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427404.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427404.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:18:35 
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
	MovementLoopAddLocation(NPC, 44.98, -10.75, -68.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.47, -11.79, -78.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.99, -11.83, -74.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.62, -11.85, -74.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.65, -10.54, -56.1, 2, 0)
	MovementLoopAddLocation(NPC, 75.59, -10.84, -49.73, 2, 0)
	MovementLoopAddLocation(NPC, 79.83, -10.96, -46.53, 2, 0)
	MovementLoopAddLocation(NPC, 84.92, -11.19, -45.01, 2, 0)
	MovementLoopAddLocation(NPC, 89.76, -11.79, -43.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.63, -12.01, -39.97, 2, 0)
	MovementLoopAddLocation(NPC, 87.52, -12.27, -32.35, 2, 0)
	MovementLoopAddLocation(NPC, 82.86, -12.23, -11.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.58, -12.26, -20.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.45, -11.9, -41.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 86.87, -12.37, -31.67, 2, 0)
	MovementLoopAddLocation(NPC, 84.88, -11.75, -27.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 98.81, -11.4, -21.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.34, -11.22, -35.5, 2, 0)
	MovementLoopAddLocation(NPC, 78.06, -11.22, -36.8, 2, 0)
	MovementLoopAddLocation(NPC, 75.37, -11.54, -40.74, 2, 0)
	MovementLoopAddLocation(NPC, 67.89, -11.32, -48.08, 2, 0)
	MovementLoopAddLocation(NPC, 64.18, -11.22, -52.71, 2, 0)
	MovementLoopAddLocation(NPC, 62.37, -11.22, -55.97, 2, 0)
	MovementLoopAddLocation(NPC, 59.38, -11.24, -59.57, 2, 0)
	MovementLoopAddLocation(NPC, 56.34, -11.64, -62.13, 2, math.random(10, 20))
end

