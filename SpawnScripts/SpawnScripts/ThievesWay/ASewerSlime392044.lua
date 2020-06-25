--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392044.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392044.lua
	Script Author	:	Rylec
	Script Date	:	09-12-2019 07:46:22 
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
	MovementLoopAddLocation(NPC, -134.21, 1.26, -0.36, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -134.19, 1.26, -0.04, 2, 0)
	MovementLoopAddLocation(NPC, -141.56, 1.26, 0.17, 2, 0)
	MovementLoopAddLocation(NPC, -142.52, 1.26, 0.76, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -141.57, 1.26, 0.52, 2, 0)
	MovementLoopAddLocation(NPC, -146.49, 1.26, 0.27, 2, 0)
	MovementLoopAddLocation(NPC, -148.12, 1.26, -0.08, 2, 0)
	MovementLoopAddLocation(NPC, -154.55, 1.26, -0.05, 2, 0)
	MovementLoopAddLocation(NPC, -156.07, 1.26, -0.36, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -153.89, 1.26, 0.03, 2, 0)
	MovementLoopAddLocation(NPC, -139.62, 1.63, -0.05, 2, 0)
	MovementLoopAddLocation(NPC, -138.45, 1.82, 0.53, 2, 0)
	MovementLoopAddLocation(NPC, -138.33, 1.81, 0.86, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -137.75, 1.64, 1.39, 2, 0)
	MovementLoopAddLocation(NPC, -144.21, 1.26, 0.60, 2, 0)
	MovementLoopAddLocation(NPC, -146.17, 1.26, 0.56, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -145.28, 1.26, 0.43, 2, 0)
	MovementLoopAddLocation(NPC, -154.11, 1.26, -0.05, 2, 0)
	MovementLoopAddLocation(NPC, -154.87, 1.26, -0.39, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -156.55, 1.36, 0.17, 2, 0)
	MovementLoopAddLocation(NPC, -158.73, 1.26, 0.24, 2, 0)
	MovementLoopAddLocation(NPC, -159.03, 1.26, 0.46, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -153.57, 1.26, 0.16, 2, 0)
	MovementLoopAddLocation(NPC, -152.35, 1.58, 0.03, 2, 0)
	MovementLoopAddLocation(NPC, -147.10, 1.26, -0.08, 2, 0)
	MovementLoopAddLocation(NPC, -142.59, 1.26, -0.33, 2, 0)
	MovementLoopAddLocation(NPC, -143.35, 1.26, -0.25, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -141.42, 1.26, 0.02, 2, 0)
	MovementLoopAddLocation(NPC, -135.83, 1.26, 0.22, 2, 0)
	MovementLoopAddLocation(NPC, -133.90, 1.26, -0.24, 2, 0)
end

