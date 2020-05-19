--[[
        Script Name     :       SpawnScripts/everfrost_frostfell_new01/afrostfellcube1586779.lua
	Script Purpose	:	Waypoint Path for afrostfellcube1586779.lua
	Script Author	:	Rylec
	Script Date	:	11-27-2019 06:00:46 
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
	MovementLoopAddLocation(NPC, 51.32, -38.97, -1259.74, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 45.16, -38.97, -1271.46, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 63.31, -38.97, -1279.25, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 36.08, -38.97, -1286.15, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 45.88, -38.97, -1269.25, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 57.94, -38.97, -1269.52, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 45.67, -38.97, -1273.33, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 55.49, -38.97, -1266.56, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 58, -38.97, -1284.81, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 37.43, -38.97, -1272.82, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 52.1, -38.97, -1289.33, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 38.01, -38.97, -1281.73, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 46.36, -38.97, -1269.79, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 30.97, -38.97, -1279.46, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 49.9, -38.97, -1272.99, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 51.26, -38.97, -1259.88, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 44.48, -38.97, -1272.52, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 63.62, -38.97, -1279.75, 1, math.random(10, 21))
end


