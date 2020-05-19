--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427436.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427436.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:27:06 
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
	MovementLoopAddLocation(NPC, 42.46, -11.8, 40.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.28, -12.34, 43.84, 2, 0)
	MovementLoopAddLocation(NPC, 22.38, -13.43, 47.49, 2, 0)
	MovementLoopAddLocation(NPC, 13.29, -13.62, 51.38, 2, 0)
	MovementLoopAddLocation(NPC, 11.13, -13.52, 53.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.47, -11.82, 46.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.05, -13.23, 18.9, 2, 0)
	MovementLoopAddLocation(NPC, 48.13, -12.16, 11.46, 2, 0)
	MovementLoopAddLocation(NPC, 63.59, -11.95, 1.38, 2, 0)
	MovementLoopAddLocation(NPC, 80.51, -12.5, -6.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 86.91, -12.43, -3.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.95, -13.07, 4.12, 2, 0)
	MovementLoopAddLocation(NPC, 76.48, -12.3, 24.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.76, -12.86, 18.86, 2, 0)
	MovementLoopAddLocation(NPC, 69.68, -12.92, 14.71, 2, 0)
	MovementLoopAddLocation(NPC, 62.56, -12.86, 12.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.93, -12.58, 15.95, 2, 0)
	MovementLoopAddLocation(NPC, 75.84, -13.56, 19.16, 2, 0)
	MovementLoopAddLocation(NPC, 76.91, -13.46, 22.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.34, -11.24, 26.25, 2, 0)
	MovementLoopAddLocation(NPC, 87.91, -10.7, 29.12, 2, 0)
	MovementLoopAddLocation(NPC, 91.78, -10.7, 33.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.86, -10.7, 36.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.21, -10.7, 34.16, 2, 0)
	MovementLoopAddLocation(NPC, 59.62, -11.07, 35.27, 2, 0)
	MovementLoopAddLocation(NPC, 47.24, -11.09, 38.01, 2, 0)
end


