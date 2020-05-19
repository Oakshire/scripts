--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392054.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392054.lua
	Script Author	:	Rylec
	Script Date	:	09-25-2019 07:03:11 
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
	MovementLoopAddLocation(NPC, -147.55, 0.06, 218.59, 2, math.random(10, 22))
	-- MovementLoopAddLocation(NPC, -141.85, 0.00, 217.12, 2, 0)
	MovementLoopAddLocation(NPC, -138.02, 0.00, 217.22, 2, 0)
	MovementLoopAddLocation(NPC, -137.99, 0.00, 217.34, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -144.01, 0.00, 218.03, 2, 0)
	MovementLoopAddLocation(NPC, -144.99, 0.01, 218.14, 2, math.random(10, 22))
	-- MovementLoopAddLocation(NPC, -145.12, 0.00, 217.57, 2, 0)
	MovementLoopAddLocation(NPC, -144.89, 0.00, 217.16, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -137.88, 0.00, 216.74, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -138.13, 0.13, 214.45, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -141.70, 0.05, 215.64, 2, 0)
	MovementLoopAddLocation(NPC, -142.84, 0.00, 216.86, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -134.90, 0.01, 218.09, 2, 0)
	MovementLoopAddLocation(NPC, -130.86, 0.28, 217.27, 2, 0)
	MovementLoopAddLocation(NPC, -133.59, 0.01, 216.03, 2, 0)
	MovementLoopAddLocation(NPC, -133.58, 0.02, 215.94, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -133.93, 0.10, 213.73, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -134.65, 0.10, 215.07, 2, 0)
	MovementLoopAddLocation(NPC, -145.74, 0.02, 218.21, 2, 0)
end
