--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427441.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427441.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:20:48 
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
	MovementLoopAddLocation(NPC, 59.17, -11.81, 55.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.76, -11.56, 50.61, 2, 0)
	MovementLoopAddLocation(NPC, 22.65, -13.43, 44.19, 2, 0)
	MovementLoopAddLocation(NPC, 18.23, -13.67, 44.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.84, -13.12, 35.22, 2, 0)
	MovementLoopAddLocation(NPC, 44.83, -12.43, 21.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.09, -12.21, 30.4, 2, 0)
	MovementLoopAddLocation(NPC, 39.32, -11.55, 55.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.05, -11.64, 53.78, 2, 0)
	MovementLoopAddLocation(NPC, 72.68, -11.89, 56.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.6, -12.65, 45.65, 2, 0)
	MovementLoopAddLocation(NPC, 65.8, -12.96, 36.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.5, -11.19, 52.15, 2, 0)
	MovementLoopAddLocation(NPC, 69.01, -11.15, 67.72, 2, 0)
	MovementLoopAddLocation(NPC, 67.59, -11.31, 78.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.2, -10.65, 69.9, 2, 0)
	MovementLoopAddLocation(NPC, 20.51, -10.7, 55.93, 2, 0)
	MovementLoopAddLocation(NPC, 11.93, -10.7, 52.03, 2, 0)
	MovementLoopAddLocation(NPC, -5.86, -13.03, 40.03, 2, 0)
	MovementLoopAddLocation(NPC, -10.43, -13.54, 33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -21.28, -13.18, 33.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.54, -12.79, 25.27, 2, 0)
	MovementLoopAddLocation(NPC, 11.89, -12.6, 19.49, 2, 0)
	MovementLoopAddLocation(NPC, 19.76, -12.64, 18.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.7, -11.87, 22.52, 2, 0)
	MovementLoopAddLocation(NPC, 30.95, -11.63, 29.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.1, -12.28, 45.09, 2, 0)
	MovementLoopAddLocation(NPC, 34.69, -12.11, 54.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.88, -13.26, 48.06, 2, 0)
	MovementLoopAddLocation(NPC, 19.45, -13.9, 45.37, 2, 0)
	MovementLoopAddLocation(NPC, 14.41, -14.15, 41.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.05, -13.09, 33.58, 2, 0)
	MovementLoopAddLocation(NPC, -5.39, -13.32, 29.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.08, -13.84, 40.13, 2, 0)
	MovementLoopAddLocation(NPC, 22.06, -13.73, 41.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.1, -13.36, 40.3, 2, 0)
	MovementLoopAddLocation(NPC, 44.83, -12.65, 21.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.59, -12.34, 32.84, 2, 0)
	MovementLoopAddLocation(NPC, 37.48, -11.9, 56.72, 2, math.random(10, 20))
end

