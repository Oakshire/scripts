--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392057.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392057.lua
	Script Author	:	Rylec
	Script Date	:	09-25-2019 07:03:06 
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
	MovementLoopAddLocation(NPC, -138.85, 0.00, 217.99, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -142.06, 0.03, 218.83, 2, 0)
	MovementLoopAddLocation(NPC, -147.53, 0.01, 218.14, 2, 0)
	MovementLoopAddLocation(NPC, -149.08, 0.24, 217.12, 2, 0)
	MovementLoopAddLocation(NPC, -149.05, 0.24, 217.17, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -146.19, 0.00, 216.37, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -140.18, 0.02, 215.94, 2, 0)
	MovementLoopAddLocation(NPC, -137.46, 0.08, 215.19, 2, 0)
	MovementLoopAddLocation(NPC, -136.12, 0.12, 215.95, 2, 0)
	MovementLoopAddLocation(NPC, -134.40, 0.00, 216.45, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -140.16, 0.00, 217.59, 2, 0)
	MovementLoopAddLocation(NPC, -144.70, 0.00, 217.96, 2, 0)
	MovementLoopAddLocation(NPC, -144.64, 0.00, 218.04, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -143.38, 0.18, 219.46, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -147.35, 0.01, 218.13, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -141.89, 0.03, 218.61, 2, 0)
	MovementLoopAddLocation(NPC, -139.90, 0.05, 218.50, 2, 0)
	MovementLoopAddLocation(NPC, -138.75, 0.00, 217.74, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -143.82, 0.02, 218.18, 2, 0)
	MovementLoopAddLocation(NPC, -148.94, 0.36, 219.17, 2, math.random(10, 22))
end

