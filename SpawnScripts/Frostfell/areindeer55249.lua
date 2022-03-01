--[[
        Script Name     :       SpawnScripts/Frostfell/areindeer55249.lua
	Script Purpose	:	Waypoint Path for areindeer55249.lua
	Script Author	:	Rylec
	Script Date	:	12-09-2019 08:05:34 
	Script Notes	:	Locations from ZAM
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
	MovementLoopAddLocation(NPC, 507, -34, -1249, 5, 0)
	MovementLoopAddLocation(NPC, 526, -35, -1255, 5, 0)
	MovementLoopAddLocation(NPC, 546, -34, -1271, 5, 0)
	MovementLoopAddLocation(NPC, 558, -35, -1288, 5, 0)
	MovementLoopAddLocation(NPC, 557, -33, -1314, 5, 0)
	MovementLoopAddLocation(NPC, 547, -31, -1331, 5, 0)
	MovementLoopAddLocation(NPC, 524, -27, -1335, 5, 0)
	MovementLoopAddLocation(NPC, 502, -30, -1323, 5, 0)
	MovementLoopAddLocation(NPC, 483, -29, -1304, 5, 0)
	MovementLoopAddLocation(NPC, 476, -32, -1294, 5, 0)
	MovementLoopAddLocation(NPC, 468, -36, -1278, 5, 0)
	MovementLoopAddLocation(NPC, 464, -32, -1264, 5, 0)
	MovementLoopAddLocation(NPC, 463, -30, -1247, 5, 0)
	MovementLoopAddLocation(NPC, 462, -28, -1233, 5, 0)
	MovementLoopAddLocation(NPC, 457, -31, -1221, 5, 0)
	MovementLoopAddLocation(NPC, 450, -31, -1212, 5, 0)
	MovementLoopAddLocation(NPC, 441, -31, -1206, 5, 0)
	MovementLoopAddLocation(NPC, 423, -35, -1200, 5, 0)
	MovementLoopAddLocation(NPC, 409, -34, -1204, 5, 0)
	MovementLoopAddLocation(NPC, 402, -30, -1228, 5, 0)
	MovementLoopAddLocation(NPC, 409, -32, -1239, 5, 0)
	MovementLoopAddLocation(NPC, 424, -32, -1240, 5, 0)
	MovementLoopAddLocation(NPC, 445, -31, -1235, 5, 0)
	MovementLoopAddLocation(NPC, 471, -32, -1238, 5, 0)
end