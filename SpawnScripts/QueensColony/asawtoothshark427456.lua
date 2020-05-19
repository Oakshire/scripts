--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427456.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427456.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:52:00 
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
	MovementLoopAddLocation(NPC, 49.75, -11.16, 39.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.31, -11.01, 32.25, 2, 0)
	MovementLoopAddLocation(NPC, 59.33, -11.77, 25.58, 2, 0)
	MovementLoopAddLocation(NPC, 64.39, -12.08, 20.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.9, -12.02, 19.82, 2, 0)
	MovementLoopAddLocation(NPC, 75.14, -11.69, 20.32, 2, 0)
	MovementLoopAddLocation(NPC, 85.06, -10.7, 26.58, 2, 0)
	MovementLoopAddLocation(NPC, 96.7, -10.7, 31.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.41, -10.7, 36.77, 2, 0)
	MovementLoopAddLocation(NPC, 81.05, -10.7, 46.35, 2, 0)
	MovementLoopAddLocation(NPC, 59.57, -11.09, 76.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.68, -11.37, 88.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.44, -10.7, 78.35, 2, 0)
	MovementLoopAddLocation(NPC, 56.69, -10.68, 29.95, 2, 0)
	MovementLoopAddLocation(NPC, 56.76, -12.86, 14.17, 2, 0)
	MovementLoopAddLocation(NPC, 56.81, -13.16, 10.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.53, -11.95, 17.49, 2, 0)
	MovementLoopAddLocation(NPC, 66.87, -12.62, 34.87, 2, 0)
	MovementLoopAddLocation(NPC, 66.09, -12.8, 44.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.09, -12.23, 44.69, 2, 0)
	MovementLoopAddLocation(NPC, 49.38, -11.94, 45.81, 2, 0)
	MovementLoopAddLocation(NPC, 39.71, -12.39, 47.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.55, -12, 43.66, 2, 0)
	MovementLoopAddLocation(NPC, 27.92, -11.99, 37.82, 2, 0)
	MovementLoopAddLocation(NPC, 24.34, -12.16, 29.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.81, -12.4, 44.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.91, -12.74, 42.48, 2, 0)
	MovementLoopAddLocation(NPC, 24.73, -13.21, 37.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.88, -13.11, 30.67, 2, 0)
	MovementLoopAddLocation(NPC, 24.27, -12.38, 27.9, 2, 0)
	MovementLoopAddLocation(NPC, 20.84, -12.56, 23.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.25, -12.21, 25.9, 2, 0)
end

