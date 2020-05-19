--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428538.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428538.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:20:30 
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
	MovementLoopAddLocation(NPC, 72.93, -12.21, 31.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.99, -12.06, 37.29, 2, 0)
	MovementLoopAddLocation(NPC, 63.48, -11.59, 45.51, 2, 0)
	MovementLoopAddLocation(NPC, 48.82, -11.06, 60.05, 2, 0)
	MovementLoopAddLocation(NPC, 40.02, -10.7, 66.18, 2, 0)
	MovementLoopAddLocation(NPC, 29.18, -10.7, 77.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.12, -11.16, 65.24, 2, 0)
	MovementLoopAddLocation(NPC, 58.37, -11.21, 59.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.75, -11.56, 52.4, 2, 0)
	MovementLoopAddLocation(NPC, 66.78, -11.95, 43.65, 2, 0)
	MovementLoopAddLocation(NPC, 72.19, -12.25, 35.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.94, -11.97, 41.06, 2, 0)
	MovementLoopAddLocation(NPC, 73.4, -12.02, 59.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.67, -10.7, 47, 2, 0)
	MovementLoopAddLocation(NPC, 76.55, -10.7, 37.41, 2, 0)
	MovementLoopAddLocation(NPC, 76.53, -11.79, 24.96, 2, 0)
	MovementLoopAddLocation(NPC, 78.44, -12.08, 20.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.21, -10.7, 39.3, 2, 0)
	MovementLoopAddLocation(NPC, 67.64, -10.7, 49.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.35, -10.7, 44.94, 2, 0)
	MovementLoopAddLocation(NPC, 72.07, -11.96, 37.9, 2, 0)
end


