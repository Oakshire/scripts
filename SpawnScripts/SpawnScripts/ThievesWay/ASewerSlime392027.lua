--[[
	Script Name	:	SpawnScripts/ThievesWay/ASewerSlime392027.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392027.lua
	Script Author	:	Rylec
	Script Date	:	09-12-2019 08:11:11 
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
	MovementLoopAddLocation(NPC, -162.65, 1.36, -0.59, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -161.66, 1.58, -0.41, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -162.58, 1.40, -0.55, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -159.84, 1.26, 0.04, 2, 0)
	MovementLoopAddLocation(NPC, -151.01, 1.76, 0.18, 2, 0)
	MovementLoopAddLocation(NPC, -150.18, 1.77, 0.67, 2, 0)
	MovementLoopAddLocation(NPC, -149.06, 1.61, 0.63, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -148.68, 1.62, 1.26, 2, 0)
	MovementLoopAddLocation(NPC, -147.58, 1.26, 0.68, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -143.40, 1.26, 0.61, 2, 0)
	MovementLoopAddLocation(NPC, -141.30, 1.27, 1.03, 2, 0)
	MovementLoopAddLocation(NPC, -136.12, 1.26, 0.94, 2, 0)
	MovementLoopAddLocation(NPC, -135.43, 1.26, 0.59, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -136.22, 1.26, 0.03, 2, 0)
	MovementLoopAddLocation(NPC, -150.15, 1.76, 0.43, 2, 0)
	MovementLoopAddLocation(NPC, -150.66, 1.82, -0.22, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -150.00, 1.71, 0.50, 2, 0)
	MovementLoopAddLocation(NPC, -149.79, 1.65, -0.43, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -151.03, 1.75, 0.05, 2, 0)
	MovementLoopAddLocation(NPC, -153.57, 1.26, -0.03, 2, 0)
	MovementLoopAddLocation(NPC, -155.05, 1.26, 0.06, 2, 0)
	MovementLoopAddLocation(NPC, -155.50, 1.26, 0.39, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -153.77, 1.26, 0.02, 2, 0)
	MovementLoopAddLocation(NPC, -135.96, 1.26, 0.19, 2, 0)
	MovementLoopAddLocation(NPC, -135.70, 1.26, -0.23, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -136.61, 1.52, 0.08, 2, 0)
	MovementLoopAddLocation(NPC, -148.27, 1.33, 0.43, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -149.42, 1.62, -0.01, 2, 0)
	MovementLoopAddLocation(NPC, -156.58, 1.36, -0.27, 2, 0)
	MovementLoopAddLocation(NPC, -161.22, 1.58, -0.01, 2, 0)
end


