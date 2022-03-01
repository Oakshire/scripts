--[[
        Script Name     :       SpawnScripts/Frostfell/areindeer55241.lua
	Script Purpose	:	Waypoint Path for areindeer55241.lua
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
	MovementLoopAddLocation(NPC, 368, -34, -1293, 5, 0)
	MovementLoopAddLocation(NPC, 352, -34, -1304, 5, 0)
	MovementLoopAddLocation(NPC, 337, -34, -1305, 5, 0)
	MovementLoopAddLocation(NPC, 323, -33, -1302, 5, 0)
	MovementLoopAddLocation(NPC, 310, -35, -1295, 5, 0)
	MovementLoopAddLocation(NPC, 304, -33, -1287, 5, 0)
	MovementLoopAddLocation(NPC, 296, -33, -1276, 5, 0)
	MovementLoopAddLocation(NPC, 296, -33, -1271, 5, 0)
	MovementLoopAddLocation(NPC, 319, -33, -1239, 5, 0)
	MovementLoopAddLocation(NPC, 332, -29, -1226, 5, 0)
	MovementLoopAddLocation(NPC, 345, -27, -1206, 5, 0)
	MovementLoopAddLocation(NPC, 361, -21, -1204, 5, 0)
	MovementLoopAddLocation(NPC, 384, -27, -1209, 5, 0)
	MovementLoopAddLocation(NPC, 392, -31, -1221, 5, 0)
	MovementLoopAddLocation(NPC, 401, -31, -1226, 5, 0)
	MovementLoopAddLocation(NPC, 410, -34, -1216, 5, 0)
	MovementLoopAddLocation(NPC, 409, -32, -1209, 5, 0)
	MovementLoopAddLocation(NPC, 376, -32, -1192, 5, 0)
	MovementLoopAddLocation(NPC, 366, -32, -1192, 5, 0)
	MovementLoopAddLocation(NPC, 360, -34, -1199, 5, 0)
	MovementLoopAddLocation(NPC, 356, -36, -1211, 5, 0)
	MovementLoopAddLocation(NPC, 364, -35, -1219, 5, 0)
	MovementLoopAddLocation(NPC, 369, -34, -1238, 5, 0)
	MovementLoopAddLocation(NPC, 374, -33, -1243, 5, 0)
	MovementLoopAddLocation(NPC, 379, -31, -1251, 5, 0)
	MovementLoopAddLocation(NPC, 377, -33, -1267, 5, 0)
	MovementLoopAddLocation(NPC, 371, -32, -1276, 5, 0)
end