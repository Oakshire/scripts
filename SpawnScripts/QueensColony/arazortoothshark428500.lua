--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428500.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428500.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:32:07 
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
	MovementLoopAddLocation(NPC, 58.7, -12.65, -12.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.45, -14.75, -9.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.73, -14.35, -17.41, 2, 0)
	MovementLoopAddLocation(NPC, 28.29, -12.32, -28.44, 2, 0)
	MovementLoopAddLocation(NPC, 28.14, -11.94, -31.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.93, -12.7, -21.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.58, -12.2, -25.41, 2, 0)
	MovementLoopAddLocation(NPC, 6.24, -11.73, -42.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.07, -11.78, -39.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.4, -11.9, -34.56, 2, 0)
	MovementLoopAddLocation(NPC, 28.08, -11.79, -31.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.36, -12.52, -25.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.89, -12.69, -12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.55, -13.13, -10.86, 2, 0)
	MovementLoopAddLocation(NPC, 48.22, -13.14, -10.54, 2, 0)
end


