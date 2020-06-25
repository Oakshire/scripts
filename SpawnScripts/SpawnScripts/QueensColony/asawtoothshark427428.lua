--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427428.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427428.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:43:22 
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
	MovementLoopAddLocation(NPC, 26.19, -12.87, 9.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.83, -12.71, 1.15, 2, 0)
	MovementLoopAddLocation(NPC, 47.9, -13.01, -2.58, 2, 0)
	MovementLoopAddLocation(NPC, 56.62, -13.52, -4.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.67, -13.1, -5.28, 2, 0)
	MovementLoopAddLocation(NPC, 39.11, -13.22, -4.25, 2, 0)
	MovementLoopAddLocation(NPC, 24.2, -12.83, -7.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.32, -12.58, -2.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.1, -12.8, -10.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.77, -13.31, -2.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.5, -13.36, -27.02, 2, 0)
	MovementLoopAddLocation(NPC, 21.59, -12.28, -40.37, 2, 0)
	MovementLoopAddLocation(NPC, 10.81, -11.28, -54.91, 2, 0)
	MovementLoopAddLocation(NPC, 0.31, -11.28, -65.31, 2, 0)
	MovementLoopAddLocation(NPC, -3.74, -10.7, -72.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.48, -10.7, -50.2, 2, 0)
	MovementLoopAddLocation(NPC, 26.51, -10.7, -36.66, 2, 0)
	MovementLoopAddLocation(NPC, 50.7, -11.28, -9.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.8, -12, -3.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.33, -12.29, 0.32, 2, 0)
end


