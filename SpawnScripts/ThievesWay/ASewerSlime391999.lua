--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime391999.lua
	Script Purpose	:	Waypoint Path for ASewerSlime391999.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:28:00 
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
	MovementLoopAddLocation(NPC, -182.99, 0.00, 134.89, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.46, 0.00, 135.79, 2, 0)
	MovementLoopAddLocation(NPC, -178.34, 0.00, 136.96, 2, 0)
	MovementLoopAddLocation(NPC, -178.37, 0.00, 136.98, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.30, 0.00, 135.97, 2, 0)
	MovementLoopAddLocation(NPC, -182.81, 0.00, 134.31, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -183.33, 0.00, 135.70, 2, 0)
	MovementLoopAddLocation(NPC, -180.15, 0.00, 139.50, 2, 0)
	MovementLoopAddLocation(NPC, -177.30, 0.02, 141.51, 2, 0)
	MovementLoopAddLocation(NPC, -176.47, 0.06, 139.96, 2, 0)
	MovementLoopAddLocation(NPC, -178.26, 0.00, 135.41, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -179.93, 0.00, 137.42, 2, 0)
	MovementLoopAddLocation(NPC, -180.94, 0.00, 140.93, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.39, 0.00, 140.42, 2, 0)
	MovementLoopAddLocation(NPC, -177.01, 0.01, 139.23, 2, 0)
	MovementLoopAddLocation(NPC, -177.01, 0.01, 139.21, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.32, 0.00, 139.17, 2, 0)
	MovementLoopAddLocation(NPC, -181.81, 0.00, 138.97, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -183.37, 0.00, 135.78, 2, 0)
	MovementLoopAddLocation(NPC, -184.05, 0.07, 134.71, 2, 0)
	MovementLoopAddLocation(NPC, -184.05, 0.07, 134.34, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -178.87, 0.00, 136.15, 2, 0)
	MovementLoopAddLocation(NPC, -178.88, 0.00, 136.14, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.36, 0.00, 135.88, 2, 0)
end

