--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392063.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392063.lua
	Script Author	:	Rylec
	Script Date	:	09-25-2019 07:03:14 
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
	MovementLoopAddLocation(NPC, -137.87, 0.01, 218.09, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -133.59, 0.00, 218.01, 2, 0)
	MovementLoopAddLocation(NPC, -130.62, 0.29, 217.04, 2, 0)
	MovementLoopAddLocation(NPC, -130.60, 0.29, 217.13, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -131.98, 0.19, 218.93, 2, 0)
	MovementLoopAddLocation(NPC, -133.54, 0.22, 219.67, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -138.10, 0.08, 214.84, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -141.44, 0.27, 214.27, 2, 0)
	MovementLoopAddLocation(NPC, -144.74, 0.34, 214.08, 2, 0)
	MovementLoopAddLocation(NPC, -146.01, 0.09, 215.28, 2, 0)
	MovementLoopAddLocation(NPC, -146.82, 0.00, 216.89, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -143.85, 0.00, 217.72, 2, 0)
	MovementLoopAddLocation(NPC, -137.24, 0.08, 218.80, 2, 0)
	MovementLoopAddLocation(NPC, -134.41, 0.00, 217.91, 2, 0)
	MovementLoopAddLocation(NPC, -134.39, 0.00, 218.04, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -138.85, 0.02, 218.21, 2, 0)
	MovementLoopAddLocation(NPC, -148.92, 0.24, 217.61, 2, 0)
	MovementLoopAddLocation(NPC, -148.93, 0.24, 217.59, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -149.26, 0.30, 215.52, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -146.10, 0.00, 216.62, 2, 0)
	MovementLoopAddLocation(NPC, -145.14, 0.00, 217.88, 2, 0)
	MovementLoopAddLocation(NPC, -145.23, 0.00, 217.91, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -137.64, 0.01, 218.15, 2, 0)
end

