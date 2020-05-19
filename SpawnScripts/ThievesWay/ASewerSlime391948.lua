--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime391948.lua
	Script Purpose	:	Waypoint Path for ASewerSlime391948.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:27:58 
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
	MovementLoopAddLocation(NPC, -179.14, 0.00, 142.08, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -179.95, 0.00, 139.87, 2, 0)
	MovementLoopAddLocation(NPC, -181.92, 0.00, 133.17, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -183.74, 0.04, 134.14, 2, 0)
	MovementLoopAddLocation(NPC, -183.82, 0.04, 135.26, 2, 0)
	MovementLoopAddLocation(NPC, -181.18, 0.00, 138.79, 2, 0)
	MovementLoopAddLocation(NPC, -181.20, 0.00, 138.79, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.08, 0.00, 135.23, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.17, 0.00, 135.85, 2, 0)
	MovementLoopAddLocation(NPC, -176.19, 0.09, 140.06, 2, 0)
	MovementLoopAddLocation(NPC, -176.13, 0.11, 140.81, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -176.30, 0.10, 141.10, 2, 0)
	MovementLoopAddLocation(NPC, -177.08, 0.00, 140.11, 2, 0)
	MovementLoopAddLocation(NPC, -177.02, 0.01, 140.11, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -178.93, 0.00, 136.40, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -179.91, 0.00, 139.53, 2, 0)
	MovementLoopAddLocation(NPC, -180.13, 0.00, 142.15, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.05, 0.00, 141.43, 2, math.random(10, 22))
end
