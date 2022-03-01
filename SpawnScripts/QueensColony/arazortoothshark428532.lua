--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428532.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428532.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:25:38 
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
	MovementLoopAddLocation(NPC, 5.8, -11.78, 65.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.65, -11.23, 68.37, 2, 0)
	MovementLoopAddLocation(NPC, 26.14, -11.52, 70.95, 2, 0)
	MovementLoopAddLocation(NPC, 32.89, -11.72, 71.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.82, -12, 57.11, 2, 0)
	MovementLoopAddLocation(NPC, 17.72, -12.78, 49.6, 2, 0)
	MovementLoopAddLocation(NPC, 12.62, -13.12, 45.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.53, -13.19, 33.49, 2, 0)
	MovementLoopAddLocation(NPC, 32.95, -12.8, 31.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.24, -12.3, 38.72, 2, 0)
	MovementLoopAddLocation(NPC, 39.95, -11.75, 46.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.81, -12.01, 47.94, 2, 0)
	MovementLoopAddLocation(NPC, 59.21, -11.76, 53.09, 2, 0)
	MovementLoopAddLocation(NPC, 68.17, -11.89, 55.65, 2, 0)
	MovementLoopAddLocation(NPC, 73.11, -11.83, 58.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.7, -11.33, 45.48, 2, 0)
	MovementLoopAddLocation(NPC, 73.3, -13.31, 35.49, 2, 0)
	MovementLoopAddLocation(NPC, 73.32, -13.51, 30.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.13, -10.7, 31.07, 2, 0)
	MovementLoopAddLocation(NPC, 47.04, -10.64, 30.73, 2, 0)
	MovementLoopAddLocation(NPC, 38.66, -12.48, 32.35, 2, 0)
	MovementLoopAddLocation(NPC, 33.13, -12.98, 35.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.84, -13.28, 33.64, 2, 0)
	MovementLoopAddLocation(NPC, 0.56, -12.7, 30.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.83, -11.97, 58.5, 2, 0)
end

