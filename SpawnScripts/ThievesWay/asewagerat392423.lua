--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392423.lua
	Script Purpose	:	Waypoint Path for asewagerat392423.lua
	Script Author	:	Rylec
	Script Date	:	09-27-2019 05:46:43 
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
	MovementLoopAddLocation(NPC, -155.35, 0.00, 217.21, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -158.89, 0.24, 217.10, 2, 0)
	MovementLoopAddLocation(NPC, -155.54, 0.01, 218.15, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -165.03, 0.00, 217.15, 2, 0)
	MovementLoopAddLocation(NPC, -164.99, 0.00, 217.16, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -163.27, 0.00, 216.17, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -159.23, 0.31, 215.37, 2, 0)
	MovementLoopAddLocation(NPC, -153.51, 0.00, 217.60, 2, 0)
	MovementLoopAddLocation(NPC, -151.29, 0.00, 216.95, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -155.83, 0.00, 218.06, 2, 0)
	MovementLoopAddLocation(NPC, -161.42, 0.00, 217.81, 2, 0)
	MovementLoopAddLocation(NPC, -163.13, 0.00, 217.17, 2, 0)
	MovementLoopAddLocation(NPC, -163.12, 0.00, 217.15, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -159.36, 0.24, 217.56, 2, 0)
	MovementLoopAddLocation(NPC, -152.77, 0.00, 216.25, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -158.91, 0.24, 217.89, 2, math.random(10, 18))
end
