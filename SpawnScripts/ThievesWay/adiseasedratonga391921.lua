--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga391921.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga391921.lua
	Script Author	:	Rylec
	Script Date	:	09-27-2019 05:45:38 
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
	MovementLoopAddLocation(NPC, -163.52, 0.00, 217.04, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -156.95, 0.02, 218.22, 2, 0)
	MovementLoopAddLocation(NPC, -153.28, 0.03, 218.39, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -152.07, 0.00, 217.15, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -155.76, 0.00, 216.35, 2, 0)
	MovementLoopAddLocation(NPC, -158.92, 0.28, 215.71, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -156.58, 0.02, 215.90, 2, 0)
	MovementLoopAddLocation(NPC, -152.62, 0.00, 217.13, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -152.05, 0.00, 217.65, 2, 0)
	MovementLoopAddLocation(NPC, -150.79, 0.05, 218.52, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -160.59, 0.01, 218.09, 2, 0)
	MovementLoopAddLocation(NPC, -163.75, 0.00, 217.04, 2, 0)
	MovementLoopAddLocation(NPC, -161.03, 0.00, 216.78, 2, 0)
	MovementLoopAddLocation(NPC, -154.83, 0.01, 218.10, 2, 0)
	MovementLoopAddLocation(NPC, -154.81, 0.01, 218.09, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -158.93, 0.24, 217.23, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -151.64, 0.01, 218.08, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -160.49, 0.00, 216.63, 2, 0)
end

