--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428537.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428537.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:19:58 
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
	MovementLoopAddLocation(NPC, -10.6, -11.67, 34.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.38, -12.04, 34.31, 2, 0)
	MovementLoopAddLocation(NPC, 18.62, -13.4, 37.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.53, -11.58, 67.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.28, -11.93, 61.67, 2, 0)
	MovementLoopAddLocation(NPC, 23.82, -12.17, 49.41, 2, 0)
	MovementLoopAddLocation(NPC, 40.52, -12.25, 28.63, 2, 0)
	MovementLoopAddLocation(NPC, 44.75, -11.97, 22.32, 2, 0)
	MovementLoopAddLocation(NPC, 56.01, -12.5, 8.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.89, -12.76, 8.11, 2, 0)
	MovementLoopAddLocation(NPC, 79.32, -12.9, 6.64, 2, 0)
	MovementLoopAddLocation(NPC, 89.23, -12.66, 1.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.47, -11.5, 13.41, 2, 0)
	MovementLoopAddLocation(NPC, 99.86, -11.15, 19.19, 2, 0)
	MovementLoopAddLocation(NPC, 103.98, -10.62, 22.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.45, -10.7, 23.96, 2, 0)
	MovementLoopAddLocation(NPC, 46.37, -10.7, 23.22, 2, 0)
	MovementLoopAddLocation(NPC, 15.91, -13.46, 29.85, 2, 0)
	MovementLoopAddLocation(NPC, 7.82, -13.65, 32.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.36, -12.02, 33.62, 2, 0)
end


