--[[
	Script Name	:	SpawnScripts/ThievesWay/ASewerSlime392039.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392039.lua
	Script Author	:	Rylec
	Script Date	:	09-11-2019 08:43:31 
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
	MovementLoopAddLocation(NPC, -134.44, 1.26, 0.65, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -136.20, 1.27, 1.02, 2, 0)
	MovementLoopAddLocation(NPC, -142.34, 1.26, 0.99, 2, 0)
	MovementLoopAddLocation(NPC, -147.43, 1.26, 0.41, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -148.31, 1.34, -0.10, 2, 0)
	MovementLoopAddLocation(NPC, -154.15, 1.26, -0.03, 2, 0)
	MovementLoopAddLocation(NPC, -159.40, 1.26, -0.47, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -160.10, 1.26, -0.52, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -146.87, 1.26, 0.17, 2, 0)
	MovementLoopAddLocation(NPC, -145.32, 1.26, 0.73, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -146.11, 1.26, 0.52, 2, 0)
	MovementLoopAddLocation(NPC, -147.47, 1.26, 0.95, 2, 0)
	MovementLoopAddLocation(NPC, -154.66, 1.26, 0.87, 2, 0)
	MovementLoopAddLocation(NPC, -157.26, 1.26, 0.59, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -158.66, 1.26, 0.58, 2, 0)
	MovementLoopAddLocation(NPC, -160.03, 1.27, 1.00, 2, 0)
	MovementLoopAddLocation(NPC, -161.67, 1.58, 0.45, 2, 0)
	MovementLoopAddLocation(NPC, -161.37, 1.58, 0.67, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -160.13, 1.30, 1.35, 2, 0)
	MovementLoopAddLocation(NPC, -155.80, 1.26, 0.48, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -153.67, 1.26, 0.08, 2, 0)
	MovementLoopAddLocation(NPC, -135.57, 1.26, 0.13, 2, 0)
end
