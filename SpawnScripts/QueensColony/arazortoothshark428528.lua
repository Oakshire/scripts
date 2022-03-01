--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428528.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428528.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:43:49 
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
	MovementLoopAddLocation(NPC, -1.73, -12.61, -45.5499, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.06, -12.04, -45.35, 2, 0)
	MovementLoopAddLocation(NPC, 8.01, -11.56, -43.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.13, -12.12, -48.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.14, -11.93, -51.9, 2, 0)
	MovementLoopAddLocation(NPC, 7.57, -12.66, -55.32, 2, 0)
	MovementLoopAddLocation(NPC, 10.53, -12.7, -55.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.15, -12.16, -50.6, 2, 0)
	MovementLoopAddLocation(NPC, 8.76, -11.87, -42.97, 2, 0)
	MovementLoopAddLocation(NPC, 8.15, -11.72, -36.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.89, -11.69, -44.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.55, -12.1, -37.78, 2, 0)
	MovementLoopAddLocation(NPC, 20.81, -13.18, -27.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.7, -12.93, -20.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.12, -14.33, -7.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.14, -13.72, -17.4, 2, 0)
	MovementLoopAddLocation(NPC, 25.89, -11.88, -41.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.22, -11.19, -44.21, 2, 0)
end


