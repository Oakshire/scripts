--[[
        Script Name     :       SpawnScripts/everfrost_frostfell_new01/areindeer1586732.lua
	Script Purpose	:	Waypoint Path for areindeer1586732.lua
	Script Author	:	Rylec
	Script Date	:	12-01-2019 07:28:57 
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
	MovementLoopAddLocation(NPC, 418.67, -36.45, -1440.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 416.31, -36.38, -1429.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 425.94, -36.71, -1430.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 418.49, -36.41, -1439.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 424.43, -36.68, -1433.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 411.17, -36.38, -1436.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 416.21, -36.38, -1428.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 425.56, -36.95, -1440.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 418.5, -36.38, -1437.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 417.11, -36.31, -1425.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 422.51, -36.62, -1437.09, 2, math.random(10, 20))
end


