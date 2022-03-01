--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586522.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586522.lua
	Script Author	:	Rylec
	Script Date	:	09-27-2019 05:45:27 
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
	MovementLoopAddLocation(NPC, -151.38, 0.05, 215.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -152.17, 0.00, 217.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -153.26, 0.00, 217.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -158.91, 0.24, 217.70, 2, 0)
	MovementLoopAddLocation(NPC, -161.18, 0.00, 217.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -156.78, 0.01, 218.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -160.39, 0.00, 217.20, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -164.62, 0.00, 217.55, 2, 0)
	MovementLoopAddLocation(NPC, -152.51, 0.01, 218.10, 2, 0)
	MovementLoopAddLocation(NPC, -152.45, 0.00, 218.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -151.22, 0.00, 217.07, 2, math.random(10, 20))
end

