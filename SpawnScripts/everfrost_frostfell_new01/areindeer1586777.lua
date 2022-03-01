--[[
        Script Name     :       SpawnScripts/everfrost_frostfell_new01/areindeer1586777.lua
	Script Purpose	:	Waypoint Path for areindeer1586777.lua
	Script Author	:	Rylec
	Script Date	:	12-01-2019 07:28:53 
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
	MovementLoopAddLocation(NPC, 376.73, -32.06, -1394.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 391.93, -32.06, -1394.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 414.16, -34.33, -1394.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 389.08, -32.08, -1368.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 406.83, -32.6, -1383.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 392.15, -32.07, -1381.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 403.97, -32.84, -1399.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 387.5, -32.06, -1375.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 394.42, -32.06, -1412.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 377.8, -32.06, -1404.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 410.07, -32.09, -1353.24, 2, math.random(10, 20))
end


