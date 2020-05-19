--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425491.lua
	Script Purpose	:	Waypoint Path for ashoalglider425491.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:17:20 
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
	MovementLoopAddLocation(NPC, 66.09, -11.49, -62.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.21, -11.59, -51.59, 2, 0)
	MovementLoopAddLocation(NPC, 75.58, -11.54, -46.69, 2, 0)
	MovementLoopAddLocation(NPC, 87.19, -11.49, -40.22, 2, 0)
	MovementLoopAddLocation(NPC, 95.96, -11.54, -32.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.51, -12.16, -27.5, 2, 0)
	MovementLoopAddLocation(NPC, 96.21, -12.43, -21.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96.74, -12.45, -29.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 99.23, -11.56, -28.48, 2, 0)
	MovementLoopAddLocation(NPC, 101.51, -11.45, -25.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 98.11, -11.52, -39.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.69, -11.24, -43.26, 2, 0)
	MovementLoopAddLocation(NPC, 77.16, -10.7, -46.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.41, -10.7, -49.82, 2, 0)
	MovementLoopAddLocation(NPC, 52.47, -10.7, -67.82, 2, 0)
	MovementLoopAddLocation(NPC, 43.75, -10.7, -75.45, 2, 0)
	MovementLoopAddLocation(NPC, 39.31, -11.49, -79.75, 2, 0)
	MovementLoopAddLocation(NPC, 33.99, -11.5, -85.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.47, -10.71, -76.6, 2, 0)
	MovementLoopAddLocation(NPC, 44.52, -10.7, -66.19, 2, math.random(10, 20))
end


