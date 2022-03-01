--[[
        Script Name     :       SpawnScripts/everfrost_frostfell_new01/areindeer1586778.lua
	Script Purpose	:	Waypoint Path for areindeer1586778.lua
	Script Author	:	Rylec
	Script Date	:	12-01-2019 07:28:51 
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
	MovementLoopAddLocation(NPC, 404.64, -34.19, -1337.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 402.69, -32.09, -1360.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 391.77, -32.09, -1370.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 397.4, -32.11, -1373.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 403.25, -32.09, -1360.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 393.41, -32.09, -1370.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 412.94, -33.99, -1335.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 407.39, -32.09, -1347.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 404.57, -34.24, -1337.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 408.65, -32.09, -1346.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 391.94, -32.09, -1371.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 390.88, -32.16, -1360.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 411.81, -32.09, -1351.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 412.09, -32.09, -1344.59, 2, math.random(10, 20))
end


