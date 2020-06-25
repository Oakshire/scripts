--[[
        Script Name     :       SpawnScripts/everfrost_frostfell_new01/areindeer1586731.lua
	Script Purpose	:	Waypoint Path for areindeer1586731.lua
	Script Author	:	Rylec
	Script Date	:	12-01-2019 07:28:55 
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
	MovementLoopAddLocation(NPC, 354.2, -31.09, -1420.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 349.18, -29.88, -1413, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 342.13, -29.73, -1419.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 349.62, -30.15, -1417.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 340.87, -29.47, -1418.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 346.41, -29.92, -1408.19, 2, math.random(10, 20))
end


