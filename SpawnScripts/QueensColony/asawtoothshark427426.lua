--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427426.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427426.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:42:23 
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
	MovementLoopAddLocation(NPC, 28.43, -13.68, -4.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.21, -13.9, -10.41, 2, 0)
	MovementLoopAddLocation(NPC, 44.28, -13.89, -11.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.98, -11.76, -34.94, 2, 0)
	MovementLoopAddLocation(NPC, 42.37, -10.95, -45.01, 2, 0)
	MovementLoopAddLocation(NPC, 44.65, -10.73, -48.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.58, -10.94, -48.52, 2, 0)
	MovementLoopAddLocation(NPC, 4.31, -11.64, -44.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.49, -11.71, -37.23, 2, 0)
	MovementLoopAddLocation(NPC, 17.41, -12.2, -25.47, 2, 0)
	MovementLoopAddLocation(NPC, 23.94, -13.98, -14.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.68, -13.64, -19.5, 2, 0)
	MovementLoopAddLocation(NPC, 23.09, -13.25, -34.78, 2, 0)
	MovementLoopAddLocation(NPC, 18.25, -12.43, -42.98, 2, 0)
	MovementLoopAddLocation(NPC, 18.33, -11.9, -48.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.64, -11.7, -27.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.23, -11.74, -19.92, 2, 0)
	MovementLoopAddLocation(NPC, 18.7, -12.22, -7.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.82, -13.14, -12.81, 2, math.random(10, 20))
end

