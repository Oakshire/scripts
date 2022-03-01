--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428539.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428539.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:20:51 
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
	MovementLoopAddLocation(NPC, 66.11, -11.55, 55.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.68, -11.51, 51.42, 2, 0)
	MovementLoopAddLocation(NPC, 41.55, -12.23, 47.68, 2, 0)
	MovementLoopAddLocation(NPC, 32.29, -13.4, 44.24, 2, 0)
	MovementLoopAddLocation(NPC, 25.38, -13.59, 42.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.04, -12.8, 47.16, 2, 0)
	MovementLoopAddLocation(NPC, 2.71, -12.19, 51.81, 2, 0)
	MovementLoopAddLocation(NPC, -3.98, -11.58, 61.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.39, -11.96, 53.01, 2, 0)
	MovementLoopAddLocation(NPC, 17.02, -11.98, 37.34, 2, 0)
	MovementLoopAddLocation(NPC, 26.37, -12.15, 32.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.22, -13.06, 40.95, 2, 0)
	MovementLoopAddLocation(NPC, 22.34, -12.93, 45.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.87, -11.11, 28.22, 2, 0)
	MovementLoopAddLocation(NPC, 54.44, -11.06, 22.77, 2, 0)
	MovementLoopAddLocation(NPC, 63.03, -11.33, 17.9, 2, 0)
	MovementLoopAddLocation(NPC, 72.44, -12.07, 12.27, 2, 0)
	MovementLoopAddLocation(NPC, 78.46, -12.1, 7.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.9, -12.18, 12.79, 2, 0)
	MovementLoopAddLocation(NPC, 82.76, -12.36, 17.58, 2, 0)
	MovementLoopAddLocation(NPC, 95.9, -12.33, 27.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.68, -12.29, 37.2, 2, 0)
	MovementLoopAddLocation(NPC, 80.38, -12.07, 47.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.51, -11.57, 52.48, 2, 0)
end


