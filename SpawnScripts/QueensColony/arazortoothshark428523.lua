--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428523.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428523.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:41:49 
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
	MovementLoopAddLocation(NPC, -5.1, -11.75, -50.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.99, -11.94, -41.23, 2, 0)
	MovementLoopAddLocation(NPC, 15.92, -11.22, -40.84, 2, 0)
	MovementLoopAddLocation(NPC, 23.36, -11.07, -41.17, 2, 0)
	MovementLoopAddLocation(NPC, 31.56, -10.7, -42.89, 2, 0)
	MovementLoopAddLocation(NPC, 41.06, -11.65, -46.6, 2, 0)
	MovementLoopAddLocation(NPC, 47.62, -11.89, -46.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.72, -11.26, -35.91, 2, 0)
	MovementLoopAddLocation(NPC, 43.83, -11.27, -28.84, 2, 0)
	MovementLoopAddLocation(NPC, 42.55, -11.73, -15.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.94, -12.47, -9.49, 2, 0)
	MovementLoopAddLocation(NPC, 45.65, -12.72, -0.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.45, -12.92, -11.23, 2, 0)
	MovementLoopAddLocation(NPC, 38.25, -12.6, -22.43, 2, 0)
	MovementLoopAddLocation(NPC, 35.61, -11.54, -39.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.95, -12.05, -30.81, 2, 0)
	MovementLoopAddLocation(NPC, 31.03, -13.8, -16.86, 2, 0)
	MovementLoopAddLocation(NPC, 27.1, -13.77, -6.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.16, -13.24, -14.19, 2, 0)
	MovementLoopAddLocation(NPC, 16.17, -12.42, -22.12, 2, 0)
	MovementLoopAddLocation(NPC, 2.98, -12.14, -38.97, 2, 0)
	MovementLoopAddLocation(NPC, -1.19, -11.98, -47.18, 2, 0)
end

