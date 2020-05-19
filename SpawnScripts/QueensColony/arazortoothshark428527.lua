--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428527.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428527.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:43:26 
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
	MovementLoopAddLocation(NPC, 25.38, -12.74, 3.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.99, -12.81, -6.61, 2, 0)
	MovementLoopAddLocation(NPC, 27.61, -12.85, -14.31, 2, 0)
	MovementLoopAddLocation(NPC, 33.85, -12.52, -34.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.41, -13.59, -13.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.88, -13.85, -12.35, 2, 0)
	MovementLoopAddLocation(NPC, 45.84, -13.28, -12.18, 2, 0)
	MovementLoopAddLocation(NPC, 65.79, -12.29, -12.94, 2, 0)
	MovementLoopAddLocation(NPC, 69.82, -11.14, -14.63, 2, 0)
	MovementLoopAddLocation(NPC, 74.13, -11.05, -17.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.92, -11.52, -17.84, 2, 0)
	MovementLoopAddLocation(NPC, 21.63, -12.54, -20.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.06, -13.68, -22.99, 2, 0)
	MovementLoopAddLocation(NPC, 31.79, -13.79, -23.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.54, -12.14, -14.4, 2, 0)
	MovementLoopAddLocation(NPC, 47.45, -11.82, -12.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.11, -12.87, -19.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.83, -12.44, -4.35, 2, 0)
end


