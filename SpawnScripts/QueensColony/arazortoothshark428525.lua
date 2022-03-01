--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428525.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428525.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:42:26 
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
	MovementLoopAddLocation(NPC, 25.59, -14.7, -9.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.69, -13.8, -13.27, 2, 0)
	MovementLoopAddLocation(NPC, 39.39, -13.8, -13.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.39, -12.58, -10.54, 2, 0)
	MovementLoopAddLocation(NPC, 19.52, -11.79, -8.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.6, -11.79, -9.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.97, -12, -15.88, 2, 0)
	MovementLoopAddLocation(NPC, 21.15, -12, -28.19, 2, 0)
	MovementLoopAddLocation(NPC, 25.62, -11.98, -33.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.8, -13.49, -28.03, 2, 0)
	MovementLoopAddLocation(NPC, 30.54, -13.84, -25.92, 2, 0)
	MovementLoopAddLocation(NPC, 32.82, -13.84, -22.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.07, -14.78, -20.22, 2, 0)
	MovementLoopAddLocation(NPC, 44.54, -13.36, -11.8, 2, 0)
	MovementLoopAddLocation(NPC, 51.9, -12.96, -7.79, 2, 0)
	MovementLoopAddLocation(NPC, 56.09, -12.31, -6.29, 2, 0)
	MovementLoopAddLocation(NPC, 62.4, -11.99, -4.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.41, -12.25, -6.04, 2, 0)
	MovementLoopAddLocation(NPC, 42.33, -12.4, -16.41, 2, 0)
	MovementLoopAddLocation(NPC, 37.64, -12.86, -24.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.25, -12.28, -26.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.36, -11.76, -15.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.05, -11.91, -19.92, 2, 0)
	MovementLoopAddLocation(NPC, 3.54, -11.74, -28.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.23, -12.17, -23.17, 2, 0)
	MovementLoopAddLocation(NPC, 18.27, -13.3, -18.83, 2, 0)
	MovementLoopAddLocation(NPC, 23.17, -14.7, -13.94, 2, 0)
end


