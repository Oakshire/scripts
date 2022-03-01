--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427445.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427445.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:22:17 
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
	MovementLoopAddLocation(NPC, -21.07, -13.33, 34.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.68, -12.15, 44.95, 2, 0)
	MovementLoopAddLocation(NPC, -6.03, -11.66, 51.1, 2, 0)
	MovementLoopAddLocation(NPC, 0.64, -12.14, 53.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.01, -12.11, 49.92, 2, 0)
	MovementLoopAddLocation(NPC, 8.73, -12.1, 40.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.68, -12.92, 34.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.67, -11.89, 36.86, 2, 0)
	MovementLoopAddLocation(NPC, 7.1, -11.81, 42.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.19, -12.05, 51.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.54, -11.8, 43.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.52, -13.62, 32.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.1, -13.81, 32.52, 2, 0)
end

