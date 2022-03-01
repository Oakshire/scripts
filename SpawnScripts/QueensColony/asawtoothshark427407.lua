--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427407.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427407.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:28:35 
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
	MovementLoopAddLocation(NPC, 10.38, -11.83, -23.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.83, -12.19, -21.07, 2, 0)
	MovementLoopAddLocation(NPC, 37.41, -12.89, -14.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.24, -13.58, -11.59, 2, 0)
	MovementLoopAddLocation(NPC, 31.42, -14.54, -4.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.95, -14.56, -7.49, 2, 0)
	MovementLoopAddLocation(NPC, 39.81, -12.35, -25.56, 2, 0)
	MovementLoopAddLocation(NPC, 40.42, -11.9, -29.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.4, -12.07, -20.81, 2, 0)
	MovementLoopAddLocation(NPC, 33.33, -12.28, -8.54, 2, 0)
	MovementLoopAddLocation(NPC, 31.4, -12.54, 1.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.07, -12.63, -16.12, 2, 0)
	MovementLoopAddLocation(NPC, 34.42, -12.16, -26.6, 2, 0)
	MovementLoopAddLocation(NPC, 34.42, -11.84, -31.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.81, -13.9, -8.76, 2, 0)
	MovementLoopAddLocation(NPC, 40.69, -13.72, -1.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.07, -13.86, -6.36, 2, 0)
	MovementLoopAddLocation(NPC, 34.15, -12.79, -26.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.58, -12.18, -36.02, 2, 0)
	MovementLoopAddLocation(NPC, 27.91, -11.34, -44.21, 2, 0)
	MovementLoopAddLocation(NPC, 22.32, -10.66, -58.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.23, -10.7, -51.31, 2, 0)
	MovementLoopAddLocation(NPC, 30.16, -10.7, -15.94, 2, 0)
	MovementLoopAddLocation(NPC, 34.5, -11.78, -7.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.32, -12.24, -12.15, 2, 0)
	MovementLoopAddLocation(NPC, 31.2, -12.14, -23.38, 2, math.random(10, 20))
end

