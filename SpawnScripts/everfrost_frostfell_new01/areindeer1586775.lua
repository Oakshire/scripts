--[[
        Script Name     :       SpawnScripts/everfrost_frostfell_new01/areindeer1586775.lua
	Script Purpose	:	Waypoint Path for areindeer1586775.lua
	Script Author	:	Rylec
	Script Date	:	12-01-2019 07:29:03 
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
	MovementLoopAddLocation(NPC, 45.51, -36.08, -1426.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.9, -36.32, -1393.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.9, -36.17, -1408.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.88, -35.52, -1394.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.8, -35.79, -1406.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.77, -35.79, -1401.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.97, -35.99, -1395, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.84, -35.85, -1403.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.44, -35.7, -1400.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 47.51, -36.29, -1426.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.18, -35.79, -1404.9, 2, math.random(10, 20))
end

