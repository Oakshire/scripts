--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428503.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428503.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:34:23 
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
	MovementLoopAddLocation(NPC, 37.82, -12.8, 4.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.89, -12.46, 0.65, 2, 0)
	MovementLoopAddLocation(NPC, 55.87, -12.28, -13.69, 2, 0)
	MovementLoopAddLocation(NPC, 58.96, -12.78, -17.93, 2, 0)
	MovementLoopAddLocation(NPC, 58.9, -12.78, -17.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.92, -12.6, -20.45, 2, 0)
	MovementLoopAddLocation(NPC, 37.9, -13.04, -25.67, 2, 0)
	MovementLoopAddLocation(NPC, 34.24, -13.19, -27.12, 2, 0)
	MovementLoopAddLocation(NPC, 25.22, -13.63, -28.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.87, -14.16, -15.71, 2, 0)
	MovementLoopAddLocation(NPC, 28.43, -13.8, -4.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.47, -13.62, -12.38, 2, 0)
	MovementLoopAddLocation(NPC, 31.25, -13.12, -20.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.59, -12.74, -20.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.47, -13.66, -28.94, 2, 0)
	MovementLoopAddLocation(NPC, 32.74, -13.39, -31.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38, -12.34, -36.05, 2, 0)
	MovementLoopAddLocation(NPC, 44.64, -12.02, -40.13, 2, 0)
	MovementLoopAddLocation(NPC, 50.17, -12.52, -42.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.98, -11.82, -41.58, 2, 0)
	MovementLoopAddLocation(NPC, 38.87, -11.86, -33.05, 2, 0)
	MovementLoopAddLocation(NPC, 34.49, -12.23, -28.03, 2, 0)
	MovementLoopAddLocation(NPC, 22.73, -12.66, -17.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.37, -13.21, -16.13, 2, 0)
	MovementLoopAddLocation(NPC, 49.26, -12.82, -9.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.21, -12.48, -14.78, 2, 0)
	MovementLoopAddLocation(NPC, 14.15, -12.23, -16.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.97, -12.26, -16.56, 2, 0)
	MovementLoopAddLocation(NPC, 46.64, -12.02, -28.27, 2, 0)
	MovementLoopAddLocation(NPC, 46.62, -12.03, -28.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.77, -12.57, -16.59, 2, 0)
	MovementLoopAddLocation(NPC, 40.28, -12.23, -2.64, 2, 0)
end
