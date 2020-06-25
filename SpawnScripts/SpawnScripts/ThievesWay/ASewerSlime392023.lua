--[[
	Script Name	:	SpawnScripts/ThievesWay/ASewerSlime392023.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392023.lua
	Script Author	:	Rylec
	Script Date	:	09-12-2019 07:17:14 
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
	MovementLoopAddLocation(NPC, -154.44, 1.26, 0.28, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -153.91, 1.26, 0.64, 2, 0)
	MovementLoopAddLocation(NPC, -152.94, 1.34, 1.20, 2, 0)
	MovementLoopAddLocation(NPC, -145.14, 1.26, 0.90, 2, 0)
	MovementLoopAddLocation(NPC, -140.32, 1.64, 1.17, 2, 0)
	MovementLoopAddLocation(NPC, -139.38, 1.65, 0.59, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -141.29, 1.26, 0.84, 2, 0)
	MovementLoopAddLocation(NPC, -143.36, 1.26, 0.57, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -145.94, 1.26, 0.54, 2, 0)
	MovementLoopAddLocation(NPC, -147.71, 1.26, 0.96, 2, 0)
	MovementLoopAddLocation(NPC, -153.93, 1.26, 0.95, 2, 0)
	MovementLoopAddLocation(NPC, -156.10, 1.27, 0.68, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -153.34, 1.26, 0.04, 2, 0)
	MovementLoopAddLocation(NPC, -147.37, 1.26, 0.00, 2, 0)
	MovementLoopAddLocation(NPC, -146.23, 1.26, -0.12, 2, 0)
	MovementLoopAddLocation(NPC, -144.57, 1.26, -0.31, 2, 0)
	MovementLoopAddLocation(NPC, -145.10, 1.26, -0.33, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -143.93, 1.26, -0.56, 2, 0)
	MovementLoopAddLocation(NPC, -148.01, 1.26, -0.43, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -145.49, 1.26, 0.01, 2, 0)
	MovementLoopAddLocation(NPC, -140.43, 1.57, 0.03, 2, 0)
	MovementLoopAddLocation(NPC, -141.19, 1.26, -0.61, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -140.54, 1.54, 0.16, 2, 0)
	MovementLoopAddLocation(NPC, -148.29, 1.35, 0.55, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -148.24, 1.33, 1.03, 2, 0)
	MovementLoopAddLocation(NPC, -153.38, 1.26, 0.86, 2, 0)
	MovementLoopAddLocation(NPC, -153.82, 1.26, 0.65, 2, 0)
end