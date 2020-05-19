--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428554.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428554.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:52:03 
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
	MovementLoopAddLocation(NPC, 63.12, -12.05, 27.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.59, -12.15, 22.08, 2, 0)
	MovementLoopAddLocation(NPC, 55.66, -12.52, 17.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.81, -12.69, 17.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.16, -11.69, 20.69, 2, 0)
	MovementLoopAddLocation(NPC, 52.29, -11.24, 23.86, 2, 0)
	MovementLoopAddLocation(NPC, 47.57, -11.37, 27.62, 2, 0)
	MovementLoopAddLocation(NPC, 33.09, -12.3, 40.39, 2, 0)
	MovementLoopAddLocation(NPC, 26.32, -12.26, 44.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.3, -12.68, 26.31, 2, 0)
	MovementLoopAddLocation(NPC, 43.38, -12.6, 21.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.96, -12.25, 22.32, 2, 0)
	MovementLoopAddLocation(NPC, 54.01, -11.35, 25.07, 2, 0)
	MovementLoopAddLocation(NPC, 58.07, -11.31, 30.64, 2, 0)
	MovementLoopAddLocation(NPC, 60.06, -11.65, 34.06, 2, 0)
	MovementLoopAddLocation(NPC, 62.67, -12.73, 39.96, 2, 0)
	MovementLoopAddLocation(NPC, 64.84, -12.99, 44.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.11, -12.71, 42.52, 2, 0)
	MovementLoopAddLocation(NPC, 79.32, -11.32, 40.13, 2, 0)
	MovementLoopAddLocation(NPC, 97.53, -11.22, 32.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.19, -11.38, 27.33, 2, 0)
	MovementLoopAddLocation(NPC, 79.34, -11.81, 25.69, 2, 0)
	MovementLoopAddLocation(NPC, 73.35, -12.17, 25.19, 2, math.random(10, 20))
end

