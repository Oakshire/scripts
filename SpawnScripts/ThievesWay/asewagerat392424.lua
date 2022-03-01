--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392424.lua
	Script Purpose	:	Waypoint Path for asewagerat392424.lua
	Script Author	:	Rylec
	Script Date	:	09-27-2019 05:46:40 
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
	MovementLoopAddLocation(NPC, -151.27, 0.00, 217.03, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -153.09, 0.00, 216.82, 2, 0)
	MovementLoopAddLocation(NPC, -153.17, 0.00, 216.88, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -153.51, 0.00, 217.80, 2, 0)
	MovementLoopAddLocation(NPC, -153.72, 0.00, 217.71, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -155.20, 0.00, 217.34, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -151.52, 0.01, 218.14, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -161.90, 0.00, 217.26, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -159.27, 0.24, 216.75, 2, 0)
	MovementLoopAddLocation(NPC, -152.31, 0.00, 217.55, 2, math.random(10, 18))
end

