--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427372.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427372.lua
	Script Author	:	Rylec
	Script Date	:	11-15-2019 06:25:46 
	Script Notes	:	Dummy script until they fix these sharks on Live
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
	MovementLoopAddLocation(NPC, -130.08, -11.81, 15.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.27, -12.32, 9.5, 2, 0)
	MovementLoopAddLocation(NPC, -144.89, -13.16, 9.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.3, -11.74, 27.34, 2, 0)
	MovementLoopAddLocation(NPC, -138.68, -12.11, 48.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.68, -11.86, 58.07, 2, 0)
	MovementLoopAddLocation(NPC, -124.92, -11.54, 64.28, 2, 0)
	MovementLoopAddLocation(NPC, -112.22, -11.78, 70.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -109.74, -11.66, 57.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.91, -11.01, 53.87, 2, 0)
	MovementLoopAddLocation(NPC, -125.99, -10.3, 38.32, 2, 0)
	MovementLoopAddLocation(NPC, -149.78, -11.59, 34.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -151.86, -12.26, 56.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -147.6, -12.08, 63.1, 2, 0)
	MovementLoopAddLocation(NPC, -128.64, -11.51, 72.01, 2, math.random(10, 20))
end

