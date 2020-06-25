--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392600.lua
	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392600.lua
	Script Author	:	Rylec
	Script Date	:	09-27-2019 05:46:37 
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
	MovementLoopAddLocation(NPC, -160.68, 0.05, 218.50, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -159.29, 0.24, 218.13, 2, 0)
	MovementLoopAddLocation(NPC, -156.80, 0.01, 218.09, 2, 0)
	MovementLoopAddLocation(NPC, -155.08, 0.00, 217.77, 2, 0)
	MovementLoopAddLocation(NPC, -154.42, 0.01, 218.08, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -152.57, 0.00, 217.99, 2, 0)
	MovementLoopAddLocation(NPC, -151.32, 0.01, 218.10, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -152.04, 0.00, 217.99, 2, 0)
	MovementLoopAddLocation(NPC, -153.18, 0.00, 217.18, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -155.31, 0.00, 217.14, 2, 0)
	MovementLoopAddLocation(NPC, -155.29, 0.00, 217.14, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -154.25, 0.00, 217.17, 2, 0)
	MovementLoopAddLocation(NPC, -154.15, 0.00, 217.29, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -152.23, 0.00, 217.96, 2, 0)
	MovementLoopAddLocation(NPC, -150.82, 0.02, 218.21, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -151.72, 0.00, 218.06, 2, 0)
	MovementLoopAddLocation(NPC, -157.44, 0.00, 217.60, 2, 0)
end


