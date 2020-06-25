--[[
        Script Name     :       SpawnScripts/Frostfell/areindeer1587429.lua
	Script Purpose	:	Waypoint Path for areindeer1587429.lua
	Script Author	:	Rylec
	Script Date	:	12-02-2019 05:45:11 
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
	MovementLoopAddLocation(NPC, 570.17, -36.13, -1501.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 561.07, -35.15, -1515.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 557.11, -35, -1510.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 565.52, -36.19, -1502.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 574.7, -34.91, -1514.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 579.29, -34.81, -1511.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 566.79, -35.61, -1520.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 569.35, -36.14, -1502.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 565.17, -36.2, -1504.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 578.04, -35.1, -1514.19, 2, math.random(10, 20))
end


