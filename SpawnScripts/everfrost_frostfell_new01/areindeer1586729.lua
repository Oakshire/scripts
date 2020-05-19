--[[
        Script Name     :       SpawnScripts/everfrost_frostfell_new01/areindeer1586729.lua
	Script Purpose	:	Waypoint Path for areindeer1586729.lua
	Script Author	:	Rylec
	Script Date	:	12-01-2019 07:28:46 
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
	MovementLoopAddLocation(NPC, 221.61, -35.01, -1269.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 217.61, -34.97, -1278.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 220.53, -35.01, -1270.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 229.01, -35.01, -1274.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 212.73, -34.82, -1280.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 219.77, -35.01, -1270.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 223.13, -35.01, -1278.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 229.92, -35.01, -1276.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 222.25, -35.01, -1281.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 216.31, -35.01, -1272.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 219.32, -35.01, -1277.26, 2, math.random(10, 20))
end


