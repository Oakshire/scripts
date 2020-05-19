--[[
        Script Name     :       SpawnScripts/Frostfell/areindeer1587427.lua
	Script Purpose	:	Waypoint Path for areindeer1587427.lua
	Script Author	:	Rylec
	Script Date	:	12-01-2019 07:29:03 
	Script Notes	:	Script by Rylec
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
	MovementLoopAddLocation(NPC, 565.71, -36.16, -1493.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 587.7, -33.97, -1476.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 553.48, -35.01, -1476.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 574.9, -36.04, -1487.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 575.13, -36.02, -1479.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 556.32, -35.99, -1455.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 563.03, -34.85, -1464.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 558.82, -34.53, -1478.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 581.5, -36.17, -1463.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 572.59, -36.07, -1488.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 560.16, -34.54, -1482.85, 2, math.random(10, 20))
end

