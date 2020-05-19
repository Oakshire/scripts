--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427430.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427430.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:43:47 
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
	MovementLoopAddLocation(NPC, -5.21, -11.61, -54.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -4.13, -11.2, -65.84, 2, 0)
	MovementLoopAddLocation(NPC, -2.52, -10.92, -74.1, 2, 0)
	MovementLoopAddLocation(NPC, 2.54, -11.43, -84.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.15, -11.7, -67.39, 2, 0)
	MovementLoopAddLocation(NPC, -1.69, -12.26, -58.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.02, -11.95, -68.39, 2, 0)
	MovementLoopAddLocation(NPC, 1.79, -11.92, -74.15, 2, 0)
	MovementLoopAddLocation(NPC, 1.5, -12, -82.95, 2, 0)
	MovementLoopAddLocation(NPC, 2.26, -11.81, -92.52, 2, 0)
	MovementLoopAddLocation(NPC, 2.2599, -11.81, -92.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.83, -11.65, -77.63, 2, 0)
	MovementLoopAddLocation(NPC, 5.11, -11.38, -69.45, 2, 0)
	MovementLoopAddLocation(NPC, 10, -12, -52.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.69, -11.78, -63.18, 2, 0)
	MovementLoopAddLocation(NPC, 9.2, -11.71, -68.56, 2, 0)
	MovementLoopAddLocation(NPC, 11.44, -11.52, -73.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.52, -11.52, -70.08, 2, 0)
	MovementLoopAddLocation(NPC, 8.08, -11.8, -63.35, 2, 0)
	MovementLoopAddLocation(NPC, 10.48, -11.78, -52.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.84, -10.97, -69.1, 2, 0)
	MovementLoopAddLocation(NPC, -1.17, -10.7, -76.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.85, -10.7, -53.42, 2, 0)
	MovementLoopAddLocation(NPC, 31.84, -10.7, -49, 2, 0)
	MovementLoopAddLocation(NPC, 41.38, -11.95, -48.44, 2, 0)
	MovementLoopAddLocation(NPC, 45.79, -12.53, -46.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.01, -10.7, -48.08, 2, 0)
	MovementLoopAddLocation(NPC, 36.67, -10.7, -51.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.46, -10.95, -48.75, 2, 0)
	MovementLoopAddLocation(NPC, 23.73, -11.78, -43.67, 2, 0)
	MovementLoopAddLocation(NPC, 17.18, -11.84, -42.19, 2, math.random(10, 20))
end

