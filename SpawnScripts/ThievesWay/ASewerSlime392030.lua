--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392030.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392030.lua
	Script Author	:	Rylec
	Script Date	:	09-27-2019 05:45:16 
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
	MovementLoopAddLocation(NPC, -152.27, 0.00, 217.08, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -151.99, 0.01, 218.08, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -154.37, 0.02, 218.25, 2, 0)
	MovementLoopAddLocation(NPC, -155.20, 0.00, 218.06, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -159.08, 0.24, 217.26, 2, 0)
	MovementLoopAddLocation(NPC, -159.05, 0.24, 217.26, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -154.45, 0.00, 216.50, 2, 0)
	MovementLoopAddLocation(NPC, -151.53, 0.08, 215.37, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -151.51, 0.00, 216.30, 2, 0)
end

