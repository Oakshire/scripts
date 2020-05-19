--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428508.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428508.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:36:02 
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
	MovementLoopAddLocation(NPC, 41.27, -12.89, -10.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.1, -12.75, -17.84, 2, 0)
	MovementLoopAddLocation(NPC, 47.13, -11.89, -29.52, 2, 0)
	MovementLoopAddLocation(NPC, 49.73, -11.91, -40.44, 2, 0)
	MovementLoopAddLocation(NPC, 49.54, -12, -45.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.92, -11.87, -40.46, 2, 0)
	MovementLoopAddLocation(NPC, 17.5, -11.95, -19.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.55, -12.83, -3.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.97, -13.35, 0.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.98, -13.68, -16.23, 2, 0)
	MovementLoopAddLocation(NPC, 26.55, -12.7, -27.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.15, -13.44, -9.58, 2, 0)
	MovementLoopAddLocation(NPC, 17.38, -12.78, -1.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.09, -12.11, -22.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.91, -12.31, -21.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.35, -11.45, -19.5, 2, 0)
	MovementLoopAddLocation(NPC, 70.48, -11.89, -16.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.19, -12.26, -15.9, 2, 0)
end


