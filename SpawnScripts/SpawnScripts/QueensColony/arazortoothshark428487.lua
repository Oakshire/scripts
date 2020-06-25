--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428487.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428487.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:17:33 
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
	MovementLoopAddLocation(NPC, 63.77, -11.74, -80.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.87, -12.19, -72.13, 2, 0)
	MovementLoopAddLocation(NPC, 74.67, -11.72, -62.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.22, -11.46, -57.7, 2, 0)
	MovementLoopAddLocation(NPC, 73.59, -11.46, -53.63, 2, 0)
	MovementLoopAddLocation(NPC, 71.47, -11.65, -46.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 93.73, -12.89, -23.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96.15, -11.96, -33.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.98, -11.67, -40.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.43, -11.45, -43.82, 2, 0)
	MovementLoopAddLocation(NPC, 76.76, -10.96, -47.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.95, -11.11, -71.48, 2, 0)
	MovementLoopAddLocation(NPC, 45.99, -11.51, -75.82, 2, 0)
	MovementLoopAddLocation(NPC, 42.89, -11.8, -80.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.08, -11.73, -54.83, 2, 0)
	MovementLoopAddLocation(NPC, 66.79, -11.84, -51.22, 2, 0)
	MovementLoopAddLocation(NPC, 73.23, -11.87, -48.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.93, -11.78, -61.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.99, -11.46, -71.7, 2, 0)
	MovementLoopAddLocation(NPC, 39.83, -11.04, -74.45, 2, 0)
	MovementLoopAddLocation(NPC, 32.69, -10.63, -77.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.96, -11.24, -74.33, 2, 0)
	MovementLoopAddLocation(NPC, 53.5, -11.7, -64.08, 2, math.random(10, 20))
end


