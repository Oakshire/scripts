--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428548.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428548.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:48:47 
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
	MovementLoopAddLocation(NPC, 29.67, -12.33, 38.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.97, -12.14, 30.53, 2, 0)
	MovementLoopAddLocation(NPC, 36.73, -12.08, 23.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.38, -12.97, 12.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.16, -12.89, 12.05, 2, 0)
	MovementLoopAddLocation(NPC, 59.87, -12.27, 8.8, 2, 0)
	MovementLoopAddLocation(NPC, 64, -12.33, 8.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.24, -12.61, 8.08, 2, 0)
	MovementLoopAddLocation(NPC, 74.92, -12.72, 9.52, 2, 0)
	MovementLoopAddLocation(NPC, 86.58, -12.68, 20.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.29, -12.55, 12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 84.51, -11.64, 25.06, 2, 0)
	MovementLoopAddLocation(NPC, 84.36, -11.36, 39.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.43, -12.41, 40.03, 2, 0)
	MovementLoopAddLocation(NPC, 67.52, -12.81, 37.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.81, -12.41, 30.54, 2, 0)
	MovementLoopAddLocation(NPC, 73.42, -12.76, 27.92, 2, 0)
	MovementLoopAddLocation(NPC, 77.98, -12.83, 26.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.3, -11.74, 26.53, 2, 0)
	MovementLoopAddLocation(NPC, 63.4, -11.1, 28.83, 2, 0)
	MovementLoopAddLocation(NPC, 54.09, -11.04, 31.71, 2, 0)
	MovementLoopAddLocation(NPC, 39.55, -11.32, 35.18, 2, 0)
end


