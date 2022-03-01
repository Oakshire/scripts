--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393145.lua
	Script Purpose	:	Waypoint Path for atrashhopper393145.lua
	Script Author	:	Rylec
	Script Date	:	09-27-2019 05:45:08 
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
	MovementLoopAddLocation(NPC, -151.64, 0.00, 217.96, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -152.14, 0.00, 217.94, 2, 0)
	MovementLoopAddLocation(NPC, -155.47, 0.01, 218.08, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -153.32, 0.00, 216.99, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -162.66, 0.00, 217.14, 2, 0)
	MovementLoopAddLocation(NPC, -162.62, 0.00, 217.14, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -159.31, 0.24, 217.95, 2, 0)
	MovementLoopAddLocation(NPC, -157.46, 0.00, 217.65, 2, 0)
	MovementLoopAddLocation(NPC, -155.80, 0.00, 216.71, 2, 0)
	MovementLoopAddLocation(NPC, -152.22, 0.01, 218.13, 2, 0)
	MovementLoopAddLocation(NPC, -154.78, 0.00, 217.28, 2, 0)
	MovementLoopAddLocation(NPC, -160.82, 0.00, 217.64, 2, 0)
	MovementLoopAddLocation(NPC, -162.14, 0.06, 218.69, 2, 0)
	MovementLoopAddLocation(NPC, -163.59, 0.06, 218.66, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -160.98, 0.00, 217.68, 2, 0)
	MovementLoopAddLocation(NPC, -157.08, 0.00, 217.92, 2, 0)
	MovementLoopAddLocation(NPC, -154.37, 0.03, 218.29, 2, 0)
	MovementLoopAddLocation(NPC, -151.40, 0.00, 218.04, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -152.49, 0.00, 217.42, 2, 0)
	MovementLoopAddLocation(NPC, -157.28, 0.05, 215.61, 2, 0)
	MovementLoopAddLocation(NPC, -158.91, 0.34, 215.20, 2, 0)
	MovementLoopAddLocation(NPC, -161.00, 0.00, 216.15, 2, 0)
	MovementLoopAddLocation(NPC, -161.18, 0.00, 217.09, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -157.47, 0.00, 216.66, 2, 0)
	MovementLoopAddLocation(NPC, -155.15, 0.00, 217.22, 2, math.random(8, 18))
end
