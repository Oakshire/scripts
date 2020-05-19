--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392599.lua
	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392599.lua
	Script Author	:	Rylec
	Script Date	:	09-27-2019 05:46:32 
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
	MovementLoopAddLocation(NPC, -164.04, 0.11, 215.12, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -161.34, 0.00, 216.36, 2, 0)
	MovementLoopAddLocation(NPC, -157.64, 0.00, 216.58, 2, 0)
	MovementLoopAddLocation(NPC, -155.68, 0.00, 217.99, 2, 0)
	MovementLoopAddLocation(NPC, -155.71, 0.00, 217.97, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -157.75, 0.00, 217.29, 2, 0)
	MovementLoopAddLocation(NPC, -163.08, 0.00, 217.60, 2, 0)
	MovementLoopAddLocation(NPC, -165.30, 0.00, 217.11, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -162.63, 0.02, 218.19, 2, 0)
	MovementLoopAddLocation(NPC, -159.48, 0.24, 217.98, 2, 0)
	MovementLoopAddLocation(NPC, -157.40, 0.00, 216.89, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -156.53, 0.00, 218.02, 2, 0)
	MovementLoopAddLocation(NPC, -155.27, 0.01, 218.12, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -154.38, 0.00, 217.89, 2, 0)
	MovementLoopAddLocation(NPC, -153.58, 0.01, 218.10, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -154.06, 0.00, 218.06, 2, 0)
	MovementLoopAddLocation(NPC, -158.89, 0.24, 217.90, 2, 0)
	MovementLoopAddLocation(NPC, -163.54, 0.00, 216.55, 2, 0)
	MovementLoopAddLocation(NPC, -163.94, 0.09, 215.24, 2, 0)
end


