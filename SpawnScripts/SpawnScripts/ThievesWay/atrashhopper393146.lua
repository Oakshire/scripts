--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393146.lua
	Script Purpose	:	Waypoint Path for atrashhopper393146.lua
	Script Author	:	Rylec
	Script Date	:	09-27-2019 05:45:12 
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
	MovementLoopAddLocation(NPC, -162.27, 0.00, 217.16, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -160.56, 0.00, 216.73, 2, 0)
	MovementLoopAddLocation(NPC, -157.50, 0.00, 216.73, 2, 0)
	MovementLoopAddLocation(NPC, -155.99, 0.00, 217.20, 2, 0)
	MovementLoopAddLocation(NPC, -156.01, 0.00, 217.20, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -158.74, 0.24, 217.81, 2, 0)
	MovementLoopAddLocation(NPC, -160.73, 0.04, 218.40, 2, 0)
	MovementLoopAddLocation(NPC, -162.92, 0.00, 217.87, 2, 0)
	MovementLoopAddLocation(NPC, -164.89, 0.00, 217.80, 2, 0)
	MovementLoopAddLocation(NPC, -163.13, 0.00, 216.56, 2, 0)
	MovementLoopAddLocation(NPC, -161.42, 0.00, 217.08, 2, 0)
	MovementLoopAddLocation(NPC, -161.55, 0.00, 217.06, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -165.34, 0.08, 218.86, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -160.42, 0.00, 217.68, 2, 0)
	MovementLoopAddLocation(NPC, -157.48, 0.00, 217.92, 2, 0)
	MovementLoopAddLocation(NPC, -155.59, 0.00, 217.92, 2, 0)
	MovementLoopAddLocation(NPC, -152.78, 0.00, 216.90, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -155.85, 0.00, 217.43, 2, 0)
	MovementLoopAddLocation(NPC, -158.83, 0.24, 217.38, 2, 0)
	MovementLoopAddLocation(NPC, -160.98, 0.00, 218.05, 2, 0)
	MovementLoopAddLocation(NPC, -162.44, 0.00, 217.11, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -156.26, 0.00, 217.20, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -160.55, 0.02, 215.99, 2, 0)
	MovementLoopAddLocation(NPC, -161.78, 0.08, 214.84, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -165.21, 0.00, 216.89, 2, 0)
	MovementLoopAddLocation(NPC, -165.22, 0.00, 216.93, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -160.90, 0.01, 218.08, 2, 0)
	MovementLoopAddLocation(NPC, -157.52, 0.00, 217.52, 2, 0)
	MovementLoopAddLocation(NPC, -154.86, 0.00, 216.83, 2, 0)
end
