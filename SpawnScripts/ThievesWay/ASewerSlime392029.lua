--[[
    Script Name    : SpawnScripts/ThievesWay/ASewerSlime392029.lua
    Script Author  : Rylec
    Script Date    : 2019.09.12 05:09:59
    Script Purpose : 
                   : 
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
	MovementLoopAddLocation(NPC, -156.49, 1.36, -0.38, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -153.67, 1.26, -0.01, 2, 0)
	MovementLoopAddLocation(NPC, -151.19, 1.70, -0.22, 2, 0)
	MovementLoopAddLocation(NPC, -151.44, 1.64, -0.67, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -150.62, 1.82, 0.27, 2, 0)
	MovementLoopAddLocation(NPC, -152.92, 1.32, 0.97, 2, 0)
	MovementLoopAddLocation(NPC, -153.48, 1.26, 0.40, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -151.43, 1.64, 0.98, 2, 0)
	MovementLoopAddLocation(NPC, -146.96, 1.27, 1.08, 2, 0)
	MovementLoopAddLocation(NPC, -143.44, 1.26, 0.90, 2, 0)
	MovementLoopAddLocation(NPC, -141.52, 1.28, 1.13, 2, 0)
	MovementLoopAddLocation(NPC, -140.22, 1.65, 1.17, 2, 0)
	MovementLoopAddLocation(NPC, -139.51, 1.63, 0.62, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -138.69, 2.06, 1.14, 2, 0)
	MovementLoopAddLocation(NPC, -139.13, 1.72, -0.30, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -133.70, 1.26, -0.41, 2, 0)
	MovementLoopAddLocation(NPC, -134.12, 1.26, -0.36, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -133.94, 1.26, 0.16, 2, 0)
	MovementLoopAddLocation(NPC, -141.89, 1.26, -0.03, 2, 0)
	MovementLoopAddLocation(NPC, -144.28, 1.26, -0.60, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -143.54, 1.26, -0.46, 2, 0)
	MovementLoopAddLocation(NPC, -149.13, 1.60, -0.08, 2, 0)
	MovementLoopAddLocation(NPC, -150.77, 1.82, 0.74, 2, 0)
	MovementLoopAddLocation(NPC, -152.54, 1.58, 1.03, 2, 0)
	MovementLoopAddLocation(NPC, -153.61, 1.26, 0.62, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -151.82, 1.61, 0.93, 2, 0)
	MovementLoopAddLocation(NPC, -147.22, 1.27, 1.01, 2, 0)
	MovementLoopAddLocation(NPC, -141.35, 1.26, 0.33, 2, 0)
	MovementLoopAddLocation(NPC, -140.11, 1.60, -0.05, 2, 0)
	MovementLoopAddLocation(NPC, -135.58, 1.26, -0.02, 2, 0)
	MovementLoopAddLocation(NPC, -133.78, 1.26, -0.28, 2, 0)
	MovementLoopAddLocation(NPC, -134.17, 1.26, -0.36, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -134.21, 1.26, 0.15, 2, 0)
	MovementLoopAddLocation(NPC, -154.79, 1.26, -0.01, 2, 0)
end

