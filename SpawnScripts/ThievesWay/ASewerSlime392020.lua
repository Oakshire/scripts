--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392020.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392020.lua
	Script Author	:	Rylec
	Script Date	:	09-12-2019 04:13:40 
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
	MovementLoopAddLocation(NPC, -135.28, 1.26, -0.52, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -136.03, 1.26, -0.01, 2, 0)
	MovementLoopAddLocation(NPC, -153.81, 1.26, -0.01, 2, 0)
	MovementLoopAddLocation(NPC, -157.29, 1.26, -0.66, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -155.37, 1.26, -0.20, 2, 0)
	MovementLoopAddLocation(NPC, -153.93, 1.26, 0.08, 2, 0)
	MovementLoopAddLocation(NPC, -153.06, 1.35, 1.34, 2, 0)
	MovementLoopAddLocation(NPC, -152.16, 1.64, 1.02, 2, 0)
	MovementLoopAddLocation(NPC, -152.38, 1.60, 0.58, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -149.86, 1.67, 1.00, 2, 0)
	MovementLoopAddLocation(NPC, -146.82, 1.31, 1.50, 2, 0)
	MovementLoopAddLocation(NPC, -144.58, 1.26, 0.64, 2, 0)
	MovementLoopAddLocation(NPC, -141.66, 1.26, 0.13, 2, 0)
	MovementLoopAddLocation(NPC, -142.09, 1.26, -0.46, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -141.02, 1.26, 0.03, 2, 0)
	MovementLoopAddLocation(NPC, -138.66, 1.82, 0.32, 2, 0)
	MovementLoopAddLocation(NPC, -137.98, 1.70, -0.39, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -139.34, 1.66, -0.28, 2, 0)
	MovementLoopAddLocation(NPC, -141.21, 1.26, 0.12, 2, 0)
	MovementLoopAddLocation(NPC, -149.40, 1.62, -0.09, 2, 0)
	MovementLoopAddLocation(NPC, -150.34, 1.81, 0.27, 2, 0)
	MovementLoopAddLocation(NPC, -150.61, 2.12, 1.17, 2, 0)
	MovementLoopAddLocation(NPC, -151.78, 1.62, 0.27, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -152.47, 1.59, 0.81, 2, 0)
	MovementLoopAddLocation(NPC, -158.00, 1.26, 0.79, 2, 0)
	MovementLoopAddLocation(NPC, -160.24, 1.26, 0.99, 2, 0)
	MovementLoopAddLocation(NPC, -162.84, 1.34, 0.80, 2, 0)
	MovementLoopAddLocation(NPC, -162.43, 1.48, 0.59, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -160.80, 1.53, -0.03, 2, 0)
	MovementLoopAddLocation(NPC, -135.86, 1.26, 0.18, 2, 0)
end

