--[[
        Script Name     :       SpawnScripts/Frostfell/areindeer1587436.lua
	Script Purpose	:	Waypoint Path for areindeer1587436.lua
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
	MovementLoopAddLocation(NPC, 186, -36, -1530, 5, 0)
	MovementLoopAddLocation(NPC, 168, -33, -1536, 5, 0)
	MovementLoopAddLocation(NPC, 152, -30, -1544, 5, 0)
	MovementLoopAddLocation(NPC, 143, -29, -1557, 5, 0)
	MovementLoopAddLocation(NPC, 141, -31, -1571, 5, 0)
	MovementLoopAddLocation(NPC, 165, -38, -1595, 5, 0)
	MovementLoopAddLocation(NPC, 173, -32, -1597, 5, 0)
	MovementLoopAddLocation(NPC, 168, -31, -1607, 5, 0)
	MovementLoopAddLocation(NPC, 162, -27, -1624, 5, 0)
	MovementLoopAddLocation(NPC, 137, -23, -1650, 5, 0)
	MovementLoopAddLocation(NPC, 121, -27, -1659, 5, 0)
	MovementLoopAddLocation(NPC, 117, -29, -1653, 5, 0)
	MovementLoopAddLocation(NPC, 105, -32, -1650, 5, 0)
	MovementLoopAddLocation(NPC, 91, -32, -1639, 5, 0)
	MovementLoopAddLocation(NPC, 81, -35, -1631, 5, 0)
	MovementLoopAddLocation(NPC, 82, -33, -1627, 5, 0)
	MovementLoopAddLocation(NPC, 83, -33, -1610, 5, 0)
	MovementLoopAddLocation(NPC, 82, -31, -1600, 5, 0)
	MovementLoopAddLocation(NPC, 78, -29, -1576, 5, 0)
	MovementLoopAddLocation(NPC, 71, -25, -1565, 5, 0)
	MovementLoopAddLocation(NPC, 59, -21, -1553, 5, 0)
	MovementLoopAddLocation(NPC, 53, -14, -1544, 5, 0)
	MovementLoopAddLocation(NPC, 42, -15, -1531, 5, 0)
	MovementLoopAddLocation(NPC, 34, -19, -1515, 5, 0)
	MovementLoopAddLocation(NPC, 29, -21, -1500, 5, 0)
	MovementLoopAddLocation(NPC, 26, -23, -1478, 5, 0)
	MovementLoopAddLocation(NPC, 31, -29, -1451, 5, 0)
	MovementLoopAddLocation(NPC, 47, -32, -1444, 5, 0)
	MovementLoopAddLocation(NPC, 69, -29, -1442, 5, 0)
	MovementLoopAddLocation(NPC, 87, -28, -1451, 5, 0)
	MovementLoopAddLocation(NPC, 98, -25, -1469, 5, 0)
	MovementLoopAddLocation(NPC, 111, -31, -1487, 5, 0)
	MovementLoopAddLocation(NPC, 120, -29, -1490, 5, 0)
	MovementLoopAddLocation(NPC, 133, -27, -1490, 5, 0)
	MovementLoopAddLocation(NPC, 156, -21, -1488, 5, 0)
	MovementLoopAddLocation(NPC, 175, -24, -1482, 5, 0)
	MovementLoopAddLocation(NPC, 185, -26, -1483, 5, 0)
	MovementLoopAddLocation(NPC, 192, -29, -1491, 5, 0)
	MovementLoopAddLocation(NPC, 197, -35, -1502, 5, 0)
end