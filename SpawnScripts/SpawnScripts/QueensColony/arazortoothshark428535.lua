--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428535.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428535.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:27:08 
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
	MovementLoopAddLocation(NPC, 40.12, -13.72, 15.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57, -12.63, 14.76, 2, 0)
	MovementLoopAddLocation(NPC, 69.02, -12.45, 15.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.58, -12.68, 15.93, 2, 0)
	MovementLoopAddLocation(NPC, 46.38, -12.81, 20.7, 2, 0)
	MovementLoopAddLocation(NPC, 38.57, -13.17, 24.86, 2, 0)
	MovementLoopAddLocation(NPC, 36.26, -13.65, 26, 2, 0)
	MovementLoopAddLocation(NPC, 31.92, -13.66, 27.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.29, -12.29, 27.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.5, -12.52, 28.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.22, -13.13, 37.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.03, -12.92, 18.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.06, -12.47, 24.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.57, -11.3, 30.78, 2, 0)
	MovementLoopAddLocation(NPC, 46.51, -11.08, 36.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.6, -11.77, 29.43, 2, 0)
	MovementLoopAddLocation(NPC, 41.69, -13.05, 21.4, 2, 0)
end


