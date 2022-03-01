--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428543.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428543.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:22:20 
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
	MovementLoopAddLocation(NPC, -14.45, -13.29, 32.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -9.6, -11.96, 46.46, 2, 0)
	MovementLoopAddLocation(NPC, -3.53, -11.99, 54.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -4.63, -12.36, 41.11, 2, 0)
	MovementLoopAddLocation(NPC, -6.26, -12.32, 35.04, 2, 0)
	MovementLoopAddLocation(NPC, -11.64, -12.41, 27.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.88, -12.87, 31.66, 2, 0)
	MovementLoopAddLocation(NPC, 9.95, -13.54, 32.95, 2, 0)
	MovementLoopAddLocation(NPC, 14.73, -13.86, 31.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.22, -12.95, 37.31, 2, 0)
	MovementLoopAddLocation(NPC, 0, -12.21, 42.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.33, -12.15, 34.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.57, -12.18, 37.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.54, -12.27, 44.92, 2, 0)
	MovementLoopAddLocation(NPC, 16.99, -11.27, 69.98, 2, 0)
	MovementLoopAddLocation(NPC, 15.26, -10.59, 74.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.65, -10.54, 59.78, 2, 0)
	MovementLoopAddLocation(NPC, -4.64, -12.1, 45.93, 2, 0)
	MovementLoopAddLocation(NPC, -8.66, -12.71, 40.42, 2, 0)
end


