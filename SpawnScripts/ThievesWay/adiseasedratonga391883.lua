--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga391883.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga391883.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:28:33 
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
	MovementLoopAddLocation(NPC, -181.02, 0.00, 133.19, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -179.22, 0.00, 134.23, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -180.21, 0.00, 135.73, 2, 0)
	MovementLoopAddLocation(NPC, -181.00, 0.00, 136.93, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -183.66, 0.03, 142.39, 2, 0)
	MovementLoopAddLocation(NPC, -184.13, 0.07, 138.23, 2, 0)
	MovementLoopAddLocation(NPC, -182.19, 0.00, 134.33, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -180.05, 0.00, 141.31, 2, 0)
	MovementLoopAddLocation(NPC, -179.02, 0.00, 143.00, 2, 0)
	MovementLoopAddLocation(NPC, -177.23, 0.00, 137.52, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -178.19, 0.00, 140.26, 2, 0)
	MovementLoopAddLocation(NPC, -179.53, 0.00, 142.47, 2, 0)
	MovementLoopAddLocation(NPC, -180.87, 0.00, 144.97, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -180.59, 0.00, 144.27, 2, 0)
	MovementLoopAddLocation(NPC, -179.92, 0.00, 142.19, 2, 0)
	MovementLoopAddLocation(NPC, -177.23, 0.00, 138.20, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.91, 0.00, 137.02, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.60, 0.00, 132.11, 2, math.random(12, 22))
end


