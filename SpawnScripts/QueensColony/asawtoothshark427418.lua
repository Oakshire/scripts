--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427418.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427418.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:37:20 
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
	MovementLoopAddLocation(NPC, 31.49, -12.78, -1.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.36, -11.39, -15.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.22, -12.02, -18.85, 2, 0)
	MovementLoopAddLocation(NPC, 17.84, -11.98, -22.79, 2, 0)
	MovementLoopAddLocation(NPC, 5.88, -11.79, -38.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.23, -12.08, -32.66, 2, 0)
	MovementLoopAddLocation(NPC, 27.45, -11.7, -30.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.7, -12.23, -23.88, 2, 0)
	MovementLoopAddLocation(NPC, 42.07, -13.56, -10.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.52, -13.78, -22.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.43, -12.26, -15.19, 2, 0)
	MovementLoopAddLocation(NPC, 42.49, -12, -11.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.53, -12.11, -6.87, 2, 0)
	MovementLoopAddLocation(NPC, 35.29, -12.51, -1.76, 2, 0)
	MovementLoopAddLocation(NPC, 30.43, -12.7, 5.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.56, -12.82, -12.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.91, -12.4, -6.34, 2, 0)
	MovementLoopAddLocation(NPC, 41.36, -11.85, 3.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.45, -12.07, -15.64, 2, math.random(10, 20))
end

