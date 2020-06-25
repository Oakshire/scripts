--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428512.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428512.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:37:04 
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
	MovementLoopAddLocation(NPC, 52.67, -11.64, -14.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.17, -11.89, -11.25, 2, 0)
	MovementLoopAddLocation(NPC, 44.86, -12.44, -8.28, 2, 0)
	MovementLoopAddLocation(NPC, 31.8, -12.69, -3.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.38, -13.72, -8.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.21, -13.25, -9.51, 2, 0)
	MovementLoopAddLocation(NPC, 33.93, -11.93, -9.49, 2, 0)
	MovementLoopAddLocation(NPC, 30.46, -11.38, -5.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.43, -11.82, -9.17, 2, 0)
	MovementLoopAddLocation(NPC, 70.68, -12.04, -9.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.24, -12.37, -12.58, 2, 0)
	MovementLoopAddLocation(NPC, 59.08, -12.53, -14.55, 2, 0)
	MovementLoopAddLocation(NPC, 40.44, -12.4, -28.66, 2, 0)
	MovementLoopAddLocation(NPC, 27.18, -11.65, -41.52, 2, 0)
	MovementLoopAddLocation(NPC, 17.04, -12.14, -52.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.3, -12.57, -54.04, 2, 0)
	MovementLoopAddLocation(NPC, 9.37, -12.45, -54.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.93, -12.14, -48.46, 2, 0)
	MovementLoopAddLocation(NPC, 20.93, -13.17, -25.02, 2, 0)
	MovementLoopAddLocation(NPC, 22.07, -14.27, -21.66, 2, 0)
	MovementLoopAddLocation(NPC, 23.09, -14.72, -15.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.91, -14.56, -18.68, 2, 0)
	MovementLoopAddLocation(NPC, 45.72, -13.64, -20.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.96, -14.14, -16.5, 2, 0)
	MovementLoopAddLocation(NPC, 33.34, -13.64, 0.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.97, -12.44, -3.67, 2, 0)
end

