--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428480.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428480.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:28 
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
	MovementLoopAddLocation(NPC, 87.58, -12.64, -23.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.3, -11.77, -38.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.88, -12.7, -29.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.03, -12.71, -31.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 89.72, -12.7, -19.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.94, -11.87, -32.43, 2, 0)
	MovementLoopAddLocation(NPC, 72.32, -11.38, -46.79, 2, 0)
	MovementLoopAddLocation(NPC, 69.08, -11.31, -54.75, 2, 0)
	MovementLoopAddLocation(NPC, 59.36, -11.74, -66.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.72, -10.7, -57.45, 2, 0)
	MovementLoopAddLocation(NPC, 75.41, -10.77, -50.39, 2, 0)
	MovementLoopAddLocation(NPC, 80.67, -10.62, -46.12, 2, 0)
	MovementLoopAddLocation(NPC, 87.98, -12.44, -43.91, 2, 0)
	MovementLoopAddLocation(NPC, 94.28, -12.6, -42.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.98, -12.2, -44.58, 2, 0)
	MovementLoopAddLocation(NPC, 73.24, -11.82, -47.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.68, -12.03, -32.85, 2, 0)
end


